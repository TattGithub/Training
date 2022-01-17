class NearController < ApplicationController
  def index
    @tt=User.first
    @pp=params[:id]
  end
end
