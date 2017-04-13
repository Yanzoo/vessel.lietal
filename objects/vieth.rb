#!/bin/env ruby
# encoding: utf-8

class Vieth

	def initialize word,details = {}

    @word = word
    @details = details

	end

  def childspeak

    if @details == {} then return @word end

    _f = @details["MAIN"].split("(").first
    param,val,aeth = $aebeth.aeth_from_english(_f)
    
    if !aeth then return @word end

    _f_phonetic = aeth.phonetic(param,val)

    _p = @details["MAIN"].split("(").last.sub(")","").strip.split(",")

    _p_phonetic = ""

    _p.each do |p2|
      param,val,aeth = $aebeth.aeth_from_english(p2)
      if !aeth then return @word end
      _p_phonetic += aeth.phonetic(param,val)
    end
  
    return "#{_f_phonetic}#{_p_phonetic}"

  end

  def adultspeak

    _childspeak = childspeak

    if _childspeak.length == 2 then return _childspeak end
    if _childspeak.like(@word) then return _childspeak end

    c1 = _childspeak[0,1]
    v1 = _childspeak[1,1]
    c2 = _childspeak[2,1]
    v2 = _childspeak[3,1]
    re = _childspeak[4,4]

    if c1 == c2 then c2 = "" end
    if v1 == v2 then v2 = "'" end

    return "#{c1}#{v1}#{v2}#{c2}#{re}"

  end

  def to_s is_adultspeak = nil

    return adultspeak

  end

end