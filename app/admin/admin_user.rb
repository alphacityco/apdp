ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Reference - an email will be sent to the user for become an admin user" do
      f.input :email
    end
    # f.buttons
  end

end
