#!/bin/env ruby
# encoding: utf-8

class Ae

  attr_accessor :key
  attr_accessor :vowel
  attr_accessor :consonant

  def initialize key

    @key       = key
    @vowel     = key[1,1].downcase
    @consonant = key[0,1].downcase

    @depths     = { "k" =>  1, "x" =>  1, "s" =>  1,
                    "t" =>  0, "d" =>  0, "l" =>  0,
                    "p" => -1, "b" => -1, "v" => -1}

    @heights = { "i" => 1, "a" => 0, "o" => -1}

    @widths     = { "k" => -1, "x" =>  0, "s" =>  1,
                    "t" => -1, "d" =>  0, "l" =>  1,
                    "p" => -1, "b" =>  0, "v" =>  1}

  end

  def form

    return "#{@key} #{category} #{type} #{vector_name(vector)} -> #{value}(#{x},#{y},#{z})"

  end

  def category

    return ae.keys[vectors[@vowel]]

  end

  def type

    return ae[category].keys[vectors[@consonant]]

  end

  def value

    return ae[category][type][vector]

  end

  def vector

    return vectors_normal[@consonant]

  end

  def vectors

    return "i" => 0, "a" => 1, "o" => 2,
    "k" => 0, "x" => 0, "s" => 0,
    "t" => 1, "d" => 1, "l" => 1,
    "p" => 2, "b" => 2, "v" => 2

  end

  def vectors_normal

    return "k" => 0,"x" => 1,"s" => 2,
    "t" => 0,"d" => 1,"l" => 2,
    "p" => 0,"b" => 1,"v" => 2
    
  end

  def vectors_capitals

    return 

  end

  def vector_name vector

    a = ["Superior", "Central", "Inferior"]
    return a[vector]

  end

  def vowel_vector

    return vectors[@vowel]

  end

  def consonant_vector

    return vectors_normal[@consonant]
    
  end

  def x

    return @widths[@consonant]

  end

  def y

    return @heights[@vowel]

  end

  def z

    return @depths[@consonant]
    
  end

  def ae

    h = {}
    h["Dimensional"] = {}
    h["Dimensional"]["Traverse"] = "Parent", "Instance", "Child"
    h["Dimensional"]["Direction"] = "Outward","Stable","Inward"
    h["Dimensional"]["Complexion"] = "Complex","Akin","Simple"
    h["Objectional"] = {}
    h["Objectional"]["State"] = "Psychologic","Phisionomic","Physic"
    h["Objectional"]["Relation"] = "With","United","Without"
    h["Objectional"]["Counter"] = "Multiple","One","None"
    h["Subjectional"] = {}
    h["Subjectional"]["Interaction"] = "To make","To see","To be"
    h["Subjectional"]["Modality"] = "Certain","Possible","Impossible"
    h["Subjectional"]["Alignment"] = "Positive","Ambivalent","Negative"

    return h
    
  end

end