class ToDosController < ApplicationController
  before_action :set_to_do, :only => [:show, :edit, :update, :destroy, :is_done]
  def index
    @to_dos = ToDo.order(:due_date)
  end

  def new
    @to_do = ToDo.new
  end

  def create
    @to_do =ToDo.new(to_do_params)
    if @to_do.save
        redirect_to to_dos_url
    else
      render  :action => :new
    end
  end

  def update
    if @to_do.update_attributes(to_do_params)
      redirect_to to_do_path(@to_do)
    else
      render  :action => :edit
    end
  end

  def destroy
    @to_do.destroy

    redirect_to to_dos_url
  end

  def is_done
    @to_do.update(is_done: !(@to_do.is_done))
  end 



  private

    def to_do_params
      params.require(:to_do).permit(:name, :due_date, :note)
    end

    def set_to_do
     @to_do = ToDo.find(params[:id])
    end 

end
