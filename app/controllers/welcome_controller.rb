class WelcomeController < ApplicationController


  def index
    render :text => "Welcome "
  end

  def name
    render :text => "Welcome " + params[:name]
  end

  def ipsum
    if params[:name].downcase == "standard"
      text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at lectus tristique nisi imperdiet laoreet eget eu nibh. Vivamus nec ultricies felis, vitae rhoncus magna. Donec ut risus et elit tincidunt volutpat. Sed pellentesque leo quis enim accumsan pretium. Duis sit amet odio et urna eleifend varius tincidunt quis ipsum. Donec varius efficitur suscipit. Pellentesque vehicula a enim cursus sodales. In posuere diam elementum malesuada rutrum. Praesent sed lobortis nunc, in vestibulum orci. Mauris vitae lectus tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mollis tellus ut magna tristique, fringilla scelerisque augue laoreet. Morbi convallis ex risus, quis mattis lectus elementum vitae. Donec eu arcu at orci blandit venenatis."
    elsif params[:name].downcase == "samuel"
      text = "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."
    elsif params[:name].downcase == "bacon"
      text = "Bacon ipsum dolor amet venison landjaeger jowl tenderloin. Venison short ribs leberkas turkey porchetta pork belly. Cupim kielbasa frankfurter, shank turkey fatback bresaola shoulder venison tongue doner tail hamburger. Shankle sirloin shank bresaola strip steak, swine ball tip. Corned beef turkey filet mignon meatloaf biltong."
    else
      params[:name].blank?
        text = "Hello there mate! "
    end
          render :text => text

    end

end
