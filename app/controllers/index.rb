# GET ======================

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/posts/:post_id' do
  @post = Post.find_by_id(params[:post_id])
  erb :post
end

get '/tags/:tag_name' do
  tag = Tag.find_by_name(params[:tag_name])
  @posts = tag.posts
  erb :tag
end



# POST =====================

post '/new_post' do
  post = Post.create(params[:post])
  redirect "/posts/#{post.id}"
end
