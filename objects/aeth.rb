#!/bin/env ruby
# encoding: utf-8

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

		if lietal.length < 4 then return lietal end
			
		ae_1 = Ae.new(lietal[0,2])
		ae_2 = Ae.new(lietal[2,2])

		c1 = ae_1.consonant
		c2 = ae_2.consonant
		v1 = ae_1.vowel
		v2 = ae_2.vowel

		if c1.like(c2) then c2 = "" end
		if v1.like(v2) then v2 = "" end

		if v1.like("i") && v2.like("a") then v1 = "e" ; v2 = "" end
		if v1.like("a") && v2.like("o") then v1 = "u" ; v2 = "" end
		if c1.like("x") then c1 = "j" end

		if ae_1.consonant_vector < ae_2.consonant_vector
			if c2.like("x") then c2 = "z" end
			if c2.like("d") then c2 = "r" end
			if c2.like("b") then c2 = "f" end
			return "#{c1}#{c2}#{v1}#{v2}"
		elsif ae_1.consonant_vector > ae_2.consonant_vector
			return "#{c1}#{v1}#{v2}#{c2}"
		else
			return "#{c1}#{v1}#{c2}#{v2}"
		end	

	end

	def to_svg

		return Septambres.new(lietal).svg

	end

end