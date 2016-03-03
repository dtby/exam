module Admin
  class GradesController < ApplicationController
    load_and_authorize_resource
    before_action :set_grade, only: :show

    def index
      @grades = Grade.page(params[:page]).per(15)
    end

    def show
    end

    private
    def set_grade
      @grade = Grade.where(id: params[:id]).first
    end
  end
end
