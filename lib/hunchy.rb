require 'rubygems'
require "httparty"

class Hunchy

  include HTTParty
  base_uri 'http://api.hunch.com/api'
  default_params :output => 'json'
  format :json
  
  def self.getQuestion(id)
    get('/getQuestion', :query => {:questionId => id})
  end
  
  puts Hunchy.getQuestion(425553).inspect

end