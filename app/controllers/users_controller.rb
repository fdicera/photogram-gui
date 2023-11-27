class UsersController < ApplicationController
  def index
    mathing_users = User.all
    @list_of_users = mathing_users.order({ :username => :asc})
    render({ :template => "user_templates/index"})
  end

  def show
    #Parameters: {"path_username"=>"anisa"}
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.at(0)
    #if the_user == nil redirect_to("/404") else render... end

    render({ :template => "user_templates/show"})
  end

  def create
    a_new_user = User.new
    a_new_user.username = params.fetch("input_username")
    a_new_user.save
    next_url = "/users/" + a_new_user.username
    redirect_to(next_url)
  end
  
end
