module RailsAdmin
  module Config
    module Actions
      class HistoryIndex < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :authorization_key do
          :history
        end

        register_instance_option :collection do
          true
        end

        register_instance_option :http_methods do
          [:get] # SHOW
        end

        register_instance_option :route_fragment do
          'history'
        end

        register_instance_option :controller do
          proc do
            @general = true
            @history = @auditing_adapter && @auditing_adapter.listing_for_model(@abstract_model, params[:query], params[:sort], params[:sort_reverse], params[:all], params[:page]) || []
            @version = PaperTrail::Version.find(params[:version_id]) if params[:version_id] rescue false

            if @version
              render partial: 'version', layout: false
            else
              render @action.template_name
            end
          end
        end

        register_instance_option :template_name do
          :history
        end

        register_instance_option :link_icon do
          'icon-book'
        end
      end
    end
  end
end
