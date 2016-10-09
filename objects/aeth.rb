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

		ae_1 = Ae.new(lietal[0,2])
		ae_2 = Ae.new(lietal[2,2])

		if ae_1.consonant_vector < ae_2.consonant_vector
			if ae_1.vowel.like(ae_2.vowel)
				return "#{ae_1.consonant}#{ae_2.consonant}#{ae_1.vowel}"
			else
				return "#{ae_1.consonant}#{ae_2.consonant}#{ae_1.vowel}#{ae_2.vowel}"
			end
		else
			if ae_1.vowel.like(ae_2.vowel)
				return "#{ae_1.consonant}#{ae_1.vowel}#{ae_2.consonant}"
			else
				return "#{ae_1.consonant}#{ae_1.vowel}#{ae_2.consonant}#{ae_2.vowel}"
			end
		end	

	end

end