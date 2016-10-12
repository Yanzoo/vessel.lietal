#!/bin/env ruby
# encoding: utf-8

class Lietl

  class Corpse

    def result

      return "

<h2>Phonology</h2>

<p>{{Lietal}} uses mainly #{@dictionaery.vowels.length} vowels and #{@dictionaery.consonants.length} consonants.</p>
<h3>#{@dictionaery.vowels.length} Vowels</h3>
<table>
  <tr>
    <th>i</th><td>l<b>ea</b>ves</td>
    <th>a</th><td>hex<b>a</b>gram</td>
    <th>o</th><td><b>au</b>tomobile</td>
  </tr>
</table>
<h3>#{@dictionaery.consonants.length} Consonants</h3>
<p>For the most part, Lietal letters are voiced similarly to their english equivalents, except for <i>x</i> that is more akin to a light english {_j_} when . When a word begins with a {_x_} letter, the written word will use {_j_}.</p>
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
<h3>Adultspeak</h3>
<p>Adultspeak is a phonetic style, used in this documentation, that shortens the spelling of most divieths(4 letters, or 2 syllables words) to a single syllable by merging sounds and changing letters order.</p>
<table>
  <tr>
    <th>e</th><td>n<b>e</b>ver</td>
    <th>u</th><td><b>oo</b>long</td>
    <th></th><td></td>
  </tr>
  <tr>
    <th>z</th><td><b>z</b>ero</td>
    <th>r</th><td>ee<b>r</b>y</td>
    <th>f</th><td><b>f</b>ault</td>
  </tr>
</table>

<h2>The Aebeth</h2>

<p>The sounds are combined into syllables that are elemental particles of the language, and are called Aeths. There are 27 Aeths, they are better remembered by looking at them as a square or cube. The following table lists them alongside their approximated english equivalent word.</p>
<table>
  <tr>
    <th colspan='2'>#{Aeth.new('ki').ae.type}</th>
    <th colspan='2'>#{Aeth.new('ti').ae.type}</th>
    <th colspan='2'>#{Aeth.new('pi').ae.type}</th>
  </tr>
  <tr>
    <td>ki</td><td>#{Aeth.new('ki').ae.value}</td>
    <td>xi</td><td>#{Aeth.new('ti').ae.value}</td>
    <td>si</td><td>#{Aeth.new('pi').ae.value}</td>
  </tr>
  <tr>
    <td>ti</td><td>#{Aeth.new('xi').ae.value}</td>
    <td>di</td><td>#{Aeth.new('di').ae.value}</td>
    <td>li</td><td>#{Aeth.new('bi').ae.value}</td>
  <tr>
  <tr>
    <td>pi</td><td>#{Aeth.new('si').ae.value}</td>
    <td>bi</td><td>#{Aeth.new('li').ae.value}</td>
    <td>vi</td><td>#{Aeth.new('vi').ae.value}</td>
  </tr>
  <tr>
    <th colspan='2'>#{Aeth.new('ka').ae.type}</th>
    <th colspan='2'>#{Aeth.new('ta').ae.type}</th>
    <th colspan='2'>#{Aeth.new('pa').ae.type}</th>
  </tr>
  <tr>
    <td>ka</td><td>#{Aeth.new('ka').ae.value}</td>
    <td>xa</td><td>#{Aeth.new('ta').ae.value}</td>
    <td>sa</td><td>#{Aeth.new('pa').ae.value}</td>
  </tr>
  <tr>
    <td>ta</td><td>#{Aeth.new('xa').ae.value}</td>
    <td>da</td><td>#{Aeth.new('da').ae.value}</td>
    <td>la</td><td>#{Aeth.new('ba').ae.value}</td>
  </tr>
  <tr>
    <td>pa</td><td>#{Aeth.new('sa').ae.value}</td>
    <td>ba</td><td>#{Aeth.new('la').ae.value}</td>
    <td>va</td><td>#{Aeth.new('va').ae.value}</td>
  </tr>
  <tr>
    <th colspan='2'>#{Aeth.new('ko').ae.type}</th>
    <th colspan='2'>#{Aeth.new('to').ae.type}</th>
    <th colspan='2'>#{Aeth.new('po').ae.type}</th>
  </tr>
  <tr>
    <td>ko</td><td>#{Aeth.new('ko').ae.value}</td>
    <td>xo</td><td>#{Aeth.new('to').ae.value}</td>
    <td>so</td><td>#{Aeth.new('po').ae.value}</td>
  </tr>
  <tr>
    <td>to</td><td>#{Aeth.new('xo').ae.value}</td>
    <td>do</td><td>#{Aeth.new('do').ae.value}</td>
    <td>lo</td><td>#{Aeth.new('bo').ae.value}</td>
  </tr>
  <tr>
    <td>po</td><td>#{Aeth.new('so').ae.value}</td>
    <td>bo</td><td>#{Aeth.new('lo').ae.value}</td>
    <td>vo</td><td>#{Aeth.new('vo').ae.value}</td>
  </tr>
