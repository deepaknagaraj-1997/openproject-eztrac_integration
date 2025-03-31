require "open_project/plugins"

module Openproject::EztracIntegration
  class Engine < ::Rails::Engine
    engine_name "openproject-eztrac_integration"
    
    include OpenProject::Plugins::ActsAsOpEngine

    register("openproject-eztrac_integration",
      :author_url => "https://openproject.org",
      :requires_openproject => ">= 6.0.0"
    ) do
      project_module :eztrac_module do
        permission :view_eztrac_teams,
                   {
                     'eztrac/teams': %i[index show]
                   },
                   permissible_on: [:project]
      end

    #   menu :project_menu,
    #        :eztrac,
    #        { controller: 'eztrac/teams', action: 'index' },
    #        after: :overview,
    #        param: :project_id,
    #        caption: "EZTrac",
    #        icon: :squirrel,
    #        html: { id: "eztrac-menu-item" },
    #        if: ->(project) { true }
    end

  end
end
