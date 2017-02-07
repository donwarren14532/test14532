class VisitorsController < ApplicationController
  def index
	@visitors = Login.all
  end
end
