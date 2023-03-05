class DynamoUsersController < ApplicationController
  def index
    @users = DynamoUser.where(user_id: 'fdde010e-779f-4745-a3a1-46474b3b26a2')
    # @users = DynamoUser.where(age: 20)
    render json: { users: @users }
  end
end
