describe Post do

  let(:post) {described_class}

  it 'post can be created' do
    post.create(title: 'I am a title', content: 'this is my content')
    expect(post.count).to equal 1
  end

end
