# -*- coding: utf-8 -*-

class EmployeesController < ApplicationController
  def index
    @employees = Employee.paginate(:page => params[:page], :per_page => 10)   
  end
  
  def new 
    @employee=Employee.new
  end 
  
  def show
    @employee=Employee.find(params[:id])
  end 
  
  def create
    @employee = Employee.new (params[:employee])
    respond_to do |f|
      if @employee.save
        f.html {redirect_to profile_employee_url(@employee),:notice => "员工创建成功,请完善其他信息!"}
      else
        f.html {render :action => "new"}
      end
    end 
  end 

  def edit
    @employee = Employee.find(params[:id])
  end 

  def update
    @employee = Employee.find(params[:id])
    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html {redirect_to profile_employee_url(@employee),
                                                      :notice => "员工更新成功"}
        format.json {head:no_content}
      else
        format.html {redirect_to profile_employee_url(@employee),
                                                      :notice => "操作失败"}
      end 
    end 
  end 
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    
    respond_to do |format|
      format.html { redirect_to employees_url}
    end 
  end 

  def profile
    @employee=Employee.find(params[:id])
    @education = @employee.educations.build
  end 
end
