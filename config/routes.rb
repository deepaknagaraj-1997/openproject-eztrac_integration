Rails.application.routes.draw do
    scope '', as: 'eztrac_integration_plugin' do
        scope 'projects/:project_id', as: 'project' do
            namespace :eztrac do
                resources :teams, only: [:show]
            end
        end
    end
end
