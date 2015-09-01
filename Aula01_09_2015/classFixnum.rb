class Fixnum
	def seconds; self ; end
	def minutes; self * 60; end
	def hours ; self * 60 * 60;  end
	def day ; self * 60 * 60 * 24;	end
	def ago; Time.now - self; end
	def from_now; Time.now + self; end
	def at_beginning_of_year
		self.acts_like?(:time) ? change(:month => 1, :day => 1, :hour => 0, :min => 0, :sec => 0) : change(:month => 1, :day => 1)
	end
end

class Time
	def at_beginning_of_year
		Time.local(self.year)
	end
end




puts Time.now.at_beginning_of_year +1.day

#=> 2015-01-02 00:00:00 - 0800


	#definir day e at beggining of of year