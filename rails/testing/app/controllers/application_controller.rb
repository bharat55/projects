class ApplicationController < ActionController::Base
   before_action :set_book, only: [:show, :edit, :update, :destroy]

end
