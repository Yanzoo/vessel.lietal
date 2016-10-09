class Ae

  attr_accessor :key
  attr_accessor :vowel
  attr_accessor :consonant

  def initialize key

    @key       = key
    @vowel     = key[1,1]
    @consonant = key[0,1]

  end

  def form

    return "? #{@key} #{category} #{type} #{vector_name(vector)} -> #{value}"

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

  def vector_name vector

    a = ["Superior", "Central", "Inferior"]
    return a[vector]

  end

  def ae

    h = {}
    h["Dimensional"] = {}
    h["Dimensional"]["Traverse"] = "Parent", "Self", "Child"
    h["Dimensional"]["Direction"] = "Outward","Stable","Inward"
    h["Dimensional"]["Complexion"] = "Complex","Akin","Simple"
    h["Objectional"] = {}
    h["Objectional"]["State"] = "Psychologic","Phisionomic","Physic"
    h["Objectional"]["Relation"] = "With","United","Without"
    h["Objectional"]["Counter"] = "Multiple","One","None"
    h["Subjectional"] = {}
    h["Subjectional"]["Interaction"] = "Touch","See","Be"
    h["Subjectional"]["Modality"] = "Certain","Possible","Impossible"
    h["Subjectional"]["Alignment"] = "Agree","Ambivalent","Disagree"

    return h
    
  end

end