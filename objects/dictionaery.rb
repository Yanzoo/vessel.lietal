#!/bin/env ruby
# encoding: utf-8

class Dictionaery

	attr_accessor :vowels
	attr_accessor :consonants
	attr_accessor :path

	def initialize path

		@en = Memory_Hash.new("dictionaery",path).to_h("vieth")

	end

  def english e

    return "?"

  end

  def translate word,lang = :lietal,is_adultspeak = true

    return @en[word.upcase] ? @en[word.upcase] : "(#{word})"

  end

  def to_s

    html = ""
    @en.sort.each do |name,w|
      html += "
      <tr>
        <th>#{w.word.capitalize.gsub('_',' ')} <span style='color:#999; font-size:12px'>#{w.type}</span></th>
        <td>#{w} <span style='font-size:12px; color:#999'>#{(if w.childspeak != w.adultspeak then w.childspeak end)}</span></td>
        <td style='font-size:12px'>#{w.to_deconstruction}</td>
      </tr>"
    end
    return "<table>#{html}</table>"

  end

  def collect type, width = 3

    a = []
    @en.each do |name,w|
      if w.type.downcase != type.downcase then next end
      a.push(w)
    end

    html = ""

    i = 0
    while i < a.length
      html += "<tr>"

      if width > 0 then html += "<th>#{a[i] ? a[i].word.capitalize.gsub('_',' ') : ''}</th><td>#{a[i] ? a[i] : ''}</td>" end
      if width > 1 then html += "<th>#{a[i+1] ? a[i+1].word.capitalize.gsub('_',' ') : ''}</th><td>#{a[i+1] ? a[i+1] : ''}</td>" end
      if width > 2 then html += "<th>#{a[i+2] ? a[i+2].word.capitalize.gsub('_',' ') : ''}</th><td>#{a[i+1] ? a[i+2] : ''}</td>" end
      if width > 3 then html += "<th>#{a[i+3] ? a[i+3].word.capitalize.gsub('_',' ') : ''}</th><td>#{a[i+1] ? a[i+3] : ''}</td>" end
      if width > 4 then html += "<th>#{a[i+4] ? a[i+4].word.capitalize.gsub('_',' ') : ''}</th><td>#{a[i+1] ? a[i+4] : ''}</td>" end

      html += "</tr>"
      i += width
    end

    return "<table>#{html}</table>"

  end

  def side_by_side sentence_target, sentence, construction_target, construction

    return "<code><comment>English   </comment>#{sentence.sub(sentence_target,'<b>'+sentence_target+'</b>')}\n<comment>Lietal    </comment>#{construct(construction).sub(translate(construction_target).to_s,'<b>'+translate(construction_target).to_s+'</b>')}<comment>Construct </comment>#{construction.sub(construction_target,'<b>'+construction_target+'</b>')}</code>"
    
  end

  def construct construction

    html = ""
    construction.split("\n").each do |line|
      sentence = ""
      line.split(" ").each do |part|
        sentence += translate_construction(part)+" "
      end
      sentence = sentence.strip+". "
      html += sentence.capitalize+"\n"
    end
    return html

  end

  def translate_construction str, is_adultspeak = true

    new_str = str
    ["[",",","]",".","+"," "].each do |char|
      new_str = new_str.gsub(char," #{char} ")
    end

    sentence = ""
    new_str.split(" ").each do |seg|
      if seg == "&" then seg = translate('related').to_s(is_adultspeak)
      elsif seg == "|" then seg = translate('unrelated').to_s(is_adultspeak)
      elsif seg == "[" then seg = translate('COLLECTION_PUSH').to_s(is_adultspeak)
      elsif seg == "]" then seg = translate('COLLECTION_POP').to_s(is_adultspeak)
      elsif seg == "!" then seg = translate('true').to_s(is_adultspeak)
      elsif seg == "." then seg = "'"
      else seg = translate(seg).to_s end
      sentence += seg
    end

    sentence = sentence.gsub(" ' ","'")

    return sentence

  end

end