#!/bin/env ruby
# encoding: utf-8

class Documentation

  attr_accessor :path
  attr_accessor :dictionaery
  attr_accessor :aebeth

  def initialize path

    @path = path

  end

  def to_s
    
    html = "
<h2>Phonology</h2>
<p>For the most part, Lietal letters are voiced similarly to their english equivalents. Written from left to right with implicit neutrality, words and groups of word are both ruled by the same grammatical logics. </p>
<table>
<tr>
  <th colspan='6'>Vowels</th>
</tr>
<tr>
  <th>i</th><td>l<b>ea</b>ves</td>
  <th>a</th><td>hex<b>a</b>gram</td>
  <th>o</th><td><b>au</b>tomobile</td>
</tr>
<tr>
  <th>e</th><td>n<b>e</b>ver</td>
  <th>u</th><td>n<b>ew</b></td>
  <th>y</th><td>b<b>uy</b></td>
</tr>
<tr>
  <th colspan='6'>Consonants</th>
</tr>
<tr>
  <th>k</th><td>basi<b>c</b></td>
  <th>s</th><td><b>s</b>ymphony</td>
  <th>j</th><td><b>j</b>eovah</td>
</tr>
<tr>
  <th>t</th><td>ti<b>t</b>le</td>
  <th>l</th><td><b>l</b>ength</td>
  <th>v</th><td><b>v</b>ideo</td>
</tr>
<tr>
  <th>p</th><td><b>d</b>evice</td>
  <th>v</th><td><b>v</b>acant</td>
  <th>f</th><td><b>f</b>estival</td>
</tr>
</table>

<h2>The Aebeth</h2>
<p>The elemental particles of the language are the 9 core {_Aeths_}, atoms or building blocks of the {{Lietal}} word building.</p>
#{@aebeth.table}

<h2>Vocabulary</h2>

<h3>Question Words</h3>
<table>
<tr>
  <th>When</th><td>#{@dictionaery.translate('when',:lietal)}</td>
  <th>Who</th><td>#{@dictionaery.translate('who',:lietal)}</td>
  <th>What</th><td>#{@dictionaery.translate('what',:lietal)}</td>
</tr>
<tr>
  <th>Where</th><td>#{@dictionaery.translate('where',:lietal)}</td>
  <th>Which</th><td>#{@dictionaery.translate('which',:lietal)}</td>
  <th>How</th><td>#{@dictionaery.translate('how',:lietal)}</td>
</tr>
</table>

<h3>Pronouns</h3>
<table>
<tr>
  <th>I</th><td>#{@dictionaery.translate('I',:lietal)}</td>
  <th>You</th><td>#{@dictionaery.translate('you',:lietal)}</td>
  <th>He/She</th><td>#{@dictionaery.translate('he_she',:lietal)}</td>
</tr>
<tr>
  <th>We</th><td>#{@dictionaery.translate('we',:lietal)}</td>
  <th>Yous</th><td>#{@dictionaery.translate('yous',:lietal)}</td>
  <th>They</th><td>#{@dictionaery.translate('they',:lietal)}</td>
</tr>
<tr>
  <th>My</th><td>#{@dictionaery.translate('my',:lietal)}</td>
  <th>Your</th><td>#{@dictionaery.translate('your',:lietal)}</td>
  <th>Their</th><td>#{@dictionaery.translate('their',:lietal)}</td>
</tr>
</table>

<h3>Tenses</h3>
<table>
<tr>
  <th>Past</th><td>#{@dictionaery.translate('past',:lietal)}</td>
  <th>Present</th><td>#{@dictionaery.translate('present',:lietal)}</td>
  <th>Future</th><td>#{@dictionaery.translate('future',:lietal)}</td>
</tr>
<tr>
  <th>Potential Past</th><td>#{@dictionaery.translate('potential_past',:lietal)}</td>
  <th>Potential Present</th><td>#{@dictionaery.translate('potential_present',:lietal)}</td>
  <th>Potential Future</th><td>#{@dictionaery.translate('potential_future',:lietal)}</td>
