### [Introduction](https://www.theodinproject.com/lessons/ruby-conditional-logic#introduction)

This lesson is all about controlling the flow of your code. When you have some code that you only want to execute under specific conditions, you will need a way for the computer to check whether those conditions have been met. Conditional logic can be found everywhere in everyday life. Ever had to tidy your room before being allowed to play video games? That’s your mother setting up a nice conditional statement that might look like this in a computer program…

### [Lesson overview](https://www.theodinproject.com/lessons/ruby-conditional-logic#lesson-overview)

This section contains a general overview of topics that you will learn in this lesson.

- Describe and list falsy values.
- Explain how to use `if`, `elsif`, and `else`.
- Explain the difference between `if` and `unless`.
- Describe what `||`, `&&`, and `!` do.
- Explain what short circuit evaluation is.
- Describe what the ternary operator is and how to use it.
- Explain what a `case` statement is and how it works.

### [Truthy and falsy in Ruby](https://www.theodinproject.com/lessons/ruby-conditional-logic#truthy-and-falsy-in-ruby)

You already know that conditional statements check expressions for a true or false value, so it follows that you need to understand what Ruby considers to be true or false. In typical Ruby fashion, it’s very simple. The only false values in Ruby are the values `nil` and `false` themselves. That’s it! Everything else is considered true. Even the string `"false"` is true in conditional expressions! If you have experience with other programming languages, you might be familiar with the number 0 or an empty string (“”) being equivalent to false. This isn’t the case with Ruby, so be careful when writing those expressions. Otherwise, you might end up with more bugs on your screen than if you were using light mode at midnight.

### [Basic conditional statement](https://www.theodinproject.com/lessons/ruby-conditional-logic#basic-conditional-statement)

The simplest way to control the flow of your code using conditionals is with the `if` statement.

The general syntax of an `if` statement is shown here:

```ruby
if statement_to_be_evaluated == true
  # do something awesome...
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
#=> Hot diggity, 1 is less than 2!
```
If there is only one line of code to be evaluated inside the block, then you can rewrite the code to be more succinct and take up only one line:

```ruby
puts "Hot diggity damn, 1 is less than 2" if 1 < 2
```
