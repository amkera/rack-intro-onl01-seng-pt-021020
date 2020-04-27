require 'rack'

#Instances of Proc that automatically have a call methof that runs the block that they're initialized with. 

my_server = Proc.new do 
  [200, {'Content-Type' => 'text/html'}, ['<em>Hello</em>']]
end 

run my_server 