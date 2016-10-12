#!/bin/env ruby
# encoding: utf-8

class Point

  attr_accessor :x
  attr_accessor :y

  def initialize x,y

    @x = x
    @y = y

  end

end

class Septambres

  attr_accessor :width
  attr_accessor :height
  attr_accessor :radius
  attr_accessor :spacing

  def initialize lietal = nil

    @width   = 100
    @height  = 150
    @spacing = 10
    @radius  = 10

    @guides  = guides

  end

  def guides

    h = {}

    mt_grid_height = (@height * 0.25) + (@spacing/2)
    mt_grid_width = @width - (2 * @spacing) / 4

    h["TL"] = Point.new(@spacing,@spacing)
    h["TC"] = Point.new(@width / 2,@spacing)
    h["TR"] = Point.new(@width - @spacing,@spacing)
    h["CL"] = Point.new(@spacing,height / 2)
    h["CC"] = Point.new(@width / 2,height / 2)
    h["CR"] = Point.new(@width - @spacing,height / 2)
    h["BL"] = Point.new(@spacing,@height - @spacing)
    h["BC"] = Point.new(@width / 2,@height - @spacing)
    h["BR"] = Point.new(@width - @spacing,@height - @spacing)

    h["MTL"] = Point.new(@spacing,mt_grid_height)
    h["MTC"] = Point.new(@width / 2,mt_grid_height)
    h["MTR"] = Point.new(@width - @spacing,mt_grid_height)

    h["MBL"] = Point.new(@spacing,(@height * 0.75) - (@spacing/2))
    h["MBC"] = Point.new(@width / 2,(@height * 0.75) - (@spacing/2))
    h["MBR"] = Point.new(@width - @spacing,(@height * 0.75) - (@spacing/2))

    return h

  end

  def letter_ba

    return [@guides['TL'],@guides['TR']],[@guides['BL'],@guides['BR']]

  end

  def draw letter

    draw = ""

    letter.each do |stroke|
      draw += "M #{stroke.first.x} #{stroke.first.y} "
      stroke.each do |point|
        offset = point.x - stroke.first.x, point.y - stroke.first.y
        draw += "l #{offset.first} #{offset.last} "
      end
    end

    return "<path d='#{draw}' stroke='black' stroke-width='2' fill='none'/>"

  end

  def print_guides

    g = ""

    @guides.each do |k,point|
      g += "<circle cx='#{point.x}px' cy='#{point.y}' r='2' fill='white'></circle>"
    end

    return g

  end



  def to_svg
    system("clear")
    return "<svg width='#{@width}px' height='#{@height}px' style='background:red'>
      #{print_guides}
      #{draw(letter_ba)}
      </svg>"

  end

end