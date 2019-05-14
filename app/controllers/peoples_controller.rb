class PeoplesController < ApplicationController
  def index
    @peoples = Person.all 
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def show
    @person = Person.find(params[:id])

  end

  def update
    @people = Person.find(params[:id])
    if @people.update(people_params)
      redirect_to peoples_path
    else
      render :edit
    end
  end

  def create
    @people = Person.new(people_params)
    if @people.save
      redirect_to peoples_path
      else
      render :new
      end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to peoples_path
  end

  private
  def people_params
    params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
