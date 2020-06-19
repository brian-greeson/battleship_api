Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      post '/newgame', to: 'game#create'
    end
  end
end
