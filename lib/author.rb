class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    post.title = title
    @@post_count += 1
    @posts << post

  end

  def self.post_count
    @@post_count
  end


  end
