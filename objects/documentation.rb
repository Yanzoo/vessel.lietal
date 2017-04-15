#!/bin/env ruby
# encoding: utf-8

  # Will you read the book at home tomorrow?
  # No, I won't be able to, maybe today.

class Documentation

  attr_accessor :path
  attr_accessor :dictionaery
  attr_accessor :aebeth

  def initialize path

    @path = path

  end

  def to_s
      
    return "
<h2>Basics</h2>
<code><comment>Welcome to the Lietal documentation.</comment>
#{@dictionaery.translate('hello lietal in documentation to_be',:lietal)}.</code>
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
<p>Lietal constructs are built of phonemes(aeths), and are named {_childspeak_}. They are rythmical and syllabic, but take quite a long time to say. </p>

<code><comment># Childspeak</comment>
#{@dictionaery.translate('tomorrow - house at book to_read potential_future',:lietal,false)}?
#{@dictionaery.translate('no to_read potential_negative_future',:lietal,false)}. #{@dictionaery.translate('today potential_future',:lietal, false)}.
</code>

<p>The childspeak is condensed into {_adultspeak_}, a phonetically compressed form of their larger childspeak equivalent. This documentation is written in adultspeak.</p>

<code><comment># Adultspeak</comment>
#{@dictionaery.translate('tomorrow - house at book to_read potential_future',:lietal,true)}?
#{@dictionaery.translate('no to_read potential_negative_future',:lietal,true)}. #{@dictionaery.translate('today potential_future',:lietal, true)}.
</code>

<table>
  <tr><td></td><th>Childspeak</th><th>Adultspeak</th></tr>
  <tr><th>When</th><td>#{@dictionaery.translate('when',:lietal).childspeak}</td><td>#{@dictionaery.translate('when',:lietal).adultspeak}</td></tr>
  <tr><th>Who</th><td>#{@dictionaery.translate('who',:lietal).childspeak}</td><td>#{@dictionaery.translate('who',:lietal).adultspeak}</td></tr>
  <tr><th>House</th><td>#{@dictionaery.translate('house',:lietal).childspeak}</td><td>#{@dictionaery.translate('house',:lietal).adultspeak}</td></tr>
</table>

<h2>The Aebeth</h2>
<p>The elemental particles of the language are the 9 core {_Aeths_}, atoms or building blocks of the {{Lietal}} word building.</p>
#{@aebeth.table}

<h2>Vocabulary</h2>

<h3>Question Words</h3>
<p>Question words are always used at the beginning of a sentence.</p>
<code><comment><b>Where</b> are you?</comment>
<b>#{@dictionaery.translate('where',:lietal)}</b> #{@dictionaery.translate('you to_be',:lietal)}?
</code>
#{$dictionaery.collect('question word')}

<h3>Pronouns</h3>
<p>Pronouns are often ommited when possible, by default, a sentence is expected to be at the first person if a pronoun has not already been declared.</p>
<code><comment>I give <b>you</b> the book.</comment>
#{@dictionaery.translate('book',:lietal)} <b>#{@dictionaery.translate('you',:lietal)}</b> #{@dictionaery.translate('to to_give',:lietal)} 
</code>
#{$dictionaery.collect('pronoun')}

<h3>Tenses</h3>
<p>A Lietal sentence is, by default, at the present tense. The present tense marker is used to contrast against an already defined tense. Tenses markers are used at the end of the sentence.</p>
<code><comment>I <b>was</b> blind, but <b>now</b> I see.</comment>
#{@dictionaery.translate('to_see',:lietal)} <b>#{@dictionaery.translate('negative_past',:lietal)}</b>, #{@dictionaery.translate('to_see',:lietal)} <b>#{@dictionaery.translate('present',:lietal)}</b>.
</code>
#{$dictionaery.collect('time marker')}

<h3>Verbs</h3>
<p>Verbs are used at the end of a sentence, right before the tense marker. They are not conjugated. Verbs are generally built from the <i>#{@aebeth.aeth('interaction').phonetic(:default)}</i> family.</p>
<code><comment>I <b>took</b> the book, we can now <b>go</b> to school.</comment>
#{@dictionaery.translate('book',:lietal)} <b>#{@dictionaery.translate('to_take',:lietal)}</b> #{@dictionaery.translate('past',:lietal)}, #{@dictionaery.translate('we school toward',:lietal)} <b>#{@dictionaery.translate('to_go',:lietal)}</b> #{@dictionaery.translate('potential_present',:lietal)}.
</code>
#{$dictionaery.collect('interaction')}

