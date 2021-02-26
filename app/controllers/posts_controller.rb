class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
    @musics = Post.where(category: "musics").order(id: "DESC")
    @lyrics = Post.where(category: "lyric").order(id: "DESC")
    @melodys = Post.where(category: "melody").order(id: "DESC")
    @songs = Post.where(category: "song").order(id: "DESC")
    @movies = Post.where(category: "movie").order(id: "DESC")
    @rank_musics = Post.where(category: "musics").sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
    @rank_lyrics = Post.where(category: "lyric").sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
    @rank_melodys = Post.where(category: "melody").sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
    @rank_songs = Post.where(category: "song").sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
    @rank_movies = Post.where(category: "movie").sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)

end

  def musics
    @musics = Post.where(category: "musics").order(id: "DESC")
  end

  def lyrics
    @lyrics = Post.where(category: "lyric").order(id: "DESC")
  end

  def melodys
    @melodys = Post.where(category: "melody").order(id: "DESC")
  end

  def songs
    @songs = Post.where(category: "song").order(id: "DESC")
  end

  def movies
    @movies = Post.where(category: "movie").order(id: "DESC")
  end
  
  def new
    @category = params[:category]
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to :action => "index"
    else
      redirect_to :action => "miss"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end


  private
  def post_params
    params.require(:post).permit(:category,:title,:body,:video,:audio,:lyrictitle,:lyricbody,:melodytitle,:melodybody,:songtitle,:songbody,:movietitle,:moviebody,:matchuser)
  end
end
