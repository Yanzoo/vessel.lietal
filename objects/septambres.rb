#!/bin/env ruby
# encoding: utf-8

class Point

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

  def initialize aeth = nil, settings = {"width" => 80,"height" => 40,"margin" => 20,"radius" => 20,"stroke" => 12}

    @aeth  = aeth
    @width   = settings['width']
    @height  = settings['height']
    @margin  = settings['margin']
    @radius  = settings['radius']
    @stroke  = settings['stroke']

  end

  def stroke ae,id

    ae = Ae.new(ae)

    l = 2
    w = @width
    h = @height
    origin = id * @width

    up = 0
    down = h

    if ae.x == -1 && ae.y == 0
      return "M#{origin+w*0.75},0 l#{-w*0.75},0 a#{h/2},#{h/2} 0 0,0 #{0},#{h} l#{w*0.75},#{0}"
    end
    if ae.x ==  1 && ae.y == 0
      return "M#{origin},0 l#{w*0.75},0 a#{h/2},#{h/2} 0 0,1 #{0},#{h} l#{-w*0.75},#{0}"
    end
    if ae.x ==  0 && ae.y == 0
      return "M#{origin},#{h} l#{w},#{0}"
    end

    if ae.y ==  1 then start = h end
    if ae.y ==  0 then start = h/2 end
    if ae.y == -1 then start = 0 end

    if ae.y ==  1 then vertical = 0 end
    if ae.y ==  0 then vertical = h/2 end
    if ae.y == -1 then vertical = h end

    arc = "0,0"   

    if ae.y == 1
      if ae.x ==  1 then arc = "0,1" end
      if ae.x == -1 then arc = "1,0" end
    elsif ae.y == -1
      if ae.x ==  1 then arc = "0,1" end
      if ae.x == -1 then arc = "1,0" end
      if ae.x ==  0 then arc = "0,1" end
    elsif ae.y == 0
      if ae.x ==  1 then arc = "1,0" end
      if ae.x == -1 then arc = "1,0" end
      if ae.x ==  0 then arc = "1,1" end         
    end

    a = [
      "l#{w/2},0 A#{h/2},#{h/2} 0 #{arc} #{origin+(w/2)},#{start} ",
      "A#{h},#{h} 0 #{arc} #{origin+(w/2)},#{start} ",
      "l#{w/2},0 A#{h/2},#{h/2} 0 #{arc} #{origin+(w/2)},#{start} "
    ]
    c = [
      "l#{w/2},0 "
    ]

    s = "M#{origin},#{start} "
    s += "L#{origin},#{vertical} "
    s += a[ae.x+1]+" "
    s += c[0]+" "

    return s # A#{h},#{h} 0 0,0 0,#{h}

  end

  def macron ae,id

    ae = Ae.new(ae)
    origin = id * @width

    if ae.z == 1
      return "<circle cx='#{origin}' cy='#{-20}' r='0.5' fill='none' stroke='black'/>"
    elsif ae.z == -1
      return "<circle cx='#{origin}' cy='60' r='0.5' fill='none' stroke='black'/>"
    end
    return ""

  end

  def path

    path = ""
    circles = ""
    id = 0
    @aeth.parts.each do |part|
      path += stroke(part,id)
      circles += macron(part,id)
      id += 1
    end
    return "#{circles}<path d='#{path}'/>"

  end

  def to_svg

    return "<svg width='300px' height='#{@height}px' style='stroke-width: #{@stroke}px; stroke:black; fill:none; padding:30px 10px 30px 10px;stroke-linecap: square; margin-bottom:-25px'>#{path}</svg>"

  end

end