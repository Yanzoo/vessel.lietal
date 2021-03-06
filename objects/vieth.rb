#!/bin/env ruby
# encoding: utf-8

class Vieth

  attr_accessor :word
  attr_accessor :childspeak
  attr_accessor :adultspeak

	def initialize word,details = {}

    @word = word
    @details = details

	end

  def root

    if @root then return @root end

    a,b,@root = $aebeth.aeth_from_english(@details["MAIN"].split("(").first)

    return @root

  end

  def type

    return @details["TYPE"] ? @details["TYPE"] : root.to_s

  end

  def childspeak

    if @childspeak then return @childspeak end

    if @details == {} then return "#{@word}(Issue)" end

    _f = @details["MAIN"].split("(").first
    param,val,aeth = $aebeth.aeth_from_english(_f)
    
    if !aeth then return "#{@word}(Unknown Meaning: #{_f})" end

    _f_phonetic = aeth.phonetic(param,val)

    _p = @details["MAIN"].split("(").last.sub(")","").strip.split(",")

    _p_phonetic = ""

    _p.each do |p2|
      param,val,aeth = $aebeth.aeth_from_english(p2)
      if !aeth then return "#{@word}(Unknown Aeth:#{p2})" end
      _p_phonetic += aeth.phonetic(param,val)
    end

    @childspeak = "#{_f_phonetic}#{_p_phonetic}"
  
    return @childspeak

  end

  def adultspeak

    _childspeak = childspeak

    if _childspeak.length == 2 then return childspeak[1,1]+childspeak[0,1]
    elsif _childspeak.length == 4 && (_childspeak[1,1] == _childspeak[3,1] || _childspeak[0,1] == _childspeak[2,1]) then return adultspeak_segement(_childspeak[0,4])
    elsif _childspeak.length == 6 && (_childspeak[0,1] == _childspeak[2,1]) then return adultspeak_segement(_childspeak[0,4])+_childspeak[4,2]
    elsif _childspeak.length == 6 then return _childspeak[0,2]+adultspeak_segement(_childspeak[2,4])
    elsif _childspeak.length == 8 then return adultspeak_segement(_childspeak[0,4])+adultspeak_segement(_childspeak[4,4]) end

    return _childspeak

  end

  def adultspeak_segement seg

    c1 = seg[0,1]
    v1 = seg[1,1]
    c2 = seg[2,1]
    v2 = seg[3,1]
    re = seg[4,4]

    if c1 == c2 then c2 = "" end

    if v1 == v2 
      if v1 == "a" then v1 = "ä"
      elsif v1 == "i" then v1 = "ï"
      elsif v1 == "e" then v1 = "ë"
      elsif v1 == "o" then v1 = "ö"
      elsif v1 == "u" then v1 = "ü"
      else v1 = "?" end
      v2 = ""
    end

    return "#{c1}#{v1}#{c2}#{v2}"

  end

  def to_s is_adultspeak = true

    return is_adultspeak ? adultspeak : childspeak

  end

  def to_def

    return "<b>#{@word.capitalize.gsub('_',' ')}</b> <i style='color:#999'>#{adultspeak}</i>"

  end

  def to_deconstruction

    return "#{@details['MAIN']}"

  end

end