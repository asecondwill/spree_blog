class Spree::BlogsController < Spree::StoreController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  layout :determine_layout

  def show
    @blog = Spree::Blog.find_by_param(params[:id])
  end

  def index
    @blogs = Spree::Blog.order(created_at: :desc)
  end

  private
    def determine_layout
      Spree::Config.layout
    end

end