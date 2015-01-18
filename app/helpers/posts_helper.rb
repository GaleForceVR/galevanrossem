module PostsHelper
  def category_posts(name)
    # @posts = Post.all
    @category_posts = []
    @assignments = CategoryAssignment.all
    @assignments.each do |assignment|
      @category_posts << Post.find(assignment.post_id) if assignment.category_id == find_category_id_by(name)
    end
    @category_posts
  end

  def find_category_id_by(name)
    @categories = Category.all
    found_category_id = nil
    @categories.each do |category|
      found_category_id = category.id if category.name == name
    end
    found_category_id
  end
end
