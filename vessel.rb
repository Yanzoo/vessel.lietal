#!/bin/env ruby
# encoding: utf-8

class VesselLietal

  include Vessel

  def initialize id = 0

    super

    @name = "Lietal"
    @path = File.expand_path(File.join(File.dirname(__FILE__), "/"))
    @docs = "The lietal language toolchain."
    
    install(:custom,:translate)
    install(:custom,:serve)
    install(:custom,:print)
    install(:generic,:document)
    install(:generic,:help)

  end

end