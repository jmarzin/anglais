class TraductionsController < ApplicationController
  # GET /traductions
  # GET /traductions.json
  def index
    Traduction.init
    @traductions = Traduction.all.order(:anglais)
  end
end
