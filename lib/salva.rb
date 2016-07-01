require 'open-uri'
class Salva
  include HTTParty
  base_uri Rails.application.secrets.salva_url
  #base_uri "127.0.0.1:3000"
  format :json

  # Store user credentials
  def initialize(user, pass)
    @credentials = {:user_login => user, :user_password => pass}
  end

  def self.find_by_adscription_and_category(adscription_name,category)
    case category
      when "Investigadores"
        category_name = "researchers"
      when "Tecnicos"
        category_name = "academic_technicians"
      when "Posdoctorantes"
        category_name = "postdoctorals"
      else
        category_name = "all"
    end
    token = "ya29.XgC8hV0oGwUAEBwAAABdSKLW-HEZTzh-LH2PuAcu7quWdh9yjfieZEwxbnTpJQ"
    requestURL = "/api/profiles/list?adscription_name=#{adscription_name}&category_name=#{category_name}"
    #response = get(URI.encode(requestURL), :headers => {"Authorization" => "Token token = ya29.XgC8hV0oGwUAEBwAAABdSKLW-HEZTzh-LH2PuAcu7quWdh9yjfieZEwxbnTpJQ"})
    response = get(URI.encode(requestURL))
    response
    #get("http://127.0.0.1:3000/api/profiles/list?adscription_name=Departamento de Geología Regional&category_name=researchers&locale=es")
  end

  def self.get_profile_by_id(id)
    requestURL = "/api/profiles/#{id}"
    response = get(URI.encode(requestURL))
    response
  end

  def self.articles_by_profile_id(id)
    requestURL = "/api/profiles/#{id}/articles"
    response = get(URI.encode(requestURL))
    response
  end

  def self.last_articles
    requestURL = "/api/articles"
    response = get(URI.encode(requestURL))
    response
  end
end
