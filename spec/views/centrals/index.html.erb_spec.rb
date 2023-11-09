RSpec.describe 'centrals/index' do
  before do
    assign(:centrals, [
             Central.create!,
             Central.create!
           ])
  end

  it 'renders a list of centrals' do
    render
    Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
