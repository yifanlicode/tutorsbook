class HomeController < ApplicationController
  
  
  def index
  end

  def about
    @about_me = <<-ABOUT_ME
      Hi there! My name is Yifan, and I am a full-stack development student at Red River 
      College Polytechnic in Winnipeg, MB. This is my first Ruby on Rails application.
     I hope you like it!Feel free to email(yifanlicode@gmail.com) me.
    ABOUT_ME

  end
  
end
