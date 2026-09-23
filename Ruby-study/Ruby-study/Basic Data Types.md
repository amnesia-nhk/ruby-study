Ruby is very object-oriented, which means that absolutely everything in Ruby is an object, even the most basic data types. We’ll start here with four of Ruby’s basic data types: numbers (integers and floats), strings, symbols, and Booleans (`true`, `false`, and `nil`).

### [Lesson overview](https://www.theodinproject.com/lessons/ruby-basic-data-types#lesson-overview)

This section contains a general overview of topics that you will learn in this lesson.

- List the basic arithmetic operators and what they do.
- Describe the difference between an integer and a float and how to convert between the two.
- Explain string interpolation and concatenation.
- Describe what escape characters are, and list several examples.
- Define what a symbol is and how it differs from a string.
- Explain what the Booleans `true`, `false`, and `nil` represent

### [Strings](https://www.theodinproject.com/lessons/ruby-basic-data-types#strings)

Strings, strings, wonderful things, use them well and…your app will…grow wings? Or something.

At first glance, you might think that strings are just a bunch of characters that aren’t very useful beyond getting user input and outputting some information to the screen, but like Burt Reynolds passing up the chance to play Han Solo, you’d be wrong. Very wrong. What were you thinking, Burt?

#### [Double and single quotation marks](https://www.theodinproject.com/lessons/ruby-basic-data-types#double-and-single-quotation-marks)

Strings can be formed with either double `""` or single`''` quotation marks, also known as _string literals_. They are pretty similar, but there are some differences. Specifically, string interpolation and the escape characters that we’ll discuss soon both only work inside double quotation marks, not single quotation marks.

#### [Concatenation](https://www.theodinproject.com/lessons/ruby-basic-data-types#concatenation)

In true Ruby style, there are plenty of ways to concatenate strings.
```ruby
# With the plus operator:
"Welcome " + "to " + "Odin!" #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!" #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!") #=> "Welcome to Odin!"
```

#### [Substrings](https://www.theodinproject.com/lessons/ruby-basic-data-types#substrings)

You can access strings inside strings. Stringception! It’s super easy, too.

```ruby
"hello"[0] #=> "h"

"hello"[0..1] #=> "he"

"hello"[0, 4] #=> "hell"

"hello"[-1] #=> "o"
```

#### [Escape characters](https://www.theodinproject.com/lessons/ruby-basic-data-types#escape-characters)

Escape characters allow you to type in representations of whitespace characters and to include quotation marks inside your string without accidentally ending it. As a reminder, escape characters only work inside double quotation marks.

```ruby
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
```

#### [Interpolation](https://www.theodinproject.com/lessons/ruby-basic-data-types#interpolation)

String interpolation allows you to evaluate a string that contains placeholder variables. This is a very useful and common technique, so you will likely find yourself using this often. Be sure to use double quotes so that string interpolation will work!

```ruby
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"
```

#### [Common string methods](https://www.theodinproject.com/lessons/ruby-basic-data-types#common-string-methods)

There are many useful string methods that are built into Ruby. You need to capitalize a word? No problem! Reverse a string? Easy peasy. Extract the binary subatomic algorithm from any regex grep? We don’t know, but since this is Ruby, let’s go with _YES_.

Just remember, strings have loads of methods provided to you for free, and you can find them all in the [Ruby docs for the String class](https://docs.ruby-lang.org/en/3.4/String.html). If you’re working with strings and need to do something, check the Ruby docs first and see if there’s a method that does it for you.

# capitalize
```ruby
"hello".capitalize #=> "Hello"
```
# include?
```ruby
"hello".include?("lo") #=> true

"hello".include?("z") #=> false
```
# upcase
```ruby
"hello".upcase #=> "HELLO"
```
# downcase
```ruby
"Hello".downcase #=> "hello"
```
# empty?
```ruby
"hello".empty? #=> false

"".empty? #=> true
```
# length
```ruby
"hello".length #=> 5
```
# reverse
```ruby
"hello".reverse #=> "olleh"
```
# split
```ruby
"hello world".split #=> ["hello", "world"]

"hello".split("") #=> ["h", "e", "l", "l", "o"]
```
# strip
```ruby
" hello, world   ".strip #=> "hello, world"
```

You’ll read more about these methods and others in the assignment. The examples below are just to get your creative juices flowing with some of the awesome ways you can modify strings.

```ruby
"he77o".sub("7", "l") #=> "hel7o"

"he77o".gsub("7", "l") #=> "hello"

"hello".insert(-1, " dude") #=> "hello dude"

"hello world".delete("l") #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"
```

The assignments will go much deeper, so go through them thoroughly and be sure to play around in a REPL as you read.

#### [Converting other objects to strings](https://www.theodinproject.com/lessons/ruby-basic-data-types#converting-other-objects-to-strings)

Using the `to_s` method, you can convert pretty much anything to a string. Here are some examples:
```ruby
5.to_s #=> "5"

nil.to_s #=> ""

:symbol.to_s #=> "symbol"
```
### [Symbols](https://www.theodinproject.com/lessons/ruby-basic-data-types#symbols)

Symbols are an interesting twist on the idea of a string. The full explanation can be a bit long, but here’s the short version:

Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. Symbols, on the other hand, are stored in memory only once, making them faster in certain situations.

One common application where symbols are preferred over strings are the keys in hashes. We’ll cover this in detail in the hashes lesson later in the course.

You won’t need to use symbols much in the beginning, but it’s good to get familiar with what they are and what they look like so that you can recognize them.

#### [Create a symbol](https://www.theodinproject.com/lessons/ruby-basic-data-types#create-a-symbol)

To create a symbol, put a colon at the beginning of some text:
```ruby
:my_symbol
```

#### [Symbols vs. strings](https://www.theodinproject.com/lessons/ruby-basic-data-types#symbols-vs-strings)

To get a better idea of how symbols are stored in memory, give this a whirl in irb or a REPL. The [`#object_id` method](https://docs.ruby-lang.org/en/3.4/Object.html#method-i-object_id) returns an integer identifier for an object. (And remember: in Ruby, _everything_ is an object!)

```ruby
"string" == "string" #=> true

"string".object_id == "string".object_id #=> false

:symbol.object_id == :symbol.object_id #=> true
```

### [Booleans](https://www.theodinproject.com/lessons/ruby-basic-data-types#booleans)

You will learn about these data types in more detail in the Conditional Logic lesson later in this course. The goal of this lesson is for you to get a basic understanding of what Booleans are.

#### [True and false](https://www.theodinproject.com/lessons/ruby-basic-data-types#true-and-false)

The Boolean values `true` and `false` represent exactly what you think they do: `true` represents something that is true, and `false` represents something that is false.

#### [Nil](https://www.theodinproject.com/lessons/ruby-basic-data-types#nil)

In Ruby, `nil` represents “nothing”. Everything in Ruby has a return value. When a piece of code doesn’t have anything to return, it will return `nil`. This is pretty abstract, but it will make more sense as you learn and use Ruby more.

