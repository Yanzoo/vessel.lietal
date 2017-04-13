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

		return @en[l.upcase] ? @en[l.upcase] : Vieth.new("unknown(#{l})")

	end

  def english e

    return "?"

  end

  def translate word,lang

    return lang == :lietal ? lietal(word) : english(word)

  end

end