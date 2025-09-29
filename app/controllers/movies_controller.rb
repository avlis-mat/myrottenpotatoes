class MoviesController < ApplicationController
    def index
        # parametro ord
        @sort = params[:sort]

        if @sort == "title"
            @movies = Movie.order(:title)
        elsif @sort == "release_date"
            @movies = Movie.order(:release_date)
        else
        @movies = Movie.all
        end
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.create(movie_params)
        redirect_to movies_path
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
        redirect_to movie_path(@movie)
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end

    private
    def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
end
