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

end