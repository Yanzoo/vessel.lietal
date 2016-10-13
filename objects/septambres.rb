#!/bin/env ruby
# encoding: utf-8

class Point

  attr_accessor :x
  attr_accessor :y

  def initialize x,y

    @x = x
    @y = y

  end

  def to_s

    return "#{x} #{y}"

  end

  def to target

    return Point.new(target.x - @x, target.y - @y)

  end

  def offset x,y

    return Point.new(@x + x,@y + y)

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
  attr_accessor :middle_top_left
  attr_accessor :middle_top_right
  attr_accessor :middle_top_center

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
    @middle_top_left = Point.new(@x,@y + (@h*0.25))
    @middle_top_right = Point.new(@x + @w,@y + (@h*0.25))
    @middle_top_center = Point.new(@x + (@w/2),@y + (@h*0.25))

  end

end

class Septambres

  attr_accessor :width
  attr_accessor :height
  attr_accessor :radius
  attr_accessor :spacing

  def initialize lietal = nil, settings = {"width" => 100,"height" => 100,"margin" => 4,"radius" => 10}

    @lietal  = lietal
    @width   = settings['width']
    @height  = settings['height']
    @margin  = settings['margin']
    @radius  = settings['radius']

  end

  def make_letter name, f

    h = {}

    h['di'] = "
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.bottom_right)}
    l #{f.bottom_right.to(f.bottom_center.offset(@radius,0))}
    A #{@radius},#{@radius} 0 0 1 #{f.bottom_center.offset(0,-@radius)}
    l #{f.bottom_center.offset(0,-@radius).to(f.top_center)} "
    
    h['ti'] = "
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.bottom_right)}
    l #{f.bottom_right.to(f.bottom_center.offset(@radius,0))}
    A #{@radius},#{@radius} 0 0 1 #{f.bottom_center.offset(0,-@radius)}
    l #{f.bottom_center.offset(0,-@radius).to(f.top_center)} "
    
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
    right_column = center
    bottom_column = middle
    column_width = (@width - (2*@margin))/2
    column_height = (@height - (2*@margin))/2

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

    return "<path d='#{make_letter(letter_name,f)}' stroke='black' fill='none'/>\n"

  end

  def to_svg

    return "<svg width='#{@width}px' height='#{@height}px' style='stroke-width: 4px; stroke-linecap:square'>
      #{draw('ti',0)}
      </svg>"
      #{draw('di',3)}
      #{draw('di',4)}
      #{draw('ka',3)}
      #{draw('sa',4)}

  end

end