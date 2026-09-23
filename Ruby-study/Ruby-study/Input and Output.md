### [Introduction](https://www.theodinproject.com/lessons/ruby-input-and-output#introduction)

To create programs that are user friendly and interactive, you’ll need to know how to **output** data to a screen and how to get **input** from a user. In this lesson, we’ll cover the most common ways to achieve these tasks in Ruby. As with other lessons, and this one in particular, following along in irb or an appropriate online REPL will be helpful.

### [Lesson overview](https://www.theodinproject.com/lessons/ruby-input-and-output#lesson-overview)

This section contains a general overview of topics that you will learn in this lesson.

- Differentiate between the `print` and `puts` commands.
- Describe the method used to get input from the user

## Opening and Closing Files

Until now, you have been reading and writing to the standard input and output. Now, we will see how to play with actual data files.

## The File.new Method

You can create a _File_ object using _File.new_ method for reading, writing, or both, according to the mode string. Finally, you can use _File.close_ method to close that file.

# Syntax
```ruby
aFile = File.new("filename", "mode")
   # ... process the file
aFile.close
```

## The File.open Method

You can use _File.open_ method to create a new file object and assign that file object to a file. However, there is one difference in between _File.open_ and _File.new_ methods. The difference is that the _File.open_ method can be associated with a block, whereas you cannot do the same using the _File.new_ method.

```ruby
File.open("filename", "mode") do |aFile| # ... process the file end
```
