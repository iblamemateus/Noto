class NotesController < ApplicationController
  before_action :set_note, only: %i[ show edit update destroy toggle_pin]
  def index
    base_note = Note.search_by_text(params[:search])

    @notes = base_note.not_pinned_notes
    @pinned_notes = base_note.pinned_notes
    @randomic_phrase = Phrase.new
  end

  def show; end

  def new
    @note = Note.new()
  end

  def edit; end

  def create
    @note = Note.new(note_params)
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @note.errors, status: :unprocessable_content }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: "Note was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @note.errors, status: :unprocessable_content }
      end
    end
  end

  def destroy
    @note.destroy!

    respond_to do |format|
      format.html { redirect_to(notes_path) }
      format.json { head :no_content }
    end
  end
  def toggle_pin
    @note.update(pinned: !@note.pinned)
    redirect_to(notes_path)
  end 
  private
    def set_note
      @note = Note.find(params.expect(:id))
    end

    def note_params
      params.expect(note: [ :title, :content, :status ])
    end
end
