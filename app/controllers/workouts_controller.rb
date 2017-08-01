class WorkoutsController < ApplicationController
  
  before_action :find_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user?, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @workouts = current_user.workouts.search(params[:search]).order("date DESC").paginate(page: params[:page], per_page: 5)
  end
  
  def show
  end
  
  def new
    @workout = current_user.workouts.new
  end
  
  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      flash[:notice] = "New WOD was created."
      redirect_to root_path
    else
      flash[:notice] = "WOD was not created."
      render 'new'
    end
  end
    
    
    
  def edit
  end
  
  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end
  
  def destroy
    @workout.destroy
    redirect_to root_path
  end
  
  private
    
    def workout_params
      params.require(:workout).permit(:date, :wod, :food, :mood, :weather, 
                                      :strength, :weightlifting, :gymnastics,
                                      :mobility, :other)
    end
    
    def find_workout
      @workout = Workout.find(params[:id])
    end
    
    def correct_user?
      redirect_to root_path if (@workout.user != current_user)
    end
    
end
