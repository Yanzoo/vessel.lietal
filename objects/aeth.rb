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

	def default

		return @name

	end

	def table

		return "
		<table>
		<tr><th></th><td><i>#{key}y</i></td><th>#{default}</th></tr>
		<tr><th rowspan='3'>Vector</th><td><i>#{key}i</i></td><td>#{vector[1]}</td></tr>
		<tr><td><i>#{key}a</i></td><td>#{vector[0]}</td></tr>
		<tr><td><i>#{key}o</i></td><td>#{vector[-1]}</td></tr>
		<tr><th rowspan='2'>Bool</th><td><i>#{key}e</i></td><td>#{bool[true]}</td></tr>
		<tr><td><i>#{key}u</i></td><td>#{bool[false]}</td></tr>
		</table>"

	end

	def to_s

		return name+"(#{key}y:#{vector ? " Vector=["+vector[0]+","+vector[1]+","+vector[2]+"]" : ""}#{bool ? " Bool=["+bool[0]+","+bool[1]+"]" : ""})"

	end

	def has_meaning en

		vector.each do |val,english|
			if en.like(english) then return :vector,val,self end
		end
		bool.each do |val,english|
			if en.like(english) then return :bool,val,self end
		end
		if en.like(self.default) then return :default,0,self end
		return nil

	end

	def phonetic param,val

    h = {
      :vector => {1 => "i",0 => "a",-1 => "o"},
      :bool => {true => "e",false => "u"},
      :default => ["y"]
    }

    return "#{key}#{h[param][val]}".downcase

	end

end