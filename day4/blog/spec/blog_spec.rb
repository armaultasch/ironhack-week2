# blog_spec.rb

require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
	before :each do
	 :blog 
		@blog = Blog.new
	
	 @post1 = Post.new("First Post", 2011, "This is the first blog post I am making")
	

	 @post2 = Post.new("Second Post", 2012, "This is the second blog post I am making")
	

	 @post3 = Post.new("Third Post", 2013, "This is the third blog post I am making")
	 

		@blog.add_post(@post1)
		@blog.add_post(@post2)
		@blog.add_post(@post3)
	end 



	describe "show_post" do 

		it "shows the posts created" do
			
			
			expect(@blog.show_post.length).to eq(3)
			expect(@blog.show_post).to eq([@post1,@post2,@post3])
		end

	end

	describe "latest_posts" do
		it "shows the posts by the most recent" do
			expect(@blog.latest_posts.length).to eq(3)
			expect(@blog.latest_posts).to eq([@post3,@post2,@post1])
		end
	end


end

