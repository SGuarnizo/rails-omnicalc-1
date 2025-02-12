Rails.application.routes.draw do
  get("/", { :controller=>"zebra" , :action=>"cat"})
  get("/square/new", { :controller=>"zebra" , :action=>"giraffe"})
  get("/square_root/new", { :controller=>"zebra" , :action=>"butterfly"})
  get("/payment/new", { :controller=>"zebra" , :action=>"coyote"})
  get("/random/new", { :controller=>"zebra" , :action=>"pomeranian"})
  get("/square/results", { :controller=>"zebra" , :action=>"tiger"})
  get("/square_root/results", { :controller=>"zebra" , :action=>"dolphin"})
  get("/payment/results", { :controller=>"zebra" , :action=>"parrot"})
  get("/random/results", { :controller=>"zebra" , :action=>"elephant"})
  
end
