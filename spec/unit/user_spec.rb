describe User do

  let(:user) {described_class.new}

  it 'user can be created' do
    user.create(email: 'toby@toby.com', password: 'hello123')
  end

end