</table>

<h2>Particles</h2>

<h3>Question Words</h3>
<p>All generic question words in Lietal are created by using the {*Do*} aeth, creating constructs in the shape of {_\"Could it be that-?\"_}.</p>
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
    <th>How many</th><td>#{@dictionaery.translate('how_many','lietal').capitalize}</td>
    <th>How are you</th><td>#{@dictionaery.translate('how_are_you','lietal').capitalize}</td>
  </tr>
</table>

<h3>Pronouns</h3>
<table>
  <tr>
    <th>I</th><td>#{@dictionaery.translate('I','lietal').capitalize}</td>
    <th>You</th><td>#{@dictionaery.translate('you','lietal').capitalize}</td>
    <th>He/She</th><td>#{@dictionaery.translate('he_she','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>We</th><td>#{@dictionaery.translate('we','lietal').capitalize}</td>
    <th>Yous</th><td>#{@dictionaery.translate('yous','lietal').capitalize}</td>
    <th>They</th><td>#{@dictionaery.translate('they','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>My</th><td>#{@dictionaery.translate('my','lietal').capitalize}</td>
    <th>Your</th><td>#{@dictionaery.translate('your','lietal').capitalize}</td>
    <th>Their</th><td>#{@dictionaery.translate('their','lietal').capitalize}</td>
  </tr>
</table>

<h3>Tenses</h3>
<p>Tenses words are used like adjectives onto verbs, {_#{@dictionaery.translate('I you past to_see','lietal').capitalize}, or {*I saw you*}. In most cases, it is infered that a sentence beginning without a pronoun is at the first person singular, and so {*#{@dictionaery.translate('I','lietal')}*} is not required, this example requires {_I_} to be used. The modal tense is the tense used for {_should do_}, or {_must do_}.</p>
<table>
  <tr>
    <th>Past</th><td>#{@dictionaery.translate('past','lietal').capitalize}</td>
    <th>Present</th><td>#{@dictionaery.translate('present','lietal').capitalize}</td>
    <th>Future</th><td>#{@dictionaery.translate('future','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Potential Past</th><td>#{@dictionaery.translate('potential_past','lietal').capitalize}</td>
    <th>Potential Present</th><td>#{@dictionaery.translate('potential_present','lietal').capitalize}</td>
    <th>Potential Future</th><td>#{@dictionaery.translate('potential_future','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Modal Past</th><td>#{@dictionaery.translate('modal_past','lietal').capitalize}</td>
    <th>Modal Present</th><td>#{@dictionaery.translate('modal_present','lietal').capitalize}</td>
    <th>Modal Future</th><td>#{@dictionaery.translate('modal_future','lietal').capitalize}</td>
  </tr>
</table>

<h2>Vocabulary</h2>

<h3>Nouns</h3>
<table>
  <tr>
    <th>time</th><td>#{@dictionaery.translate('time','lietal').capitalize}</td>
    <th>person</th><td>#{@dictionaery.translate('person','lietal').capitalize}</td>
    <th>way</th><td>#{@dictionaery.translate('way','lietal').capitalize}</td>
    <th>thing</th><td>#{@dictionaery.translate('thing','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>life</th><td>#{@dictionaery.translate('life','lietal').capitalize}</td>
    <th>hand</th><td>#{@dictionaery.translate('hand','lietal').capitalize}</td>
    <th>part</th><td>#{@dictionaery.translate('part','lietal').capitalize}</td>
    <th>child</th><td>#{@dictionaery.translate('child','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>eye</th><td>#{@dictionaery.translate('eye','lietal').capitalize}</td>
    <th>place</th><td>#{@dictionaery.translate('place','lietal').capitalize}</td>
    <th>work</th><td>#{@dictionaery.translate('work','lietal').capitalize}</td>
    <th>world</th><td>#{@dictionaery.translate('world','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>language</th><td>#{@dictionaery.translate('language','lietal').capitalize}</td>
    <th>number</th><td>#{@dictionaery.translate('number','lietal').capitalize}</td>
    <th>group</th><td>#{@dictionaery.translate('group','lietal').capitalize}</td>
    <th>fact</th><td>#{@dictionaery.translate('fact','lietal').capitalize}</td>
  </tr>
</table>

<h3>Verbs</h3>
<table>
  <tr>
    <th>to take</th><td>#{@dictionaery.translate('to_take','lietal').capitalize}</td>
    <th>to come</th><td>#{@dictionaery.translate('to_come','lietal').capitalize}</td>
    <th>to have</th><td>#{@dictionaery.translate('to_have','lietal').capitalize}</td>
    <th>to say</th><td>#{@dictionaery.translate('to_say','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to make</th><td>#{@dictionaery.translate('to_make','lietal').capitalize}</td>
    <th>to go</th><td>#{@dictionaery.translate('to_go','lietal').capitalize}</td>
    <th>to know</th><td>#{@dictionaery.translate('to_know','lietal').capitalize}</td>
    <th>to find</th><td>#{@dictionaery.translate('to_find','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to look</th><td>#{@dictionaery.translate('to_look','lietal').capitalize}</td>
    <th>to want</th><td>#{@dictionaery.translate('to_want','lietal').capitalize}</td>
    <th>to give</th><td>#{@dictionaery.translate('to_give','lietal').capitalize}</td>
    <th>to use</th><td>#{@dictionaery.translate('to_use','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>to help</th><td>#{@dictionaery.translate('to_help','lietal').capitalize}</td>
    <th>to feel</th><td>#{@dictionaery.translate('to_feel','lietal').capitalize}</td>
    <th>to try</th><td>#{@dictionaery.translate('to_try','lietal').capitalize}</td>
    <th>to leave</th><td>#{@dictionaery.translate('to_leave','lietal').capitalize}</td>
  </tr>
</table>

<h3>Adjectives</h3>
<table>
  <tr>
    <th>good</th><td>#{@dictionaery.translate('good','lietal').capitalize}</td>
    <th>bad</th><td>#{@dictionaery.translate('bad','lietal').capitalize}</td>
    <th>new</th><td>#{@dictionaery.translate('new','lietal').capitalize}</td>
    <th>last</th><td>#{@dictionaery.translate('last','lietal').capitalize}</td>
    <th>long</th><td>#{@dictionaery.translate('long','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>little</th><td>#{@dictionaery.translate('little','lietal').capitalize}</td>
    <th>small</th><td>#{@dictionaery.translate('small','lietal').capitalize}</td>
    <th>large</th><td>#{@dictionaery.translate('large','lietal').capitalize}</td>
    <th>big</th><td>#{@dictionaery.translate('big','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>different</th><td>#{@dictionaery.translate('different','lietal').capitalize}</td>
    <th>old</th><td>#{@dictionaery.translate('old','lietal').capitalize}</td>    
    <th>own</th><td>#{@dictionaery.translate('own','lietal').capitalize}</td>
    <th>important</th><td>#{@dictionaery.translate('important','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>next</th><td>#{@dictionaery.translate('next','lietal').capitalize}</td>
    <th>young</th><td>#{@dictionaery.translate('young','lietal').capitalize}</td>
    <th>Many</th><td>#{@dictionaery.translate('many','lietal').capitalize}</td>
    <th>few</th><td>#{@dictionaery.translate('few','lietal').capitalize}</td>
  </tr>
</table>

<h3>Prepositions</h3>
<table>
  <tr>
    <th>to</th><td>#{@dictionaery.translate('to','lietal').capitalize}</td>
    <th>in</th><td>#{@dictionaery.translate('in','lietal').capitalize}</td>
    <th>for</th><td>#{@dictionaery.translate('for','lietal').capitalize}</td>
    <th>from</th><td>#{@dictionaery.translate('from','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>on</th><td>#{@dictionaery.translate('on','lietal').capitalize}</td>
    <th>with</th><td>#{@dictionaery.translate('with','lietal').capitalize}</td>
    <th>at</th><td>#{@dictionaery.translate('at','lietal').capitalize}</td>
    <th>by</th><td>#{@dictionaery.translate('by','lietal').capitalize}</td>
  </tr>
</table>

<h2>Grammar</h2>

<h3>Common Sentences</h3>
<table>
  <tr>
    <th>Welcome</th><td>#{@dictionaery.translate('Hello','lietal').capitalize}</td>
    <th>Goodbye</th><td>#{@dictionaery.translate('Goodbye','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>I understand</th><td>#{@dictionaery.translate('I to_understand','lietal').capitalize}</td>
    <th>No, I don't understand</th><td>#{@dictionaery.translate('No - I negative to_understand','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Speak to me in Lietal</th><td>#{@dictionaery.translate('Please with Lietal to_say','lietal').capitalize}</td>
    <th>Please say that again</th><td>#{@dictionaery.translate('Please again to_say','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>Do you speak Lietal?</th><td>#{@dictionaery.translate('what Lietal to_understand','lietal').capitalize}</td>
    <th>Yes, a little</th><td>#{@dictionaery.translate('Yes - little to_understand','lietal').capitalize}</td>
  </tr>
  <tr>
    <th>What is your name?</th><td>#{@dictionaery.translate('what your name to_be','lietal').capitalize}</td>
    <th>My name is Lucas</th><td>#{@dictionaery.translate('my name Lucas to_be','lietal').capitalize}</td>
  </tr>
</table>
"

    end

  end

end