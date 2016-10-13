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

class Rect

  attr_accessor :x
  attr_accessor :y
  attr_accessor :w
  attr_accessor :h

  attr_accessor :top_left
  attr_accessor :top_right
  attr_accessor :top_center
  attr_accessor :bottom_left
  attr_accessor :bottom_right
  attr_accessor :bottom_center
  attr_accessor :middle_left
  attr_accessor :middle_right
  attr_accessor :middle_center
  attr_accessor :middle_bottom_left
  attr_accessor :middle_bottom_right
  attr_accessor :middle_bottom_center

  def initialize x,y,w,h

    @x = x
    @y = y
    @w = w
    @h = h

    @top_left = Point.new(@x,@y)
    @top_right = Point.new(@x + @w,@y)
    @top_center = Point.new(@x + (@w/2),@y)
    @bottom_left = Point.new(@x,@y + @h)
    @bottom_right = Point.new(@x + @w,@y + @h)
    @bottom_center = Point.new(@x + (@w/2),@y + @h)
    @middle_left = Point.new(@x,@y + (@h/2))
    @middle_right = Point.new(@x + @w,@y + (@h/2))
    @middle_center = Point.new(@x + (@w/2),@y + (@h/2))
    @middle_bottom_left = Point.new(@x,@y + (@h*0.75))
    @middle_bottom_right = Point.new(@x + @w,@y + (@h*0.75))
    @middle_bottom_center = Point.new(@x + (@w/2),@y + (@h*0.75))

  end

end

class Septambres

  attr_accessor :width
  attr_accessor :height
  attr_accessor :radius
  attr_accessor :spacing

  def initialize lietal = nil, settings = {"width" => 150,"height" => 150,"margin" => 10,"radius" => 10}

    @lietal  = lietal
    @width   = settings['width']
    @height  = settings['height']
    @margin  = settings['margin']
    @radius  = settings['radius']

  end

  def make_letter name, f

    h = {}

    h['di'] = [f.bottom_left,f.bottom_right],[f.bottom_center,f.top_center]
    h['ti'] = [f.bottom_left,f.bottom_right],[f.bottom_center,f.top_center],[f.middle_left,f.middle_right]
    h['li'] = [f.bottom_left,f.bottom_right],[f.bottom_center,f.top_center],[f.middle_left,f.middle_right],[f.middle_bottom_left,f.middle_bottom_right]

    h['ba'] = [f.top_left,f.top_right,f.bottom_right,f.bottom_left,f.top_left],[f.bottom_left,f.bottom_right]
    h['ta'] = [f.top_left,f.top_right,f.bottom_right,f.bottom_left,f.top_left],[f.bottom_left,f.bottom_right]
    h['xo'] = [f.top_left,f.top_right,f.bottom_right,f.bottom_left,f.top_left],[f.bottom_left,f.bottom_right]

    return h[name]

  end

  def draw letter_name, template

    # Templates

    # +-------+  +---+---+  +---+---+
    # |       |  |   |   |  |   | 3 |
    # |   0   |  | 1 | 2 |  | 1 +---+
    # |       |  |   |   |  |   | 4 |
    # +-------+  +---+---+  +---+---+

    center = @width/2
    middle = @height/2
    right_column = center + (@margin/2)
    bottom_column = middle + (@margin/2)
    column_width = (@width - (3*@margin))/2
    column_height = (@height - (3*@margin))/2

    if template == 0
      f = Rect.new(@margin,@margin,@width - (2*@margin),@height - (2*@margin))
    elsif template == 1
      f = Rect.new(@margin,@margin,column_width,@height - (2*@margin))
    elsif template == 2
      f = Rect.new(right_column,@margin,column_width,@height - (2*@margin))
    elsif template == 3
      f = Rect.new(right_column,@margin,column_width,column_height)
    elsif template == 4
      f = Rect.new(right_column,bottom_column,column_width,column_height)
    end

    letter = make_letter(letter_name,f)

    draw = ""

    letter.each do |stroke|
      stroke_str = "M #{stroke.first.x} #{stroke.first.y} "
      prev = stroke.first
      stroke.each do |point|
        target = Point.new(point.x - prev.x, point.y - prev.y)
        stroke_str += "l #{target.x} #{target.y} "
        prev = point
      end
      draw += "<path d='#{stroke_str}' stroke='black' stroke-width='6' stroke-linecap='round' fill='none'/>\n"
    end

    return draw

  end

  def to_svg

    return "<svg width='#{@width}px' height='#{@height}px'>
      #{draw('di',1)}
      #{draw('ti',3)}
      #{draw('li',4)}
      </svg>"

  end

end