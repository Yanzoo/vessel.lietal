#!/bin/env ruby
# encoding: utf-8

class ActionServe

  include Action

  def initialize q = nil

    super

    @name = "Serve"
    @docs = "Deliver html documentation."

  end
  
  def act q = ""

    load_folder "#{@host.path}/objects/*"

    $dictionaery = Dictionaery.new(@host.path)
    $aebeth = Aebeth.new(@host.path)

    if q.downcase.split(" ").first == "side_by_side"
      file_name = q.downcase.split(" ").last
      return $dictionaery.side_by_side_large(file_name)
    elsif q.downcase == "documentation"
      documentation = Documentation.new(@host.path)
      documentation.dictionaery = $dictionaery
      documentation.aebeth = $aebeth
      return documentation.to_s
    else
      return $dictionaery.to_s
    end

  end

end