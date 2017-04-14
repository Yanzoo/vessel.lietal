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
<h2>Basics</h2>
<h3>Phonology</h3>
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

<h3>Morphology</h3>
<p>Lietal constructs, or words, are condensed into adultspeak, a phonetically compressed form of their larger childspeak equivalent.</p>

<table>
  <tr><td></td><th>Childspeak</th><th>Adultspeak</th></tr>
  <tr><th>When</th><td>#{@dictionaery.translate('when',:lietal).childspeak}</td><td>#{@dictionaery.translate('when',:lietal).adultspeak}</td></tr>
  <tr><th>Who</th><td>#{@dictionaery.translate('who',:lietal).childspeak}</td><td>#{@dictionaery.translate('who',:lietal).adultspeak}</td></tr>
</table>

<h3>Typography</h3>
<p>Lietal is designed to be written with the {{Shortscript|Shorthand}}.</p>

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
  <th>Future</th><td>#{@dictionaery.translate('future',:lietal)}</td>
  <th>Present</th><td>#{@dictionaery.translate('present',:lietal)}</td>
  <th>Past</th><td>#{@dictionaery.translate('past',:lietal)}</td>
</tr>
<tr>
  <th>Potential Future</th><td>#{@dictionaery.translate('potential_future',:lietal)}</td>
  <th>Potential Present</th><td>#{@dictionaery.translate('potential_present',:lietal)}</td>
  <th>Potential Past</th><td>#{@dictionaery.translate('potential_past',:lietal)}</td>
</tr>
<tr>
  <th>Negative Future</th><td>#{@dictionaery.translate('negative_future',:lietal)}</td>
  <th>Negative Present</th><td>#{@dictionaery.translate('negative_present',:lietal)}</td>
  <th>Negative Past</th><td>#{@dictionaery.translate('negative_past',:lietal)}</td> 
</tr>
<tr>
  <th>Neg. Pot. Future</th><td>#{@dictionaery.translate('negative_potential_future',:lietal)}</td>
  <th>Neg. Pot. Present</th><td>#{@dictionaery.translate('negative_potential_present',:lietal)}</td>
  <th>Neg. Pot. Past</th><td>#{@dictionaery.translate('negative_potential_past',:lietal)}</td> 
</tr>
</table>

<h3>Nouns</h3>
<table>
<tr>
  <th>time</th><td>#{@dictionaery.translate('time',:lietal)}</td>
  <th>life</th><td>#{@dictionaery.translate('life',:lietal)}</td>
  <th>automation</th><td>#{@dictionaery.translate('automation',:lietal)}</td>
</tr>
<tr>
  <th>event</th><td>#{@dictionaery.translate('event',:lietal)}</td>
  <th>organ</th><td>#{@dictionaery.translate('organ',:lietal)}</td>
  <th>part</th><td>#{@dictionaery.translate('part',:lietal)}</td>
</tr>
<tr>
  <th>hand</th><td>#{@dictionaery.translate('hand',:lietal)}</td>
  <th>eye</th><td>#{@dictionaery.translate('eye',:lietal)}</td>
  <th>heart</th><td>#{@dictionaery.translate('heart',:lietal)}</td>
</tr>
</table>

<h3>Verbs</h3>
<p>Verbs are generally built from the <i>#{@aebeth.aeth('interaction').phonetic(:default)}</i> family.</p>
<table>
<tr>
  <th>to climb</th><td>#{@dictionaery.translate('to_go',:lietal)}</td>
  <th>to go</th><td>#{@dictionaery.translate('to_stay',:lietal)}</td>
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

<h3>Prepositions</h3>
<table>
<tr>
  <th>on</th><td>#{@dictionaery.translate('on',:lietal)}</td>
  <th>at</th><td>#{@dictionaery.translate('at',:lietal)}</td>
  <th>in</th><td>#{@dictionaery.translate('in',:lietal)}</td>
</tr>
<tr>
  <th>toward</th><td>#{@dictionaery.translate('toward',:lietal)}</td>
  <th>to</th><td>#{@dictionaery.translate('to',:lietal)}</td>
  <th>from</th><td>#{@dictionaery.translate('from',:lietal)}</td>
</tr>
<tr>
  <th>will</th><td>#{@dictionaery.translate('will',:lietal)}</td>
  <th>can</th><td>#{@dictionaery.translate('can',:lietal)}</td>
  <th>in</th><td>#{@dictionaery.translate('cannot',:lietal)}</td>
</tr>
</table>

<h2>Grammar</h2>

<h3>Common Sentences</h3>
<table>
<tr>
  <th>Welcome</th><td>#{@dictionaery.translate('Hello',:lietal)}</td>
  <th>Goodbye</th><td>#{@dictionaery.translate('Bye',:lietal)}</td>
</tr>
<tr>
  <th>Yes, I understand</th><td>#{@dictionaery.translate('Yes - to_understand',:lietal)}</td>
  <th>No, I don't understand</th><td>#{@dictionaery.translate('No - to_understand negative_present',:lietal)}</td>
</tr>
<tr>
  <th>Speak to me in Lietal</th><td>#{@dictionaery.translate('with Lietal to_say',:lietal)}</td>
  <th>Please, say that again</th><td>#{@dictionaery.translate('Please - again to_say',:lietal)}</td>
</tr>
<tr>
  <th>Do you speak Lietal?</th><td>#{@dictionaery.translate('what Lietal to_say',:lietal)}</td>
  <th>I speak a little</th><td>#{@dictionaery.translate('few to_say',:lietal)}</td>
</tr>
<tr>
  <th>What is your name?</th><td>#{@dictionaery.translate('what your name',:lietal)}</td>
  <th>My name is Lucas</th><td>#{@dictionaery.translate('my name Lucas',:lietal)}</td>
</tr>
</table>

<h3>Building A Sentence</h3>
<p>Let's look at this example.</p>
<code><comment># Will you read the book at home tomorrow?</comment>
tomorrow - home at book read will?
#{@dictionaery.translate('tomorrow - home at book to_read potential_future',:lietal)}?</code>

<p>And its answer.</p>
<code><comment># No, I won't be able to, maybe today.</comment>
no I read won't be able to. today maybe.
#{@dictionaery.translate('no to_read negative_potential_future',:lietal)}. #{@dictionaery.translate('today potential_future',:lietal)}.</code>
"
    return html

  end

end