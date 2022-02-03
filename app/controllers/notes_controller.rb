class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save then
      redirect_to @note
    else
      render 'new'
    end
  end


  def show
    @note = Note.find(params[:id])
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

    def note_params
      params.require(:note).permit(:title,:description,:tag)
    end

end
