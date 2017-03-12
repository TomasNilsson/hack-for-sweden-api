class AreasController < ApplicationController
  before_action :set_area, only: [:show, :update, :destroy]

  # POST /areas/calculate
  def calculate
    # TODO: use data from different sources to determine what area to return
    @area = Area.choice_logic(params[:answers])
    
    render json: @area
  end

  def test
    render json: Booli.listings("Södermalm")
    @area = Area.first
    #render json: GooglePlace.nearby_search("restaurant", @area.latitude, @area.longitude)
    #render json: GooglePlace.text_search("Gym Kungsholmen")
    #render json: GooglePlace.text_search_count("Grocery Kungsholmen")
    #render json: SL.nearby_stops("59.3340924", "18.0344631")
  end

  # GET /areas
  def index
    @areas = Area.all

    render json: @areas
  end

  # GET /areas/1
  def show
    if @area.income.present?
      Component.where(area_id: @area.id, type: "fact", title: "Medelinkomst", value: @area.income).first_or_create()
    end
    if @area.average_age.present?
      Component.where(area_id: @area.id, type: "fact", title: "Medelålder", value: @area.average_age).first_or_create()
    end
    if @area.voting_result.present?
      Component.where(area_id: @area.id, type: "fact", title: "Röstar", value: @area.voting_result).first_or_create()
    end
    Component.where(area_id: @area.id, type: "fact", title: "Bostäder till salu").first_or_create().update(value: Booli.listings(@area.label)['totalCount'])
    image_path = "/images/#{@area.name}_migration_netto.png"
    if File.file? "#{Rails.public_path}#{image_path}"
      Component.where(area_id: @area.id, type: "image", title: "Inflyttning - Utflyttning", value: url_for(request.protocol+request.host+image_path)).first_or_create()
    end
    render json: @area, serializer: AreaDetailedSerializer
  end

  # POST /areas
  def create
    @area = Area.new(area_params)

    if @area.save
      render json: @area, status: :created, location: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /areas/1
  def update
    if @area.update(area_params)
      render json: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # DELETE /areas/1
  def destroy
    @area.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_params
      params.require(:area).permit(:name)
    end
end
