class Area < ApplicationRecord
  has_many :components

  def self.choice_logic(answers)
    input_array = Array.new(Category.count, 0)
    if answers.present?
      answers.each do |a|
        if a[:choice] == "left"
          input_array[a[:id]-1] = -1
        else
          input_array[a[:id]-1] = 1
        end
      end
    end 
    weight_array = [2.0, 1.5, 1.5, 0.5, 1.0, 2.0, 0.5]
    input_array.zip(weight_array).map{|x, y| x * y}

    ostermalm_array  =        [1,  1, 1, 1, 1, -1, -1]
    sodermalm_array  =        [1, -1, -1, -1, -1, -1, 1]
    kungsholmen_array =       [1,  1, -1, 1, 1, 1, 1]
    vasastan_array =          [1,  1, -1, 1, -1, 1, -1]
    gardet_array =            [-1,  1, -1, 1, 1, 1, -1]
    midsommarkransen_array =  [-1, -1, 1, -1, 1, -1, 1] 
    solna_array =             [-1, -1, 1, -1, 1, 1, 1]

    sthlm_data = [kungsholmen_array, sodermalm_array, solna_array, midsommarkransen_array, ostermalm_array, vasastan_array, gardet_array ]

    euc_dist = []
    sthlm_data.each do |sthlm_data_array|
      euc_dist.append(self.euclidean_distance(input_array, sthlm_data_array))
    end

    smallest = euc_dist.each.with_index.find_all{ |a,i| a == euc_dist.min }.map{ |a,b| b }.sample
    return Area.find(smallest+1)
  end

  def self.euclidean_distance(vector1, vector2)
    sum = 0
    vector1.zip(vector2).each do |v1, v2|
      component = (v1 - v2)**2
      sum += component
    end
    Math.sqrt(sum)
  end

end
