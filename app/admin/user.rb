ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#permit_params :email ,:encrypted_password ,:reset_password_token ,:reset_password_sent_at ,:remember_created_at ,:sign_in_count ,:current_sign_in_at ,:last_sign_in_at ,:current_sign_in_ip ,:last_sign_in_ip ,:created_at ,:updated_at ,:nickname ,:editor, :user_admin
permit_params :nickname
end