class CommonCell < Cell::Rails

  def operation(args)
    @model,@model_name,@employee = args[:module]
    render
  end

end
