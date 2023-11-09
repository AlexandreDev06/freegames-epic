RSpec.describe 'centrals/new' do
  before do
    assign(:central, Central.new)
  end

  it 'renders new central form' do
    render

    assert_select 'form[action=?][method=?]', centrals_path, 'post' do
    end
  end
end
