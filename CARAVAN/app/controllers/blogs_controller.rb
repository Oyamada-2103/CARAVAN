class BlogsController < ApplicationController

  def show
    # 5章で追加
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end


  def new
    @blog = Blog.new
  end

  def create
    # ３章で追加
    blog = Blog.new(blog_params)
    blog.save

    redirect_to blog_path(blog.id)
    # ５章で上記内容へ変更
    # redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
  end
  
  # 6章で追加
  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end
  
  # 7章で追加
  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end

  # ３章で追加　Strong Parametersを定義する
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end

end
