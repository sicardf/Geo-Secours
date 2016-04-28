class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def welcome
    @title = "Welcome"
  end

  def dashboard
  end

  def remonte
    @title = "Signalements"
    @issues = Issue.all.sort_by(&:issue_level)
  end

  def reseaux
    @title = "Réseaux-Sociaux"
  end
end
