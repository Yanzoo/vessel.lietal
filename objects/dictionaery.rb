class Dictionaery

	attr_accessor :vowels
	attr_accessor :consonants
	attr_accessor :path

	def initialize path

		@vowels = ["i","a","o"]
		@consonants = ["k","x","s","t","d","l","p","b","v"]
		@content = En.new("dictionaery",path)

	end

	def aebeth

		a = []

		vowels.each do |lv|
			consonants.each do |lc|
				aeth = Aeth.new(lc+lv)
				a.push(aeth)
			end
		end

		return a

	end

	def divieths

		a = []

		aebeth.each do |aeth1|
			aebeth.each do |aeth2|
				aeth = Aeth.new(aeth1.lietal+aeth2.lietal)
				a.push(aeth)
			end
		end

		return a

	end

end