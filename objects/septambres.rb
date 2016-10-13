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
  attr_accessor :center_left
  attr_accessor :center_right
  attr_accessor :center

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
    @center_left = Point.new(@x,@y + (@h/2))
    @center_right = Point.new(@x + @w,@y + (@h/2))
    @center_center = Point.new(@x + (@w/2),@y + (@h/2))
    @center_bottom_left = Point.new(@x,@y + (@h*0.75))
    @center_bottom_right = Point.new(@x + @w,@y + (@h*0.75))
    @center_bottom_center = Point.new(@x + (@w/2),@y + (@h*0.75))
    @center_top_left = Point.new(@x,@y + (@h*0.25))
    @center_top_right = Point.new(@x + @w,@y + (@h*0.25))
    @center_top_center = Point.new(@x + (@w/2),@y + (@h*0.25))
    @center = Point.new(@x + (@w/2),@y + (@h/2))

  end

end

class Septambres

  attr_accessor :width
  attr_accessor :height
  attr_accessor :radius
  attr_accessor :spacing

  def initialize lietal = nil, settings = {"width" => 200,"height" => 200,"margin" => 20,"radius" => 20,"stroke" => 10}

    @lietal  = lietal
    @width   = settings['width']
    @height  = settings['height']
    @margin  = settings['margin']
    @radius  = settings['radius']
    @stroke  = settings['stroke']

  end

  def make_letter name, f

    h = {}

    r = "#{@radius},#{@radius}"
    clockwise = "0 0 1"
    counterwise = "1 0 0"

    h['di'] = ["
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.bottom_right)}
    l #{f.bottom_right.to(f.bottom_center.offset(@radius,0))}
    A #{r} #{clockwise} #{f.bottom_center.offset(0,-@radius)}
    l #{f.bottom_center.offset(0,-@radius).to(f.top_center)}"]
    
    h['ti'] = ["
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.bottom_right)}
    l #{f.bottom_right.to(f.bottom_center.offset(@radius,0))}
    A #{r} #{clockwise} #{f.bottom_center.offset(0,-@radius)}
    l #{f.bottom_center.offset(0,-@radius).to(f.top_center)} 
    l #{f.top_center.to(f.center.offset(0,-@radius))}
    A #{r} #{counterwise} #{f.center.offset(@radius,0)}
    l #{f.center.offset(@radius,0).to(f.center_right)}"]

    h['li'] = ["
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.bottom_right)}
    l #{f.bottom_right.to(f.bottom_center.offset(@radius,0))}
    A #{r} #{clockwise} #{f.bottom_center.offset(0,-@radius)}
    l #{f.bottom_center.offset(0,-@radius).to(f.top_center)} "]

    h['ki'] = ["
    M #{f.bottom_left}
    l #{f.bottom_left.to(f.top_left)}
    l #{f.top_left.to(f.top_right.offset(-@radius,0))}
    A #{r} #{clockwise} #{f.top_right.offset(0,@radius)}
    l #{f.top_right.offset(0,@radius).to(f.bottom_right.offset(0,-@radius))}
    A #{r} #{counterwise} #{f.bottom_right.offset(@radius,0)}"]

    
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

    html = ""
    letter.each do |path|
      html += "<path d='#{path}'/>\n"
    end

    return html

  end

  def to_svg

    return "<svg width='#{@width}px' height='#{@height}px' style='stroke-width: #{@stroke}px; stroke-linecap:square; stroke:black; fill:none'>
      #{draw('ki',1)}
      #{draw('di',3)}
      #{draw('ki',4)}
      </svg>"
      #{draw('ka',3)}
      #{draw('sa',4)}

  end

end