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
    
    index = Index.new

    html = "
#{index.add(:root,:basics)}
<code><comment>Welcome to the Lietal documentation.</comment>
#{@dictionaery.construct('welcome here.to_be lietal.documentation')}</code>

#{index.add(:basics,:phonology)}
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

#{index.add(:basics,:morphology)}
<p>Building words from Lietal's phonemes is called {_childspeak_}. It makes for rythmical and syllabic words, but which take quite a long time to say. This documentation uses the phonetically denser {_adultspeak_}.</p>
<p>Single syllable words are reversed, so {_#{@dictionaery.translate('no',:lietal).childspeak}_} becomes {_#{@dictionaery.translate('no',:lietal).adultspeak}_}. Vowel sequences, like {_#{@dictionaery.translate('he_she',:lietal).childspeak}_}, are condensed into {_#{@dictionaery.translate('he_she',:lietal).adultspeak}_}. Consonant sequences, like {_#{@dictionaery.translate('grey',:lietal).childspeak}_}, are condensed into {_#{@dictionaery.translate('grey',:lietal).adultspeak}_}. </p>
<table>
  <tr><td></td><th>Childspeak</th><th>Adultspeak</th></tr>
  <tr><th>Yes</th><td>#{@dictionaery.translate('yes',:lietal).childspeak}</td><td>#{@dictionaery.translate('yes',:lietal).adultspeak}</td></tr>
  <tr><th>Who</th><td>#{@dictionaery.translate('who',:lietal).childspeak}</td><td>#{@dictionaery.translate('who',:lietal).adultspeak}</td></tr>
  <tr><th>Outside</th><td>#{@dictionaery.translate('outside',:lietal).childspeak}</td><td>#{@dictionaery.translate('outside',:lietal).adultspeak}</td></tr>
  <tr><th>To Read</th><td>#{@dictionaery.translate('to_read',:lietal).childspeak}</td><td>#{@dictionaery.translate('to_read',:lietal).adultspeak}</td></tr>
  <tr><th>Whenever</th><td>#{@dictionaery.translate('whenever',:lietal).childspeak}</td><td>#{@dictionaery.translate('whenever',:lietal).adultspeak}</td></tr>
</table>

#{index.add(:root,:aebeth)}
<p>The {_Aebeth_} is a collection of 9 elementary particles, or {_Aeths_}, used to build all {{Lietal}} words. The Aeths are made of a key(consonant) and one of the 6 values(vowels).</p>
#{@aebeth.table}

#{index.add(:root,:vocabulary)}

#{index.add(:vocabulary,:pronouns)}
<p>Usually, a sentence is expected to be at the first person if a pronoun has not already been declared, pronouns are often ommited when possible.</p>
#{@dictionaery.side_by_side('you','I give you the book.','you','to_give you book')}
#{$dictionaery.collect('pronoun')}

#{index.add(:vocabulary,:questions)}
<p>Question words are used as a parameter to a verb.</p>
#{@dictionaery.side_by_side('where','where are you?','where','you.to_be where')}
#{$dictionaery.collect('question word')}

#{index.add(:vocabulary,:tenses)}
<p>A Lietal sentence is, by default, at the present tense. The present tense marker is used to contrast against an already defined tense. Tenses markers are used at the end of the sentence.</p>
#{@dictionaery.side_by_side('could not','I could not go to school.','negative_past','to_go.negative_past school')}
#{$dictionaery.collect('time marker')}

#{index.add(:vocabulary,:verbs)}
<p>Verbs are used at the end of a sentence, right before the tense marker. They are not conjugated. Verbs are generally built from the <i>#{@aebeth.aeth('interaction').phonetic(:default)}</i> family.</p>
#{@dictionaery.side_by_side('take','I will take the book home.','to_take','house.to ! to_take.future book')}
#{$dictionaery.collect('interaction')}

#{index.add(:vocabulary,:prepositions)}
<p>Lietal prepositions are aeths used as particles, placed after the word that they affect.</p>
#{@dictionaery.side_by_side('to','I am going to the house in the city.','inside','to_go.future city.house.inside')}
#{$dictionaery.collect('Preposition',4)}

#{index.add(:vocabulary,:colors)}
<p>Colors are built by combining <i>#{@dictionaery.translate('speed',:lietal)}(speed)</i> and <i>#{@dictionaery.translate('color',:lietal)}(color)</i>.</p>
#{@dictionaery.side_by_side('red','yellow is between red and green.','red','yellow.to_be [ red & green ].between')}
#{$dictionaery.collect('Color',3)}

#{index.add(:vocabulary,:numbers)}
<p>Numbers are built by combining <i>#{@dictionaery.translate('counter',:lietal)}(counter)</i> and <i>#{@dictionaery.translate('relation',:lietal)}(relation)</i>. When base10 is used, eleven is not used.</p>
<code><comment>23</comment> #{@dictionaery.construct('10.2 3')}<comment>341</comment> #{@dictionaery.construct('100.3 COLLECTION_POP.5 1')}<comment>1782</comment> #{@dictionaery.construct('1000 COLLECTION_POP.7 COLLECTION_POP.8 2')}<comment>900'780</comment> #{@dictionaery.construct('100\'000.9 100.7 COLLECTION_POP.8')}</code>
#{$dictionaery.collect('Number',4)}
<p>When going through a long number, one can choose to use #{@dictionaery.translate('COLLECTION_POP',:lietal)} instead of the next immediate zero.</p>
<code><comment>29'600'000</comment> #{@dictionaery.construct('10\'000\'000.2 1\'000\'000.9 100\'000.6')}<comment>29'600'000</comment> #{@dictionaery.construct('10\'000\'000.2 COLLECTION_POP.9 COLLECTION_POP.6')}</code>
<p>When one wants to talk about mathematics.</p>
<code><comment>2 + 4 + 6</comment> #{@dictionaery.construct('to_add [ 2 & 4 & 6 ]')}<comment>2.64</comment> #{@dictionaery.construct('2.children 10.6 4')}<comment>2 / 6 = 3</comment> #{@dictionaery.construct('to_divide [ 2 & 6 ] ! to_be 3')}<comment>2 - 6 = -4</comment> #{@dictionaery.construct('to_substract [ 2 & 6 ] ! to_be 3.negative')}</code>

#{index.add(:vocabulary,"foreign words")}
<p>People's names, or words without Lietal equivalence, are usually Lietalized, which is the process of spelling foreign words with lietal constructs.</p>
#{$dictionaery.collect('Foreign',3)}

#{index.add(:root,:grammar)}
<p>The grammar is akin to that of an object oriented programming language, look at the follow sentence and observe how even parenteses have phonetics attached.</p>

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

#{index.add(:grammar,:construction)}
#{@dictionaery.side_by_side('name','My name is Lucas.','name','name.to_be Lucas')}

<p>Notice how the pronoun was ommited, in return if you want to address another person. This will have the effect of saying something like \"But {_your_} name is Lucas.\"</p>
#{@dictionaery.side_by_side('name','Your name is Lucas.','name','You.name.to_be Lucas')}

<p>Now let us look at how the tenses are used as the method of an action.</p>
#{@dictionaery.side_by_side('call','Call me Lucas.','to_name','to_name.imperative I Lucas')}

#{index.add(:grammar,:collections)}
<p>Sequences of things can be grouped together into collections and used as a single entity.</p>
#{@dictionaery.side_by_side('house','The house is red and blue','house','house.to_be [ red & blue ]')}

<p>Below is another example with a different sentence structure.</p>
#{@dictionaery.side_by_side('house','The red and blue house is small.','house','house [ red & blue ].to_be small')}

<p>Numbers are also using collections</p>
#{@dictionaery.side_by_side('address','The address is two hundred twenty three.','name','house.name [ 100.2 10.3 4 ]')}

#{index.add(:grammar,:settings)}
<p>Settings are the environment of the sentence, it preceeds a sentence.</p>
#{@dictionaery.side_by_side('tomorrow','I will go to school tomorrow.','tomorrow','tomorrow ! to_go.future library')}

<p>Here is the usage of a collection as the settings.</p>
#{@dictionaery.side_by_side('tomorrow','I will go to school, either today or tomorrow.','tomorrow','[ today | tomorrow ] ! to_go.future library')}

#{index.add(:grammar,:summary)}
<p>Here is an example including all of the previous lessons.</p>
#{@dictionaery.side_by_side('tomorrow','Tomorrow, I might go to either the school, home or to the library','tomorrow','tomorrow ! to_go.potential_future [ school | house | library ]')}

#{index.add(:root,:practice)}

#{index.add(:practice,:introduction)}
<p>Below is the translation of a segment of the Little Red Riding Hood, try to see if you can make sense of it.</p>

#{index.add(:practice,:vocabulary)}
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
</table>

#{index.add(:practice,@dictionaery.construct('Cloak little red to_walk'))}
#{@dictionaery.side_by_side_large('little_riding_hood.mh')}

#{index.add(:root,:development)}
#{index.add(:development,:contribute)}
<p>You can improve this documentation by the means of {_pull requests_} on {{documentation.rb|http://github.com/XXIIVV/vessel.lietal/blob/master/objects/documentation.rb}}, and you can add new words with {{dictionaery.mh|http://github.com/XXIIVV/vessel.lietal/blob/master/memory/dictionaery.mh}}.</p>
"
  
  return index.to_s+html

  end

end