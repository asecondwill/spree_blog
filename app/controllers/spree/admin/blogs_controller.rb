class Spree::Admin::BlogsController < Spree::Admin::ResourceController



  private
    def object
      @object ||= Spree::Blog.find_by_param(params[:id])
    end

    def find_resource
      model_class.find_by_param(params[:id])
    end
end
