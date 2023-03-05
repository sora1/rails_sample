class HealthcheckController < ApplicationController
  def healthcheck
    puts 'aabas'
    render json: {}, status: :ok
  end
end