</tr>
</table>

<h3>Nouns</h3>
<table>
<tr>
  <th>time</th><td>#{@dictionaery.translate('time',:lietal)}</td>
  <th>person</th><td>#{@dictionaery.translate('person',:lietal)}</td>
  <th>way</th><td>#{@dictionaery.translate('way',:lietal)}</td>
  <th>thing</th><td>#{@dictionaery.translate('thing',:lietal)}</td>
</tr>
<tr>
  <th>life</th><td>#{@dictionaery.translate('life',:lietal)}</td>
  <th>hand</th><td>#{@dictionaery.translate('hand',:lietal)}</td>
  <th>part</th><td>#{@dictionaery.translate('part',:lietal)}</td>
  <th>child</th><td>#{@dictionaery.translate('child',:lietal)}</td>
</tr>
<tr>
  <th>eye</th><td>#{@dictionaery.translate('eye',:lietal)}</td>
  <th>place</th><td>#{@dictionaery.translate('place',:lietal)}</td>
  <th>work</th><td>#{@dictionaery.translate('work',:lietal)}</td>
  <th>world</th><td>#{@dictionaery.translate('world',:lietal)}</td>
</tr>
<tr>
  <th>language</th><td>#{@dictionaery.translate('language',:lietal)}</td>
  <th>number</th><td>#{@dictionaery.translate('number',:lietal)}</td>
  <th>group</th><td>#{@dictionaery.translate('group',:lietal)}</td>
  <th>fact</th><td>#{@dictionaery.translate('fact',:lietal)}</td>
</tr>
</table>

<h3>Verbs</h3>
<table>
<tr>
  <th>to climb</th><td>#{@dictionaery.translate('to_climb',:lietal)}</td>
  <th>to go</th><td>#{@dictionaery.translate('to_go',:lietal)}</td>
  <th>to come</th><td>#{@dictionaery.translate('to_come',:lietal)}</td>
</tr>
<tr>
  <th>to take</th><td>#{@dictionaery.translate('to_take',:lietal)}</td>
  <th>to hold</th><td>#{@dictionaery.translate('to_hold',:lietal)}</td>
  <th>to give</th><td>#{@dictionaery.translate('to_give',:lietal)}</td>
</tr>
<tr>
  <th>to listen</th><td>#{@dictionaery.translate('to_listen',:lietal)}</td>
  <th>to see</th><td>#{@dictionaery.translate('to_see',:lietal)}</td>
  <th>to show</th><td>#{@dictionaery.translate('to_show',:lietal)}</td>
</tr>
<tr>
  <th>to write</th><td>#{@dictionaery.translate('to_write',:lietal)}</td>
  <th>to draw</th><td>#{@dictionaery.translate('to_draw',:lietal)}</td>
  <th>to build</th><td>#{@dictionaery.translate('to_build',:lietal)}</td>
</tr>
</table>

<h3>Adjectives</h3>
<table>
<tr>
  <th>good</th><td>#{@dictionaery.translate('good',:lietal)}</td>
  <th>bad</th><td>#{@dictionaery.translate('bad',:lietal)}</td>
  <th>new</th><td>#{@dictionaery.translate('new',:lietal)}</td>
  <th>long</th><td>#{@dictionaery.translate('long',:lietal)}</td>
</tr>
<tr>
  <th>little</th><td>#{@dictionaery.translate('little',:lietal)}</td>
  <th>small</th><td>#{@dictionaery.translate('small',:lietal)}</td>
  <th>large</th><td>#{@dictionaery.translate('large',:lietal)}</td>
  <th>big</th><td>#{@dictionaery.translate('big',:lietal)}</td>
</tr>
<tr>
  <th>different</th><td>#{@dictionaery.translate('different',:lietal)}</td>
  <th>old</th><td>#{@dictionaery.translate('old',:lietal)}</td>
  <th>own</th><td>#{@dictionaery.translate('own',:lietal)}</td>
  <th>important</th><td>#{@dictionaery.translate('important',:lietal)}</td>
