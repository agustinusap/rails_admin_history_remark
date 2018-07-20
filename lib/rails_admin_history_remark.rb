require "rails_admin_history_remark/engine"

module RailsAdminHistoryRemark
  # Your code goes here...
end

require 'rails_admin/config/actions'
require 'rails_admin/extension'
require 'rails_admin/extensions/paper_trail'

require "rails_admin_history_remark/extensions/paper_trail/auditing_adapter"
require "rails_admin_history_remark/config/actions/history_index"
