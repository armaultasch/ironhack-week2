# app.rb

require "sinatra"
require "sinatra/reloader"
require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new

blog.add_post Post.new("First Post", 2011, "This is the first blog post I am making", "farms", "Alison Maultasch" )
blog.add_post Post.new("Second Post", 2012, "This is the second blog post I am making", "accessories", "Alison Maultasch")
blog.add_post Post.new("Third Post", 2013, "This is the third blog post I am making", "farms", "Jason Sandler" )

get "/" do
	@blog = blog.show_post
	erb(:home)
end

get "/details/:index" do
	blog_post = blog.show_post
	index = params[:index].to_i
	@now = blog_post[index]
	erb(:post_details)
	end

get "/new_post" do 
	erb(:new_post)
end

post "/create_post" do
	post_title = params[:post_title]
	post_text = params[:post_text]
	post_category = params[:post_category]
	post_author = params[:post_author]
	post_date = Time.now
new_post = Post.new(post_title, post_date, post_text, post_category, post_author)
	blog.add_post(new_post)
	
	redirect to "/"
end
