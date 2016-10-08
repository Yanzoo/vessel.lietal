class Dictionaery

	def initialize

	end

	def aebeth

		c = ["k","x","s","t","d","l","p","b","v"]
		v = ["i","a","o"]

		a = []

		c.each do |lc|
			v.each do |lv|
				a.push(lc+lv)
			end
		end

		return a

	end


end