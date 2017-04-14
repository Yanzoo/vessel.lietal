#!/bin/env ruby
# encoding: utf-8

class Dictionaery

	attr_accessor :vowels
	attr_accessor :consonants
	attr_accessor :path

	def initialize path

		@en = Memory_Hash.new("dictionaery",path).to_h("vieth")

	end

	def lietal l

		return @en[l.upcase] ? @en[l.upcase] : Vieth.new(l)

	end

  def english e

    return "?"

  end

  def translate word,lang,is_adultspeak = true

    if lang == :lietal
      if !word.include?(" ") then return lietal(word) end
      s = ""
      word.split(" ").each do |w|
        s += lietal(w).to_s(is_adultspeak)+" "
      end
      return s.strip
    end

    return english(word)

  end

end