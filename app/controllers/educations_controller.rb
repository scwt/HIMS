# -*- coding: utf-8 -*-
class EducationsController < ApplicationController

  def create
    @employee = Employee.find(params[:employee_id])
    @education = @employee.educations.build(params[:education])
   
    if @education.save
      render json: {status: 200}
    else 
      render json: {errors: @education.errors, status: 500}
    end 
    
  end 
  
  def update
    @education = Education.find(params[:id])
    
    respond_to do |format|
      if @education.update_attributes(params[:education])
       render json: {status: 'ok'}
      else
        render json: {errors: @education.errors}, status: 500
      end
    end 
  end 

  def destroy
    @employee = Employee.find(params[:employee_id])
    @education = Education.find(params[:id])
    @education.destroy

  
    render json: {status: 200}
     
  end 
end
