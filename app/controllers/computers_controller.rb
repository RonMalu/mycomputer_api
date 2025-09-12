class ComputersController < ApplicationController
  def index
    computers = Computer.all
    render json: computers
  end 

  def show
    computers = Computer.find(params[:id])
    render json: computers
  end 

  def random_computer
    computers = Computer.find(rand(1..5))
    render json: computers
  end 

  def create
    computers = Computer.create(
      size: params[:size],
      brand: params[:brand],
      model: params[:model]
    )
    render json: computers
  end 

  def update
    computers = Computer.find(params[:id])

    computers.update(
      size: params[:size] || computers.size,
      brand: params[:brand] || computers.brand,
      model: params[:model] || computers.model
      
    )
    
    render json: computers

  end 

  def destroy
    computer = Computer.find(params[:id])
    computer.destroy

    render json: {message: "Computer deleted"}
  end 

end
