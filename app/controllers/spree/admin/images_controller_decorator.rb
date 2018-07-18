Spree::Admin::ImagesController.class_eval do
  create.before :set_variants
  update.before :set_variants

  private

    def set_variants
      @image.variant_ids = viewable_ids
    end

    def viewable_ids
    	if params[:image][:viewable_ids].present?
      	params[:image][:viewable_ids].reject(&:blank?)
      else
      	params[:image][:viewable_id]
      end
    end
end