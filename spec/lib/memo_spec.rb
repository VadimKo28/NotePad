RSpec.describe Memo do 
  let(:keyses_types_post) { Post.post_types.keys }

  it "returns current type class" do 
    entry = Post.create(keyses_types_post[0])
    
    expect(entry).to be_an_instance_of(Memo)
    #be_an_instance_of - Проверка на то, что объект принадлежит правильному классу
  end
end