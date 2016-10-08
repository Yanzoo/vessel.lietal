class Dictionaery

	attr_accessor :vowels
	attr_accessor :consonants

	def initialize

		@vowels = ["i","a","o"]
		@consonants = ["k","x","s","t","d","l","p","b","v"]

	end

	def aebeth

		a = []

		consonants.each do |lc|
			vowels.each do |lv|
				aeth = Aeth.new
				aeth.lietal = lc+lv
				a.push(aeth)
			end
		end

		return a

	end

	def divieths

		a = []

		aebeth.each do |aeth1|
			aebeth.each do |aeth2|
				aeth = Aeth.new
				aeth.lietal = aeth1+aeth2
				a.push(aeth)
			end
		end

		return a

	end

end