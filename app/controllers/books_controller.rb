class BooksController < ApplicationController

    before_action :set_book, only: [:show, :update, :destroy, :edit]

   def index
        @all_books = Book.all

        if params[:query].present?
            query_limpa = I18n.transliterate(params[:query]).downcase
            @books = @all_books.select do |book|
                titulo_limpo = I18n.transliterate(book.title).downcase
                titulo_limpo.include?(query_limpa)
            end
        elsif params[:show_all].present?
            @books = @all_books
        else
            @books = []
        end
    end
    
    def show
    end

    def edit

    end

    def update

        if @book.update(book_params)
            redirect_to @book
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to @book, notice: "O livro foi adicionado com sucesso."
        else
            render :new, status: :unprocessable_entity, alert: "Houve um erro! Tente novamente."
        end
    end

    def destroy
        @book.destroy
        respond_to do |format|
        format.html { redirect_to books_path, notice: "O livro foi deletado com sucesso!" }
        format.json { head :no_content }
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :book_code, :status)
    end

    def set_book
        @book = Book.find(params[:id])
    end
end

