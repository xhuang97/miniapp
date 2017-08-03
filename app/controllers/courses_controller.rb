class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :input, :action]

  # GET /courses
  # GET /courses.json

  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    # puts @course.session
    # puts @inputs_for_course.map{|o| o.sessionDesc}.uniq
  end

  def input
    # @inputs_for_course = @course.get_inputs
    @date = params[:date_param]
    @inputs_for_course_on_date = @course.get_inputs_on_date(@date)
  end

  def action
    @date = params[:date_param]
    @actions = @course.get_inputs_on_date(@date).map{|o| o.type}.uniq
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
      @inputs_for_course = @course.get_inputs
      @available_dates = @course.get_input_dates
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:ta_name, :course_num, :days_of_week, :time_of_day)
    end
end
