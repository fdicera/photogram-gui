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
end
