class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @category

    if @bookmark.save
      redirect_to categories_path{@category}, notice: "Saved successfully"
    else
      render :new
    end
  end
end
