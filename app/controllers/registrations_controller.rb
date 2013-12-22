class RegistrationsController < Devise::RegistrationsController

  def new
    super
    
    if params[:contactId].nil? or params[:inf_field_Email].nil?
      root_path
    end
  end

  private
  def build_resource(*args)
    super
    if params[:plan]
      resource.add_role(params[:plan])
    end
  end
end
