class Aeth

	attr_accessor :english
	attr_accessor :lietal

	def initialize lietal = nil

		@lietal = lietal ? lietal : nil
		
	end

	def ae

		return Ae.new(lietal[0,2])

	end

	def adultspeak

		if lietal.include?("'") then return lietal end

		c1 = lietal[0,1]
		c2 = lietal[2,1]
		c3 = lietal[4,1]
		v1 = lietal[1,1]
		v2 = lietal[3,1]
		v3 = lietal[5,1]

		if c1 == c2 then c2 = "" end
		if v1 == v2 then v2 = "" end

		if c2 == c3 then c3 = "" end
		if v2 == v3 then v3 = "" end

		assembled = "#{c1}#{v1}#{c2}#{v2}#{v3}#{c3}"
		
		return assembled

	end

end