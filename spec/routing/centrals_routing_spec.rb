RSpec.describe CentralsController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/centrals').to route_to('centrals#index')
    end

    it 'routes to #new' do
      expect(get: '/centrals/new').to route_to('centrals#new')
    end

    it 'routes to #show' do
      expect(get: '/centrals/1').to route_to('centrals#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/centrals/1/edit').to route_to('centrals#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/centrals').to route_to('centrals#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/centrals/1').to route_to('centrals#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/centrals/1').to route_to('centrals#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/centrals/1').to route_to('centrals#destroy', id: '1')
    end
  end
end
