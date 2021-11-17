class NotesController < ApplicationController
  before_action :set_note, only: %i[edit update destroy]
  include NotesHelper

  def new
    @note = Note.new
  end

  def edit; end

  def create
    @note = Note.new(note_params)
    @note = assign_note_user(@note, current_user)
    respond_to do |format|
      if @note.save
        format.html { redirect_to root_path, notice: 'Note was successfully created.' }
      else
        format.html { redirect_to root_path, alert: @note.errors.full_messages }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to root_path, notice: 'Note was successfully updated.' }

      else
        format.html { render :edit, status: :unprocessable_entity }

      end
    end
  end

  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :body, :date, :priority, :user_id, :search)
  end
end
