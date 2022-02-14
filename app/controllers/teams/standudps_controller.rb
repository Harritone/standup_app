class Teams::StandupsController < ApplicationController
  def index
    set_teams_and_standups
  end
end
