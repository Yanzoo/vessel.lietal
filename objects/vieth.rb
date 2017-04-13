#!/bin/env ruby
# encoding: utf-8

class Vieth

	def initialize word,details = {}

    @word = word
    @details = details

	end

  def phonetic

    _f = @details["MAIN"].split("(").first
    param,val,aeth = $aebeth.aeth_from_english(_f)
    
    if !aeth then return "Unknown" end

    _f_phonetic = aeth.phonetic(param,val)

    _p = @details["MAIN"].split("(").last.sub(")","").strip
    param,val,aeth = $aebeth.aeth_from_english(_p)

    if !aeth then return "Unknown" end

    _p_phonetic = aeth.phonetic(param,val)

    return "#{_f_phonetic}#{_p_phonetic}"

  end

  def adultspeak

    return phonetic+"!!"

  end

  def to_s is_adultspeak = nil

    return @details["MAIN"] ? (is_adultspeak ? adultspeak(phonetic) : phonetic) : "Unknown"

  end

end