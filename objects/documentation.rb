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
    @lrrh = Memory_Hash.new("little_riding_hood",@path).to_h
    @lrrh[:english] = @lrrh["ENGLISH"].join("\n")
    @lrrh[:construction] = @lrrh["CONSTRUCTION"].join("\n")

  end

  def to_s
    
    return "
<h2>Basics</h2>
<code><comment>Welcome to the Lietal documentation.</comment>
#{@dictionaery.construct('welcome here.to_be lietal.documentation')}</code>
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

<p>The childspeak is condensed into {_adultspeak_}, a phonetically compressed form of their larger childspeak equivalent. This documentation is written in adultspeak.</p>

<table>
  <tr><td></td><th>Childspeak</th><th>Adultspeak</th></tr>
  <tr><th>Who</th><td>#{@dictionaery.translate('who',:lietal).childspeak}</td><td>#{@dictionaery.translate('who',:lietal).adultspeak}</td></tr>
  <tr><th>To Add</th><td>#{@dictionaery.translate('to_add',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_add',:lietal).adultspeak}</td></tr>
  <tr><th>Outside</th><td>#{@dictionaery.translate('outside',:lietal).childspeak}</td><td>#{@dictionaery.translate('outside',:lietal).adultspeak}</td></tr>
  <tr><th>Your</th><td>#{@dictionaery.translate('your',:lietal).childspeak}</td><td>#{@dictionaery.translate('your',:lietal).adultspeak}</td></tr>
  <tr><th>House</th><td>#{@dictionaery.translate('house',:lietal).childspeak}</td><td>#{@dictionaery.translate('house',:lietal).adultspeak}</td></tr>
  <tr><th>To Read</th><td>#{@dictionaery.translate('to_read',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_read',:lietal).adultspeak}</td></tr>
  <tr><th>Everyone</th><td>#{@dictionaery.translate('everyone',:lietal).childspeak}</td><td>#{@dictionaery.translate('everyone',:lietal).adultspeak}</td></tr>
</table>

<h2>The Aebeth</h2>
<p>The elemental particles of the language are the 9 core {_Aeths_}, atoms or building blocks of the {{Lietal}} word building.</p>
#{@aebeth.table}

<h2>Vocabulary</h2>

<h3>Question Words</h3>
<p>Question words are always used at the beginning of a sentence.</p>
<code><comment><b>Where</b> are you?</comment>
#{@dictionaery.construct('you.to_be where')}</code>
#{$dictionaery.collect('question word')}

<h3>Pronouns</h3>
<p>Pronouns are often ommited when possible, by default, a sentence is expected to be at the first person if a pronoun has not already been declared.</p>
<code><comment>I give <b>you</b> the book.</comment>
#{@dictionaery.construct('I.to_give you book')}</code>
#{$dictionaery.collect('pronoun')}

<h3>Tenses</h3>
<p>A Lietal sentence is, by default, at the present tense. The present tense marker is used to contrast against an already defined tense. Tenses markers are used at the end of the sentence.</p>
<code><comment>I <b>was</b> blind, but <b>now</b> I see.</comment>
#{@dictionaery.construct('to_see.negative_past ! to_see.potential_present')}</code>
#{$dictionaery.collect('time marker')}

<h3>Verbs</h3>
<p>Verbs are used at the end of a sentence, right before the tense marker. They are not conjugated. Verbs are generally built from the <i>#{@aebeth.aeth('interaction').phonetic(:default)}</i> family.</p>
<code><comment>I <b>took</b> the book, we can now <b>go</b> to school.</comment>
#{@dictionaery.construct('to_take.past book ! we.to_go.potential_future school')}</code>
</code>
#{$dictionaery.collect('interaction')}

<h3>Prepositions</h3>
<p>Lietal prepositions are aeths used as particles, placed after the word that they affect.</p>
<code><comment>I'm going <b>to</b> the house by the lake, near the city.</comment>
#{@dictionaery.construct('city.near ! to_go.future lake.house')}</code>
#{$dictionaery.collect('Preposition',4)}

<h3>Colors</h3>
<p>Colors are built by combining <i>#{@dictionaery.translate('speed',:lietal)}(speed)</i> and <i>#{@dictionaery.translate('color',:lietal)}(color)</i>.</p>
#{$dictionaery.collect('Color',3)}

