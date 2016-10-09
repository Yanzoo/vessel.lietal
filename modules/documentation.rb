#!/bin/env ruby
# encoding: utf-8

class Lietl

  class Corpse

    def result

      return "

<h2>Sounds</h2>

<p>{{Lietal}} uses #{@dictionaery.vowels.length} vowels and #{@dictionaery.consonants.length} consonants.</p>
<h3>#{@dictionaery.vowels.length} Vowels</h3>
<table>
  <tr>
    <th>i</th><td>l<b>ea</b>ves</td>
    <th>a</th><td>hex<b>a</b>gram</td>
    <th>o</th><td><b>au</b>tomobile</td>
  </tr>
</table>
<h3>#{@dictionaery.consonants.length} Consonants</h3>
<p>For the most part, Lietal letters are voiced similarly to their english equivalents, except for <i>x</i> that is more akin to the english <i>j</i> or <i>g</i>.</p>
<table>
  <tr>
    <th>k</th><td>basi<b>c</b></td>
    <th>x</th><td><b>ge</b>ography</td>
    <th>s</th><td><b>s</b>ymphony</td>
  </tr>
  <tr>
    <th>t</th><td>ti<b>t</b>le</td>
    <th>d</th><td><b>d</b>estination</td>
    <th>l</th><td><b>l</b>ength</td>
  </tr>
  <tr>
    <th>p</th><td><b>d</b>evice</td>
    <th>b</th><td><b>b</b>eetle</td>
    <th>v</th><td><b>v</b>acant</td>
  </tr>
</table>

<h2>Aebeth</h2>

<p>The sounds are combined into syllables that are elemental particles of the language, and are called Aeths. There are 27 Aeths, they are better remembered by looking at them as a square or cube. The following table lists them alongside their approximated english equivalent word.</p>
<table>
  <tr>
    <th colspan='2'>#{Aeth.new('ki').ae.type}</th>
    <th colspan='2'>#{Aeth.new('ti').ae.type}</th>
    <th colspan='2'>#{Aeth.new('pi').ae.type}</th>
  </tr>
  <tr>
    <td>ki</td><td>#{Aeth.new('ki').ae.value}</td>
    <td>xi</td><td>#{Aeth.new('xi').ae.value}</td>
    <td>si</td><td>#{Aeth.new('si').ae.value}</td>
  </tr>
  <tr>
    <td>ti</td><td>#{Aeth.new('ti').ae.value}</td>
    <td>di</td><td>#{Aeth.new('di').ae.value}</td>
    <td>li</td><td>#{Aeth.new('li').ae.value}</td>
  <tr>
  <tr>
    <td>pi</td><td>#{Aeth.new('pi').ae.value}</td>
    <td>bi</td><td>#{Aeth.new('bi').ae.value}</td>
    <td>vi</td><td>#{Aeth.new('vi').ae.value}</td>
  </tr>
  <tr>
    <th colspan='2'>#{Aeth.new('ka').ae.type}</th>
    <th colspan='2'>#{Aeth.new('ta').ae.type}</th>
    <th colspan='2'>#{Aeth.new('pa').ae.type}</th>
  </tr>
  <tr>
    <td>ka</td><td>#{Aeth.new('ka').ae.value}</td>
    <td>xa</td><td>#{Aeth.new('xa').ae.value}</td>
    <td>sa</td><td>#{Aeth.new('sa').ae.value}</td>
  </tr>
  <tr>
    <td>ta</td><td>#{Aeth.new('ta').ae.value}</td>
    <td>da</td><td>#{Aeth.new('da').ae.value}</td>
    <td>la</td><td>#{Aeth.new('la').ae.value}</td>
  </tr>
  <tr>
    <td>pa</td><td>#{Aeth.new('pa').ae.value}</td>
    <td>ba</td><td>#{Aeth.new('ba').ae.value}</td>
    <td>va</td><td>#{Aeth.new('va').ae.value}</td>
  </tr>
  <tr>
    <th colspan='2'>#{Aeth.new('ko').ae.type}</th>
    <th colspan='2'>#{Aeth.new('to').ae.type}</th>
    <th colspan='2'>#{Aeth.new('po').ae.type}</th>
  </tr>
  <tr>
    <td>ko</td><td>#{Aeth.new('ko').ae.value}</td>
    <td>xo</td><td>#{Aeth.new('xo').ae.value}</td>
    <td>so</td><td>#{Aeth.new('so').ae.value}</td>
  </tr>
  <tr>
    <td>to</td><td>#{Aeth.new('to').ae.value}</td>
    <td>do</td><td>#{Aeth.new('do').ae.value}</td>
    <td>lo</td><td>#{Aeth.new('lo').ae.value}</td>
  </tr>
  <tr>
    <td>po</td><td>#{Aeth.new('po').ae.value}</td>
    <td>bo</td><td>#{Aeth.new('bo').ae.value}</td>
    <td>vo</td><td>#{Aeth.new('vo').ae.value}</td>
  </tr>
</table>

<h2>Particles</h2>

<h3>Question Words</h3>

<table>
  <tr>
    <th>Who</th><td>#{@dictionaery.translate('who','lietal').capitalize}</td>
    <th>What</th><td>#{@dictionaery.translate('what','lietal').capitalize}</td>
    <th>Where</th><td>#{@dictionaery.translate('where','lietal').capitalize}</td>
    <th>When</th><td>#{@dictionaery.translate('when','lietal').capitalize}</td>
    <th>How</th><td>#{@dictionaery.translate('how','lietal').capitalize}</td>
    <th>How many</th><td>#{@dictionaery.translate('how many','lietal').capitalize}</td>
    <th>How are you</th><td>#{@dictionaery.translate('how are you','lietal').capitalize}</td>
  </tr>
</table>

"

      # Particles
      # Key Setences
      # Traversing
      # Vocabulary

      
      return docs
      return "<p>Working on improving the documentation.</p>"  

    end

  end

end