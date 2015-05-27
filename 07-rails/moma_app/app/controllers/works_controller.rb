class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @work = Work.find params[:id]
  end

  def update
  end

  def destroy
  end
end
