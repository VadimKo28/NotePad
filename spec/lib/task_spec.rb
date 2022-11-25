RSpec.describe Task do 
  let(:keyses_types_post) { Post.post_types.keys }
  
  it "returns current type class" do 
    entry = Post.create(keyses_types_post[1])
    
    expect(entry).to be_an_instance_of(Task)  
    #be_an_instance_of - Проверка на то, что объект принадлежит правильному классу
  end
end