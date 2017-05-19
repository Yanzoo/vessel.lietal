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

  def construction construct

    return "#{construct}" 

  end

end