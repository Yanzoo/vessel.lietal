#!/bin/env ruby
# encoding: utf-8

class Aebeth

	def initialize path

		@aeths = []

		@h = Memory_Hash.new("aebeth",path).to_h("aeth")

	end

	def aeth ae

		if @h[ae.upcase] then return @h[ae.upcase] end

		return "Cannot find #{ae.upcase}."

	end

	def to_s

		html = ""
		html += "<tr><th>Key</th><th>Aeth</th><th colspan='3'>Vectors</th></tr>"
		@h.each do |name,aeth|
			html += "<tr><th>#{aeth.key}</th><th>#{aeth.name}</th>"
			if aeth.vector
				html += "<td><b>#{aeth.key}i</b> #{aeth.vector[1]}</td><td>#{aeth.vector[0]}</td><td>#{aeth.vector[-1]}</td>"
			end
			html += "</tr>"
		end

		return "<table>#{html}</table>"

	end

end