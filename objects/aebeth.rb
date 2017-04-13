#!/bin/env ruby
# encoding: utf-8

class Aebeth

	def initialize path

		@aeths = []

		@h = Memory_Hash.new("aebeth",path).to_h("aeth")

	end

	def aeth_from_english en

		@h.each do |name,aeth|
			if aeth.has_meaning(en) then return aeth.has_meaning(en) end
		end
		return nil

	end

	def aeth ae

		if @h[ae.upcase] then return @h[ae.upcase] end

		return "Cannot find #{ae.upcase}."

	end

	def table

		return "
		<style>
		.aebeth td { border-bottom:0px}
		.aebeth table td, .aebeth table th { border-bottom:0px; padding:5px}
		.aebeth table { margin-bottom:0px; font-size:14px;}
		.aebeth table tr:first-child { border-bottom:1px solid black;}
		</style>
		<table class='aebeth'>
		<tr>
			<td>#{@h['HIERARCHY'].table}</td>
			<td>#{@h['STATE'].table}</td>
			<td>#{@h['STRUCTURE'].table}</td>
		</tr>
		<tr>
			<td>#{@h['DIRECTION'].table}</td>
			<td>#{@h['RELATION'].table}</td>
			<td>#{@h['COUNTER'].table}</td>
		</tr>
		<tr>
			<td>#{@h['MODALITY'].table}</td>
			<td>#{@h['ALIGNMENT'].table}</td>
			<td>#{@h['INTERACTION'].table}</td>
		</tr>
		</table>"

	end

end