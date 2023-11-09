RSpec.describe 'centrals/edit' do
  let(:central) do
    Central.create!
  end

  before do
    assign(:central, central)
  end

  it 'renders the edit central form' do
    render

    assert_select 'form[action=?][method=?]', central_path(central), 'post' do
    end
  end
end
