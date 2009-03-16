class BoatsController < ApplicationController
  resource_controller
  require_authorization :update  # thanks James!!!
end