</tr>
<tr>
  <th>next</th><td>#{@dictionaery.translate('next',:lietal)}</td>
  <th>young</th><td>#{@dictionaery.translate('young',:lietal)}</td>
  <th>Many</th><td>#{@dictionaery.translate('many',:lietal)}</td>
  <th>few</th><td>#{@dictionaery.translate('few',:lietal)}</td>
</tr>
</table>

<h3>Prepositions</h3>
<table>
<tr>
  <th>to</th><td>#{@dictionaery.translate('to',:lietal)}</td>
  <th>in</th><td>#{@dictionaery.translate('in',:lietal)}</td>
  <th>for</th><td>#{@dictionaery.translate('for',:lietal)}</td>
  <th>from</th><td>#{@dictionaery.translate('from',:lietal)}</td>
</tr>
<tr>
  <th>on</th><td>#{@dictionaery.translate('on',:lietal)}</td>
  <th>with</th><td>#{@dictionaery.translate('with',:lietal)}</td>
  <th>at</th><td>#{@dictionaery.translate('at',:lietal)}</td>
  <th>by</th><td>#{@dictionaery.translate('by',:lietal)}</td>
</tr>
</table>
"

    return html


    return "


<tr>
  <th>to help</th><td>#{@dictionaery.translate('to_help',:lietal)}</td>
  <th>to feel</th><td>#{@dictionaery.translate('to_feel',:lietal)}</td>
  <th>to try</th><td>#{@dictionaery.translate('to_try',:lietal)}</td>
  <th>to leave</th><td>#{@dictionaery.translate('to_leave',:lietal)}</td>
  <th>to come</th><td>#{@dictionaery.translate('to_come',:lietal)}</td>
  <th>to have</th><td>#{@dictionaery.translate('to_have',:lietal)}</td>
  <th>to go</th><td>#{@dictionaery.translate('to_go',:lietal)}</td>
  <th>to know</th><td>#{@dictionaery.translate('to_know',:lietal)}</td>
  <th>to find</th><td>#{@dictionaery.translate('to_find',:lietal)}</td>
  <th>to look</th><td>#{@dictionaery.translate('to_look',:lietal)}</td>
  <th>to want</th><td>#{@dictionaery.translate('to_want',:lietal)}</td>
  <th>to use</th><td>#{@dictionaery.translate('to_use',:lietal)}</td>
</tr>

<h2>Vocabulary</h2>


<h2>Grammar</h2>

<h3>Common Sentences</h3>
<table>
<tr>
  <th>Welcome</th><td>#{@dictionaery.translate('Welcome',:lietal)}</td>
  <th>Goodbye</th><td>#{@dictionaery.translate('Goodbye',:lietal)}</td>
</tr>
<tr>
  <th>I understand</th><td>#{@dictionaery.translate('I to_understand',:lietal)}</td>
  <th>No, I don't understand</th><td>#{@dictionaery.translate('No - I negative to_understand',:lietal)}</td>
</tr>
<tr>
  <th>Speak to me in Lietal</th><td>#{@dictionaery.translate('Please with Lietal to_say',:lietal)}</td>
  <th>Please say that again</th><td>#{@dictionaery.translate('Please again to_say',:lietal)}</td>
</tr>
<tr>
  <th>Do you speak Lietal?</th><td>#{@dictionaery.translate('what Lietal to_understand',:lietal)}</td>
  <th>Yes, I understand a little</th><td>#{@dictionaery.translate('Yes - little to_understand',:lietal)}</td>
</tr>
<tr>
  <th>What is your name?</th><td>#{@dictionaery.translate('what your name to_be',:lietal)}</td>
  <th>My name is Lucas</th><td>#{@dictionaery.translate('my name Lucas to_be',:lietal)}</td>
</tr>
</table>
"
# [Question - Subject] [Adjective - Topic] [Tense - Verb]

  end

end