<h3>Numbers</h3>
<p>Numbers are built by combining <i>#{@dictionaery.translate('counter',:lietal)}(counter)</i> and <i>#{@dictionaery.translate('relation',:lietal)}(relation)</i>. When base10 is used, eleven is not used.</p>
#{$dictionaery.collect('Number',4)}
<code><comment>23</comment> #{@dictionaery.construct('10.2 3')}<comment>341</comment> #{@dictionaery.construct('100.3 COLLECTION_POP.5 1')}<comment>1782</comment> #{@dictionaery.construct('1000 COLLECTION_POP.7 COLLECTION_POP.8 2')}<comment>900'780</comment> #{@dictionaery.construct('100\'000.9 100.7 COLLECTION_POP.8')}</code>
<p>When going through a long number, one can choose to use #{@dictionaery.translate('COLLECTION_POP',:lietal)} instead of the next immediate zero.</p>
<code><comment>29'600'000</comment> #{@dictionaery.construct('10\'000\'000.2 1\'000\'000.9 100\'000.6')}<comment>29'600'000</comment> #{@dictionaery.construct('10\'000\'000.2 COLLECTION_POP.9 COLLECTION_POP.6')}</code>
<p>When one wants to talk about mathematics.</p>
<code><comment>2 + 4 + 6</comment> #{@dictionaery.construct('to_add [ 2 & 4 & 6 ]')}<comment>2.64</comment> #{@dictionaery.construct('2.children 10.6 4')}<comment>2 / 6 = 3</comment> #{@dictionaery.construct('to_divide [ 2 & 6 ] ! to_be 3')}<comment>2 - 6 = -4</comment> #{@dictionaery.construct('to_substract [ 2 & 6 ] ! to_be 3.negative')}</code>
<h2>Grammar</h2>

<p>The grammar is akin to that of an object oriented programming language, look at the follow sentence and observe how even parenteses have phonetics attached.</p>

<code><comment># English</comment>
You wake up in a room, 
surrounded by white unbreakable walls. 
<comment># Construction</comment>
Room.inside ! You.to_become aware
Room.wall [ white & unbreakable ] ! to_be inside
<comment># Lietal</comment>
#{@dictionaery.construct('Room.inside ! You.to_become aware
Room.wall [ white & unbreakable ] ! to_be inside')}</code>

<h3>Common Sentences</h3>
<table>
<tr>
  <th>Welcome</th><td>#{@dictionaery.construct('Hello')}</td>
  <th>Goodbye</th><td>#{@dictionaery.construct('Bye')}</td>
</tr>
<tr>
  <th>Yes, I understand</th><td>#{@dictionaery.construct('Yes to_understand.potential')}</td>
  <th>No, I don't understand</th><td>#{@dictionaery.construct('No to_understand.negative')}</td>
</tr>
<tr>
  <th>Speak to me in Lietal</th><td>#{@dictionaery.construct('to_speak.imperative Lietal')}</td>
  <th>Please, say that again</th><td>#{@dictionaery.construct('Please to_say.imperative again')}</td>
</tr>
<tr>
  <th>Do you speak Lietal?</th><td>#{@dictionaery.construct('to_say.potential_present Lietal')}</td>
  <th>Yes, I speak a little</th><td>#{@dictionaery.construct('yes to_say.potential_present few')}</td>
</tr>
<tr>
  <th>What is your name?</th><td>#{@dictionaery.construct('name.to_be what')}</td>
  <th>My name is Lucas</th><td>#{@dictionaery.construct('name [ Lucas ]')}</td>
</tr>
</table>

<h3>Little Red Riding Hood</h3>
<code>#{@lrrh[:english]}</code>
<h3>#{@dictionaery.construct('Cloak [ little & red ]')}</h3>
<p>#{@dictionaery.construct(@lrrh[:construction])}</p>
<h3>Construction</h3>
<p>Below are the sentence construction for the previous phrases.</p>
<code>#{@lrrh[:construction]}</code>

<h3>Vocabulary</h3>
<table>
<tr>
  <th></th><th>Childspeak</th><th>Construction</th>
  <th></th><th>Childspeak</th><th>Construction</th>
</tr>
<tr>
  <th>Grandmother</th><td>#{@dictionaery.translate('grandmother',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('grandmother',:lietal).to_deconstruction}</td>
  <th>Mother</th><td>#{@dictionaery.translate('mother',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('mother',:lietal).to_deconstruction}</td>
</tr>
<tr>
  <th>Stranger</th><td>#{@dictionaery.translate('stranger',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('stranger',:lietal).to_deconstruction}</td>
  <th>Woods</th><td>#{@dictionaery.translate('woods',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('woods',:lietal).to_deconstruction}</td>
</tr>
<tr>
  <th>Basket</th><td>#{@dictionaery.translate('basket',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('basket',:lietal).to_deconstruction}</td>
  <th>Cloak</th><td>#{@dictionaery.translate('cloak',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('cloak',:lietal).to_deconstruction}</td>
</tr>
<tr>
  <th>To wear</th><td>#{@dictionaery.translate('to_wear',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('to_wear',:lietal).to_deconstruction}</td>
  <th>To say</th><td>#{@dictionaery.translate('to_say',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('to_say',:lietal).to_deconstruction}</td>
</tr>
<tr>
  <th>To warn</th><td>#{@dictionaery.translate('to_warn',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('to_warn',:lietal).to_deconstruction}</td>
  <th>To waste</th><td>#{@dictionaery.translate('to_waste',:lietal).childspeak}</td><td style='font-size:12px'>#{@dictionaery.translate('to_waste',:lietal).to_deconstruction}</td>
</tr>
</table>

<h2>Development</h2>
<h3>Contribute</h3>

<p>You can improve this documentation by the means of {_pull requests_} on {{documentation.rb|http://github.com/XXIIVV/vessel.lietal/blob/master/objects/documentation.rb}}, and you can add new words with {{dictionaery.mh|http://github.com/XXIIVV/vessel.lietal/blob/master/memory/dictionaery.mh}}.</p>
"

  end

end