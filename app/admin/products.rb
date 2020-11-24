ActiveAdmin.register Product do
  permit_params :name, :description, :price, :user_id, :image, product_category_attributes: [:id, :category_id, :product_id, :_destroy]


  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image , as: :file
    end
    f.has_many :product_category, allow_destroy: true do |c|
      c.input :category
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
