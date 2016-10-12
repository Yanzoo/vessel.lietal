class Dictionaery

	attr_accessor :vowels
	attr_accessor :consonants
	attr_accessor :path

	def initialize path

		@vowels = ["i","a","o"]
		@consonants = ["k","x","s","t","d","l","p","b","v"]
		@en = En.new("dictionaery",path)

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

	def translate sentence,lang = lietal
		
		s = []
		sentence.split(" ").each do |word|
			aeth = lang.like("lietal") ? find_english(word) : find_lietal(word)
			if !aeth
				s.push("#{word}")
			else
				s.push(lang.like("en") ? aeth.english.downcase : aeth.adultspeak.downcase)
			end
		end
		
		return s.join(" ")

	end

	def find_lietal lietal_word

		if !@en.to_h[word.upcase] then return nil end
		aeth = Aeth.new(word)
		aeth.english = content['DEF']
		return aeth

	end

	def find_english english_word

		@en.to_h.each do |word,content|
			if content['DEF'] && content['DEF'].like(english_word) || content['ALT'] && content['ALT'].like(english_word)
				aeth = Aeth.new(word)
				aeth.english = english_word
				return aeth
			end
		end
		return nil

	end

end