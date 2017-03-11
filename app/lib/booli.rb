class Booli
  include HTTParty
  base_uri "http://api.booli.se"
 
  def self.listings(query)
    callerId = ENV["booli_caller_id"]
    time = Time.now.to_i.to_s
    key = ENV["booli_api_key"]
    unique = "%.16x"%rand(9**20).to_s
    hash = Digest::SHA1.hexdigest(callerId + time + key + unique)
    get("/listings?q="+query+"&callerId="+callerId+"&time="+time+"&unique="+unique+"&hash="+hash)
  end
end