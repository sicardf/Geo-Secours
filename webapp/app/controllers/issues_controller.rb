class IssuesController < ApplicationController
  before_action :prevent_loc_ip, only: [:new]

  def new
    @issue =  Issue.new
    render layout: false
  end

  def create
    issue = Issue.new(issue_params)
    # issue = Issue.create(issue_params)
    issue.ip = session[:ip]
    issue.latitude = session[:lat]
    issue.longitude = session[:pos]
    if issue.save
      redirect_to get_more_info_path(issue)
    else
      flash[:error] = "Le problème n'a pas pu être pris en compte"
      redirect_to root_path
    end
    # redirect_to root_path
  end

  def get_more_info
    @issue = Issue.find(params[:id].to_i)
    render layout: false
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def update
    issue = Issue.find(params[:id].to_i)
    if params[:more] == 1.to_s
      if issue.update_attributes(up_from_more)
        flash[:notice] = "Merci les informations supplémentaires ont bien été reçues"
        redirect_to get_more_info_path(issue)
      else
        flash[:warning] = "Les informations supplémentaires n'ont pas pu être reçues"
        redirect_to get_more_info_path(issue)
      end
    end
  end

  def index
    @issues = Issue.all.sort_by(&:issue_level).reverse
    @title = "Dashboard"
  end

  private

  def issue_params
    params.require(:issue).permit(:typeofperson, :nbr_victims, :issue_level)
  end

  def up_from_more
    params.require(:issue).permit(:phone, :picture, :name, :last_name)
  end

  def prevent_loc_ip
    if session[:ip].nil? || session[:lat].nil? || session[:pos].nil?
      redirect_to root_path
    end
  end

end
