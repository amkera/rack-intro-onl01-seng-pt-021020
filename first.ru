require 'rack'

#Instances of Proc that automatically have a call methof that runs the block that they're initialized with. 

my_server = Proc.new do 
  [200, {'Content-Type' => 'text/html'}, ['<em>Hello</em>']]
end 

run my_server 

#All this method needs to do is return an Array with three elements:

#1. An HTTP Status code where 200 is used for OK
A Hash with a "Content-Type" key that returns the value (for HTML-based documents) of text/html
Something that responds to each which contains the multiple lines of a document of the "Content-Type"'s type (here, Strings that look like HTML: "<p>Like this!</p>". The most common "each-able" thing is an Array