#!/bin/env ruby
# encoding: utf-8

class Aeth

	attr_accessor :name
	attr_accessor :data

	def initialize name, data

		@name = name.capitalize
		@data = data

	end

	def key

		return @data["KEY"]

	end

	def vector

		return {1 => @data["VECTOR"][0],0 => @data["VECTOR"][1],-1 => @data["VECTOR"][2]}

	end

	def bool

		return {true => @data["BOOL"][0], false => @data["BOOL"][1]}

	end

	def to_s

		html = "#{name}\n"
		if vector
			html += "  Vector\n"
			html += "    #{key}i  "+vector[1]+"\n"
			html += "    #{key}a  "+vector[0]+"\n"
			html += "    #{key}o  "+vector[-1]+"\n"
		end
		html += "  Default\n"
		html += "    #{key}y  #{name}\n"

		return "<code>"+html+"</code>"
		return name+"(#{key}y:#{vector ? " Vector=["+vector[0]+","+vector[1]+","+vector[2]+"]" : ""}#{bool ? " Bool=["+bool[0]+","+bool[1]+"]" : ""})"

	end

end