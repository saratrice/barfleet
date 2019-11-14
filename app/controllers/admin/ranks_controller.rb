# frozen_string_literal: true

class Admin::RanksController < ApplicationController
  before_action :set_rank, only: %i[show edit update destroy]

  # GET /admin/ranks
  # GET /admin/ranks.json
  def index
    @ranks = Rank.all.order(:sort_number)
  end

  # GET /admin/ranks/1
  # GET /admin/ranks/1.json
  def show; end

  # GET /admin/ranks/new
  def new
    last_sort = Rank.all.order(:sort_number).pluck(:sort_number).last
    @rank = Rank.new(sort_number: last_sort.to_i + 1)
  end

  # GET /admin/ranks/1/edit
  def edit; end

  # POST /admin/ranks
  # POST /admin/ranks.json
  def create
    @rank = Rank.new(rank_params)

    respond_to do |format|
      if @rank.save
        format.html { redirect_to [:admin, @rank], notice: 'Rank was successfully created.' }
        format.json { render :show, status: :created, location: @rank }
      else
        format.html { render :new }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ranks/1
  # PATCH/PUT /admin/ranks/1.json
  def update
    respond_to do |format|
      if @rank.update(rank_params)
        format.html { redirect_to [:admin, @rank], notice: 'Rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @rank }
      else
        format.html { render :edit }
        format.json { render json: @rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ranks/1
  # DELETE /admin/ranks/1.json
  def destroy
    @rank.destroy
    respond_to do |format|
      format.html { redirect_to admin_ranks_url, notice: 'Rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rank
    @rank = Rank.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def rank_params
    params.require(:rank).permit(:name, :abbreviation, :sort_number)
  end
end
