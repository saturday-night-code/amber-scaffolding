class ActivitiesController < ApplicationController
  getter activities = Activities.new

  before_action do
    only [:show, :edit, :update, :destroy] { set_activities }
  end

  def index
    activities = Activities.all
    render "index.slang"
  end

  def show
    render "show.slang"
  end

  def new
    render "new.slang"
  end

  def edit
    render "edit.slang"
  end

  def create
    activities = Activities.new activities_params.validate!
    if activities.save
      redirect_to action: :index, flash: {"success" => "Activities has been created."}
    else
      flash[:danger] = "Could not create Activities!"
      render "new.slang"
    end
  end

  def update
    activities.set_attributes activities_params.validate!
    if activities.save
      redirect_to action: :index, flash: {"success" => "Activities has been updated."}
    else
      flash[:danger] = "Could not update Activities!"
      render "edit.slang"
    end
  end

  def destroy
    activities.destroy
    redirect_to action: :index, flash: {"success" => "Activities has been deleted."}
  end

  private def activities_params
    params.validation do
      required :description
      required :owner
    end
  end

  private def set_activities
    @activities = Activities.find! params[:id]
  end
end
