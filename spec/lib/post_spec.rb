RSpec.describe Post do 
  let(:keyses_types_post) { Post.post_types.keys }
  
  it "returns keys types post" do 
      expect(keyses_types_post).to eq(["Memo", "Task", "Link"])
  end

  it "returns current name of class type post" do 
    choice = gets.to_i
    
    entry = Post.create(keyses_types_post[choice])
    
    expect(entry.class.name).to eq(keyses_types_post[choice])
  end

end