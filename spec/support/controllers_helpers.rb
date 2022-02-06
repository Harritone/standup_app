module ControllersHelpers
  def login_user
    @request.env['devise.mappin'] = Devise.mappings[:user]
    # @request.env['devise.mapping'] = Devise.mappings[:user]
    @user = create(:user)
    sign_in @user
  end
end