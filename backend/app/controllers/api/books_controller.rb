class Api::BooksController < ApplicationController
  before_action :set_book, only: %i[ show ]

  # GET /books
  def index
    @books = Book.all
    render json: @books
  end

  # GET /books/query
  def query
    isbn = BooksService.trim_isbn(params[:isbn])
    if !isbn
      @book = Book.all
    elsif BooksService.is_isbn13(isbn)
      logger.info "ISBN-13 received"
      @book = Book.find_by isbn_13: isbn
    elsif BooksService.is_isbn10(isbn)
      logger.info "ISBN-10 received"
      isbn =  BooksService.convert_isbn10_to_13(isbn)
      @book = Book.find_by isbn_13: isbn
    else
      logger.info "Invalid ISBN input"
      return render json: {
        error: "Invalid ISBN input"
      }, status: 400
    end

    if @book.nil?
      logger.info "No book found with isbn: #{isbn}"
      return render json: {
        error: "No book found"
      }, status: 404
    end

    render json: @book
  end

  # GET /books/1
  def show
    render json: @book
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.fetch(:book, {})
    end
end
