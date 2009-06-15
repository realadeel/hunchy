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

  # This will return question search results for the query you give it.
  def self.searchForQuestion(query)
    get('/searchForQuestion', :query => {:query => query})
  end
  
  # This will return statistical information pertaining to a given THAY Hunch response.
  def self.responseStats(id)
    get('/responseStats', :query => {:responseId => id})
  end
  
  # This will return statistical information pertaining to the relationship between two THAY Hunch response.
  def self.responsePairStats(id1, id2)
    get('/responsePairStats', :query => {:response1Id => id1, :response2Id => id2})
  end

  # This will return the THAY responses most strongly positively correlated to a given THAY response.
  def self.responsePositiveCorrelations(id, n)
    get('/responsePositiveCorrelations', :query => {:responseId => id, :n => n})
  end

  # This will return the THAY responses most strongly negatively correlated to a given THAY response.
  def self.responseNegativeCorrelations(id, n)
    get('/responseNegativeCorrelations', :query => {:responseId => id, :n => n})
  end
  
end