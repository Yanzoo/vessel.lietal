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
  </tr>
  <tr>
    <th>Which</th><td>#{@dictionaery.translate('which','lietal').capitalize}</td>
    <th>How</th><td>#{@dictionaery.translate('how','lietal').capitalize}</td>
    <th>How many</th><td>#{@dictionaery.translate('how many','lietal').capitalize}</td>
    <th>How are you</th><td>#{@dictionaery.translate('how are you','lietal').capitalize}</td>
  </tr>
</table>

<h3>Pronouns</h3>
<table>
  <tr>
    <th>I</th><td>#{@dictionaery.translate('I','lietal').capitalize}</td>
    <th>You</th><td>#{@dictionaery.translate('you','lietal').capitalize}</td>
    <th>He/She</th><td>#{@dictionaery.translate('he/she','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>We</th><td>#{@dictionaery.translate('we','lietal').capitalize}</td>
    <th>Yous</th><td>#{@dictionaery.translate('yous','lietal').capitalize}</td>
    <th>They</th><td>#{@dictionaery.translate('they','lietal').capitalize}</td>
  </tr>
</table>

<h3>Tenses</h3>
<table>
  <tr>
    <th>Past</th><td>#{@dictionaery.translate('past','lietal').capitalize}</td>
    <th>Present</th><td>#{@dictionaery.translate('present','lietal').capitalize}</td>
    <th>Future</th><td>#{@dictionaery.translate('future','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Conditional Past</th><td>#{@dictionaery.translate('conditional past','lietal').capitalize}</td>
    <th>Conditional Present</th><td>#{@dictionaery.translate('conditional present','lietal').capitalize}</td>
    <th>Conditional Future</th><td>#{@dictionaery.translate('conditional future','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Failed Past</th><td>#{@dictionaery.translate('impossible past','lietal').capitalize}</td>
    <th>Failed Present</th><td>#{@dictionaery.translate('impossible present','lietal').capitalize}</td>
    <th>Failed Future</th><td>#{@dictionaery.translate('impossible future','lietal').capitalize}</td>
  </tr>
</table>

<h2>Vocabulary</h2>

<h3>Nouns</h3>
<table>
  <tr>
    <th>time</th><td>#{@dictionaery.translate('time','lietal').capitalize}</td>
    <th>person</th><td>#{@dictionaery.translate('person','lietal').capitalize}</td>
    <th>year</th><td>#{@dictionaery.translate('year','lietal').capitalize}</td>
    <th>way</th><td>#{@dictionaery.translate('way','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>day</th><td>#{@dictionaery.translate('day','lietal').capitalize}</td>
    <th>thing</th><td>#{@dictionaery.translate('thing','lietal').capitalize}</td>
    <th>man</th><td>#{@dictionaery.translate('man','lietal').capitalize}</td>
    <th>world</th><td>#{@dictionaery.translate('world','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>life</th><td>#{@dictionaery.translate('life','lietal').capitalize}</td>
    <th>hand</th><td>#{@dictionaery.translate('hand','lietal').capitalize}</td>
    <th>part</th><td>#{@dictionaery.translate('part','lietal').capitalize}</td>
    <th>child</th><td>#{@dictionaery.translate('child','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>eye</th><td>#{@dictionaery.translate('eye','lietal').capitalize}</td>
    <th>woman</th><td>#{@dictionaery.translate('woman','lietal').capitalize}</td>
    <th>place</th><td>#{@dictionaery.translate('place','lietal').capitalize}</td>
    <th>work</th><td>#{@dictionaery.translate('work','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>week</th><td>#{@dictionaery.translate('week','lietal').capitalize}</td>
    <th>case</th><td>#{@dictionaery.translate('case','lietal').capitalize}</td>
    <th>point</th><td>#{@dictionaery.translate('point','lietal').capitalize}</td>
    <th>government</th><td>#{@dictionaery.translate('government','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>company</th><td>#{@dictionaery.translate('company','lietal').capitalize}</td>
    <th>number</th><td>#{@dictionaery.translate('number','lietal').capitalize}</td>
    <th>group</th><td>#{@dictionaery.translate('group','lietal').capitalize}</td>
    <th>fact</th><td>#{@dictionaery.translate('fact','lietal').capitalize}</td>
  </tr>
</table>

