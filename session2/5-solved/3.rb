class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end

#Solved by meads
class String
  def every_other_char
		@skip = ''
		array_of_chars = self.chars #self explicitly refers to the object that called this method e.g. the object "abc". You don't need self
		#as array_of_chars = chars will work just the same. Here the object that called this method will have chars applied to it.							
		array_of_chars.each_index do |value|
			 if value.even? == true
				 @skip << array_of_chars[value]
			 end
		end
		@skip
	end	
end
#=========================================

#Sebastien
class String
  def every_other_char
    other_char = ''
    each_char.with_index do |char, c|
      other_char << char if c.even?
    end
    other_char
  end
end


#kevin lanzon
class String
  def every_other_char
    character = String.new                 
    (0...self.length).step.each do |index|    # self gives access to the current object (every_other_char)
                                              # Set a range starting at 0 in the returned array.
                                              # The step method skips through the index
      character << self[index] if index.even? # Changed range from (0..self.length - 1) which works the same.
    end                                       # .even? returns true on an even index number in the array.
    character
  end
end
