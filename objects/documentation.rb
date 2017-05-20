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
<p>Lietal is written from left to right with implicit neutrality, singularity and under the present tense. For the most part, its 6 vowels and 9 consonants are voiced similarly to their english equivalents. </p>
<table>
<tr>
  <th colspan='6'>6 Vowels</th>
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
  <th colspan='6'>9 Consonants</th>
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
<p>Building words from Lietal's phonemes is called {_childspeak_}. It makes for rythmical and syllabic words, but which take quite a long time to say. </p>

<p>In this documentation, {_childspeak_} is condensed into the phonetically denser form named{_adultspeak_}.</p>

<table>
  <tr><td></td><th>Childspeak</th><th>Adultspeak</th></tr>
  <tr><th>Who</th><td>#{@dictionaery.translate('who',:lietal).childspeak}</td><td>#{@dictionaery.translate('who',:lietal).adultspeak}</td></tr>
  <tr><th>Outside</th><td>#{@dictionaery.translate('outside',:lietal).childspeak}</td><td>#{@dictionaery.translate('outside',:lietal).adultspeak}</td></tr>
  <tr><th>House</th><td>#{@dictionaery.translate('house',:lietal).childspeak}</td><td>#{@dictionaery.translate('house',:lietal).adultspeak}</td></tr>
  <tr><th>To Read</th><td>#{@dictionaery.translate('to_read',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_read',:lietal).adultspeak}</td></tr>
  <tr><th>Everyone</th><td>#{@dictionaery.translate('everyone',:lietal).childspeak}</td><td>#{@dictionaery.translate('everyone',:lietal).adultspeak}</td></tr>
</table>

<h2>The Aebeth</h2>
<p>The {_Aebeth_} is a collection of 9 elementary particles, or {_Aeths_}, used to build all {{Lietal}} words. The Aeths are made of a key(consonant) and one of the 6 values(vowels).</p>
#{@aebeth.table}

<h2>Vocabulary</h2>

<h3>Pronouns</h3>
<p>Usually, a sentence is expected to be at the first person if a pronoun has not already been declared, pronouns are often ommited when possible.</p>
#{@dictionaery.side_by_side('you','I give you the book.','you','I.to_give you book')}
#{$dictionaery.collect('pronoun')}

<h3>Question Words</h3>
<p>Question words are used as a parameter to a verb.</p>
#{@dictionaery.side_by_side('where','where are you?','where','you.to_be where')}
#{$dictionaery.collect('question word')}

<h3>Tenses</h3>
<p>A Lietal sentence is, by default, at the present tense. The present tense marker is used to contrast against an already defined tense. Tenses markers are used at the end of the sentence.</p>
#{@dictionaery.side_by_side('could not','I could not go to school.','negative_past','to_go.negative_past school')}
#{$dictionaery.collect('time marker')}

<h3>Verbs</h3>
<p>Verbs are used at the end of a sentence, right before the tense marker. They are not conjugated. Verbs are generally built from the <i>#{@aebeth.aeth('interaction').phonetic(:default)}</i> family.</p>
#{@dictionaery.side_by_side('take','I will take the book home.','to_take','house.to ! to_take.future book')}
#{$dictionaery.collect('interaction')}

<h3>Prepositions</h3>
<p>Lietal prepositions are aeths used as particles, placed after the word that they affect.</p>
#{@dictionaery.side_by_side('to','I am going to the house in the city.','inside','to_go.future city.house.inside')}
#{$dictionaery.collect('Preposition',4)}

<h3>Colors</h3>
<p>Colors are built by combining <i>#{@dictionaery.translate('speed',:lietal)}(speed)</i> and <i>#{@dictionaery.translate('color',:lietal)}(color)</i>.</p>
#{@dictionaery.side_by_side('red','yellow is between red and green.','red','yellow.to_be [ red & green ].between')}
#{$dictionaery.collect('Color',3)}

<h3>Numbers</h3>
<p>Numbers are built by combining <i>#{@dictionaery.translate('counter',:lietal)}(counter)</i> and <i>#{@dictionaery.translate('relation',:lietal)}(relation)</i>. When base10 is used, eleven is not used.</p>
<code><comment>23</comment> #{@dictionaery.construct('10.2 3')}<comment>341</comment> #{@dictionaery.construct('100.3 COLLECTION_POP.5 1')}<comment>1782</comment> #{@dictionaery.construct('1000 COLLECTION_POP.7 COLLECTION_POP.8 2')}<comment>900'780</comment> #{@dictionaery.construct('100\'000.9 100.7 COLLECTION_POP.8')}</code>
#{$dictionaery.collect('Number',4)}
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

<h2>Practice</h2>
<p>Below is the translation of a segment of the Little Red Riding Hood, try to see if you can make sense of it.</p>

<h3>Vocabulary</h3>
<table>
<tr>
  <th></th><th>Childspeak</th><th>Adultspeak</th>
  <th></th><th>Childspeak</th><th>Adultspeak</th>
</tr>
<tr>
  <th>Grandmother</th><td>#{@dictionaery.translate('grandmother',:lietal).childspeak}</td><td>#{@dictionaery.translate('grandmother',:lietal)}</td>
  <th>Mother</th><td>#{@dictionaery.translate('mother',:lietal).childspeak}</td><td>#{@dictionaery.translate('mother',:lietal)}</td>
</tr>
<tr>
  <th>Stranger</th><td>#{@dictionaery.translate('stranger',:lietal).childspeak}</td><td>#{@dictionaery.translate('stranger',:lietal)}</td>
  <th>Woods</th><td>#{@dictionaery.translate('woods',:lietal).childspeak}</td><td>#{@dictionaery.translate('woods',:lietal)}</td>
</tr>
<tr>
  <th>Basket</th><td>#{@dictionaery.translate('basket',:lietal).childspeak}</td><td>#{@dictionaery.translate('basket',:lietal)}</td>
  <th>Cloak</th><td>#{@dictionaery.translate('cloak',:lietal).childspeak}</td><td>#{@dictionaery.translate('cloak',:lietal)}</td>
</tr>
<tr>
  <th>To wear</th><td>#{@dictionaery.translate('to_wear',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_wear',:lietal)}</td>
  <th>To say</th><td>#{@dictionaery.translate('to_say',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_say',:lietal)}</td>
</tr>
<tr>
  <th>To warn</th><td>#{@dictionaery.translate('to_warn',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_warn',:lietal)}</td>
  <th>To waste</th><td>#{@dictionaery.translate('to_waste',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_waste',:lietal)}</td>
</tr>
</table>

<h3>Little Red Riding Hood</h3>
<code>#{@lrrh[:english]}</code>
<h3>#{@dictionaery.construct('Cloak [ little & red ]')}</h3>
<p>#{@dictionaery.construct(@lrrh[:construction])}</p>

<h2>Development</h2>
<h3>Contribute</h3>

<p>You can improve this documentation by the means of {_pull requests_} on {{documentation.rb|http://github.com/XXIIVV/vessel.lietal/blob/master/objects/documentation.rb}}, and you can add new words with {{dictionaery.mh|http://github.com/XXIIVV/vessel.lietal/blob/master/memory/dictionaery.mh}}.</p>
"

  end

end