<h3>Verbs</h3>
<table>
  <tr>
    <th>to be</th><td>#{@dictionaery.translate('to be','lietal').capitalize}</td>
    <th>to have</th><td>#{@dictionaery.translate('to have','lietal').capitalize}</td>
    <th>to do</th><td>#{@dictionaery.translate('to do','lietal').capitalize}</td>
    <th>to say</th><td>#{@dictionaery.translate('to say','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to get</th><td>#{@dictionaery.translate('to get','lietal').capitalize}</td>
    <th>to make</th><td>#{@dictionaery.translate('to make','lietal').capitalize}</td>
    <th>to go</th><td>#{@dictionaery.translate('to go','lietal').capitalize}</td>
    <th>to know</th><td>#{@dictionaery.translate('to know','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to take</th><td>#{@dictionaery.translate('to take','lietal').capitalize}</td>
    <th>to see</th><td>#{@dictionaery.translate('to see','lietal').capitalize}</td>
    <th>to come</th><td>#{@dictionaery.translate('to come','lietal').capitalize}</td>
    <th>to think</th><td>#{@dictionaery.translate('to think','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to look</th><td>#{@dictionaery.translate('to look','lietal').capitalize}</td>
    <th>to want</th><td>#{@dictionaery.translate('to want','lietal').capitalize}</td>
    <th>to give</th><td>#{@dictionaery.translate('to give','lietal').capitalize}</td>
    <th>to use</th><td>#{@dictionaery.translate('to use','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to find</th><td>#{@dictionaery.translate('to find','lietal').capitalize}</td>
    <th>to tell</th><td>#{@dictionaery.translate('to tell','lietal').capitalize}</td>
    <th>to ask</th><td>#{@dictionaery.translate('to ask','lietal').capitalize}</td>
    <th>to work</th><td>#{@dictionaery.translate('to work','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to seem</th><td>#{@dictionaery.translate('to seem','lietal').capitalize}</td>
    <th>to feel</th><td>#{@dictionaery.translate('to feel','lietal').capitalize}</td>
    <th>to try</th><td>#{@dictionaery.translate('to try','lietal').capitalize}</td>
    <th>to leave</th><td>#{@dictionaery.translate('to leave','lietal').capitalize}</td>
  </tr>
</table>

<h3>Adjectives</h3>
<table>
  <tr>
    <th>good</th><td>#{@dictionaery.translate('good','lietal').capitalize}</td>
    <th>new</th><td>#{@dictionaery.translate('new','lietal').capitalize}</td>
    <th>first</th><td>#{@dictionaery.translate('first','lietal').capitalize}</td>
    <th>last</th><td>#{@dictionaery.translate('last','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>long</th><td>#{@dictionaery.translate('long','lietal').capitalize}</td>
    <th>great</th><td>#{@dictionaery.translate('great','lietal').capitalize}</td>
    <th>little</th><td>#{@dictionaery.translate('little','lietal').capitalize}</td>
    <th>own</th><td>#{@dictionaery.translate('own','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>other</th><td>#{@dictionaery.translate('other','lietal').capitalize}</td>
    <th>old</th><td>#{@dictionaery.translate('old','lietal').capitalize}</td>
    <th>right</th><td>#{@dictionaery.translate('right','lietal').capitalize}</td>
    <th>big</th><td>#{@dictionaery.translate('big','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>high</th><td>#{@dictionaery.translate('high','lietal').capitalize}</td>
    <th>different</th><td>#{@dictionaery.translate('different','lietal').capitalize}</td>
    <th>small</th><td>#{@dictionaery.translate('small','lietal').capitalize}</td>
    <th>large</th><td>#{@dictionaery.translate('large','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>next</th><td>#{@dictionaery.translate('next','lietal').capitalize}</td>
    <th>early</th><td>#{@dictionaery.translate('early','lietal').capitalize}</td>
    <th>young</th><td>#{@dictionaery.translate('young','lietal').capitalize}</td>
    <th>important</th><td>#{@dictionaery.translate('important','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>few</th><td>#{@dictionaery.translate('few','lietal').capitalize}</td>
    <th>public</th><td>#{@dictionaery.translate('public','lietal').capitalize}</td>
    <th>bad</th><td>#{@dictionaery.translate('bad','lietal').capitalize}</td>
    <th>same</th><td>#{@dictionaery.translate('same','lietal').capitalize}</td>
  </tr>
</table>

<h3>Prepositions</h3>
<table>
  <tr>
    <th>to</th><td>#{@dictionaery.translate('to','lietal').capitalize}</td>
    <th>of</th><td>#{@dictionaery.translate('of','lietal').capitalize}</td>
    <th>in</th><td>#{@dictionaery.translate('in','lietal').capitalize}</td>
    <th>for</th><td>#{@dictionaery.translate('for','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>on</th><td>#{@dictionaery.translate('on','lietal').capitalize}</td>
    <th>with</th><td>#{@dictionaery.translate('with','lietal').capitalize}</td>
    <th>at</th><td>#{@dictionaery.translate('at','lietal').capitalize}</td>
    <th>by</th><td>#{@dictionaery.translate('by','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>from</th><td>#{@dictionaery.translate('from','lietal').capitalize}</td>
    <th>up</th><td>#{@dictionaery.translate('up','lietal').capitalize}</td>
    <th>about</th><td>#{@dictionaery.translate('about','lietal').capitalize}</td>
    <th>into</th><td>#{@dictionaery.translate('into','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>over</th><td>#{@dictionaery.translate('over','lietal').capitalize}</td>
    <th>after</th><td>#{@dictionaery.translate('after','lietal').capitalize}</td>
    <th>above</th><td>#{@dictionaery.translate('above','lietal').capitalize}</td>
    <th>under</th><td>#{@dictionaery.translate('under','lietal').capitalize}</td>
  </tr>
</table>

<h2>Grammar</h2>

<h3>Common Sentences</h3>
<table>
  <tr>
    <th></th>
    <td></td>
  </tr>
</table>
"

    end

  end

end