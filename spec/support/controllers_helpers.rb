# module ControllersHelpers
#   def login_user
#     @request.env['devise.mappin'] = Devise.mappings[:user]
#     # @request.env['devise.mapping'] = Devise.mappings[:user]
#     @user = create(:user)
#     sign_in @user
#   end

#   def login_admin
#     @request.env['devise.mappin'] = Devise.mappings[:user]
#     # @request.env['devise.mapping'] = Devise.mappings[:user]
#     @admin = create(:user)
#     @admin.add_role :adim, @admin.account
#     sign_in @admin
#   end
# end