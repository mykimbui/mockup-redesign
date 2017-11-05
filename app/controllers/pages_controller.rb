class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @navbardark = true
  end

  def something
    render :layout => 'new_layout'
  end

end
