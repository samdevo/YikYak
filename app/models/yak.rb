class Yak < ActiveRecord::Base
#   #username, message
#   attr_accessor :username, :message
#   def initialize(username, message)
#     @username = username
#     @message = message
#   end
#   t.string :Message
#   t.interger :location_id

  belongs_to :location
end