require 'grackle'

class Tweet < ActiveRecord::Base

  MY_APPLICATION_NAME = "edhamilton812"
  
  """Connect to the Twitter API and pull down the latest tweets"""
  def self.get_latest
    tweets = client.statuses.user_timeline? :screen_name => MY_APPLICATION_NAME # hit the API
    tweets.each do |t|
      created = DateTime.parse(t.created_at)
      # create the tweet if it doesn't already exist
      unless Tweet.exists?(["created=?", created])
        Tweet.create({:content => t.text, :created => created })
       end
    end
  end
  
  private
  def self.client
    Grackle::Client.new(:auth=>{
      :type=>:oauth,
      :ssl=>true,
      :consumer_key=>'z5HBMyZ5uMFYvirsLHsLzg',
      :consumer_secret=>'sYlE2V82dyGzb7I8gJtdVmYAmDcgcQYBjJVi3sAaH4',
      :token=>"243666133-ycR7Q0bshwGfzSabRgbmzFbmIgwLs2Ad1Ha30dRQ",
      :token_secret=>"iZRjWreZiNOXANaQjcvAYtzaISB9kHMWfpN5W5YiI"
    })

  end
end