<h3>Prepositions</h3>
<p>Lietal prepositions are aeths used as particles, placed after the word that they affect.</p>
<code><comment>I'm going <b>to</b> the house by the lake, near the city.</comment>
#{@dictionaery.translate('house',:lietal)} <b>#{@dictionaery.translate('toward',:lietal)}</b> #{@dictionaery.translate('lake at city near to_go',:lietal)}
</code>
#{$dictionaery.collect('Preposition',4)}

<h3>Colors</h3>
<p>Colors are built by combining <i>#{@dictionaery.translate('speed',:lietal)}(speed)</i> and <i>#{@dictionaery.translate('color',:lietal)}(color)</i>.</p>
#{$dictionaery.collect('Color',3)}

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
  <th>Speak to me in Lietal</th><td>#{@dictionaery.translate('Lietal with to_say imperative_present',:lietal)}</td>
  <th>Please, say that again</th><td>#{@dictionaery.translate('Please again to_say',:lietal)}</td>
</tr>
<tr>
  <th>Do you speak Lietal?</th><td>#{@dictionaery.translate('Lietal to_say potential_present',:lietal)}?</td>
  <th>Yes, I speak a little</th><td>#{@dictionaery.translate('yes - few to_say potential_present',:lietal)}</td>
</tr>
<tr>
  <th>What is your name?</th><td>#{@dictionaery.translate('what name to_be',:lietal)}?</td>
  <th>My name is Lucas</th><td>#{@dictionaery.translate('name Lucas to_be',:lietal)}</td>
</tr>
</table>

<h3>Little Red Riding Hood</h3>
<div style='background:white; padding:15px; margin-bottom:30px'>
  Whenever she went out, the little girl wore a red riding cloak, so everyone in the village called her <i>Little Red Riding Hood</i>.
  One morning, Little Red Riding Hood asked her mother if she could go to visit her grandmother as it had been awhile since they'd seen each other.<br /><br />
  \"That's a good idea,\" her mother said.<br /><br />
  So they packed a nice basket for Little Red Riding Hood to take to her grandmother. When the basket was ready, the little girl put on her red cloak and kissed her mother goodbye.<br /><br />
  <b>\"Remember, go straight to Grandma's house\"</b>, her mother cautioned. \"Don't dawdle along the way and please don't talk to strangers! The woods are dangerous.\"<br />
</div>
<h3>#{@dictionaery.translate('small red hood to_walk',:lietal)}</h3>
<div style='background:white; padding:15px; margin-bottom:30px'>
  #{@dictionaery.translate('whenever he_she outside to_be',:lietal).capitalize},
  #{@dictionaery.translate('small woman red hood to_wear',:lietal)}, 
  <i>#{@dictionaery.translate('small red hood to_walk',:lietal).capitalize}</i>
  #{@dictionaery.translate('everyone to_name past',:lietal)}.

  #{@dictionaery.translate('when morning',:lietal)}, 
  #{@dictionaery.translate('small red hood to_walk',:lietal)} 
  #{@dictionaery.translate('grandmother at to_go potential_future',:lietal)}, 
  #{@dictionaery.translate('many time to_see potential_negative_past',:lietal)}, 
  #{@dictionaery.translate('mother his_her to_ask',:lietal)}.<br /><br />

  \"#{@dictionaery.translate('good idea to_be',:lietal)},\" #{@dictionaery.translate('mother his_her to_say past',:lietal)}.<br /><br />

  #{@dictionaery.translate('grandmother at to_hold small red hood for pretty basket to_combine past',:lietal)}.
  #{@dictionaery.translate('when basket ready to_be',:lietal)},
  #{@dictionaery.translate('red cloak to_wear',:lietal)} - #{@dictionaery.translate('mother bye kiss to_give',:lietal)}.<br /></br/>
  <b>\"#{@dictionaery.translate('to_remember imperative_present',:lietal)}, #{@dictionaery.translate('grandmother house at directly to_go',:lietal)}\"</b>, #{@dictionaery.translate('mother to_warn',:lietal)}. \"#{@dictionaery.translate('path under time to_waste imperative_negative_present',:lietal)}! #{@dictionaery.translate('woods dangerous to_be',:lietal)}.\"<br />
</div>

<h2>Development</h2>
<h3>Contribute</h3>

<p>You can improve this documentation by the means of {_pull requests_} on {{documentation.rb|http://github.com/XXIIVV/vessel.lietal/blob/master/objects/documentation.rb}}, and you can add new words with {{dictionaery.mh|http://github.com/XXIIVV/vessel.lietal/blob/master/memory/dictionaery.mh}}.</p>
"

  end

end