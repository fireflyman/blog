# Include hook code here
require 'stringify_time'

class ActiveRecord::Base
  extend StringifyTime
end
