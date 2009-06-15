require 'rubygems'
require "httparty"

class Hunchy

  include HTTParty
  base_uri 'http://api.hunch.com/api'
  default_params :output => 'json'
  format :json
  
  # This will return information pertaining to a Hunch question.
  def self.getQuestion(id)
    get('/getQuestion', :query => {:questionId => id})
  end

  # This will return information pertaining to a response to a question.
  def self.getResponse(id)
    get('/getResponse', :query => {:responseId => id})
  end

  def self.searchForQuestion(query)
    get('/searchForQuestion', :query => {:query => query})
  end

end