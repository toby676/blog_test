describe User do

  let(:user) {described_class}

  it 'user can be created' do
    user.create(email: 'toby@toby.com', password: 'hello123')
    expect(user.count).to equal 1
  end

end
