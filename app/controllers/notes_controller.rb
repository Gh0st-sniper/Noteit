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
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params) then
      redirect_to @note
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path, status: :see_other
  end

  private

    def note_params
      params.require(:note).permit(:title,:description,:tag)
    end

end
