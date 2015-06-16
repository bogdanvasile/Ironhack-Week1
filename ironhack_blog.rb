class Blog
	def initialize
		@all_posts = []
		@position = 0
    end
    def add_post(post) 
    	@all_posts << post
    end

    def sort_by_date
    	@all_posts.sort! do |x, y|
    	y.date <=> x.date
    	end 
    end
    def create_front_page
        posts_print = @all_posts.slice(@position, @position + 3)
    	posts_print.each do |post| puts #"{post}"
    	
    		puts post.title
    		puts "*****************"
    		puts "#{post.date}  #{post.text}"
    		puts "-----------------"  
    		if post.sponsored
    			puts "*******SPONSORED*********"
    		end
     end
     #if (@all_posts.count / 3.0).ceil > 0
      #  puts "#{(@all_posts.count / 3.0).ceil - 1} #{(@all_posts.count / 3.0).ceil}" 
    #end
    (1..(@all_posts.count / 3.0).ceil).map { |i| i } 
end
end

class Post 
    attr_accessor :title, :date, :text, :sponsored

	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end


new_blog = Blog.new
new_blog.add_post post1 = Post.new("post title 1", "post 1", "text 1", true) 
new_blog.add_post post2 = Post.new("post title 2", "post 2", "text 2", false) 
new_blog.add_post post3 = Post.new("post title 3", "post 3", "text 3", false) 
new_blog.add_post post4 = Post.new("post title 4", "post 4", "text 4", false)
new_blog.add_post post5 = Post.new("post title 5", "post 5", "text 5", false)
new_blog.add_post post6 = Post.new("post title 6", "post 6", "text 6", false)
new_blog.add_post post7 = Post.new("post title 7", "post 7", "text 7", false)
print new_blog.create_front_page


