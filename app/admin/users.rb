ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :username, :userEmail, province_user_attributes: [:id, :user_id, :province_id]
  #
  # or

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.has_many :province_user, allow_destroy: true do |c|
      c.input :province
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
