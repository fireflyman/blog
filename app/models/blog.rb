class Blog < ActiveRecord::Base
    #attr_accessor :month
    stringify_time :due_at  
=begin
   def due_at_string  
      @due_at_string || due_at.to_s(:db)  
   end  
   
   def due_at_string=(due_at_str)  
     @due_at_string = due_at_str  
      self.due_at = Time.parse(due_at_str)  
   rescue ArgumentError  
      @due_at_invalid = true  
    end  
=end  
   def validate  
     errors.add(:due_at, "is invalid") if @due_at_invalid  
   end 

end
