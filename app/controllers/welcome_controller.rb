class WelcomeController < ApplicationController

  def index

  end

  def search
    @user_res = []
    @company_res = []
    #@users = User.all
    #@companies = Company.all
    User.all.each do |user|
      if user.name.downcase.include? params[:search].downcase
        @user_res << user
      end
    end
    Company.all.each do |company|
      if company.name.downcase.include? params[:search].downcase
        @company_res << company
      end
    end
  end
end
