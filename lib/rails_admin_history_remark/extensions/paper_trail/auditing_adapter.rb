module RailsAdmin
  module Extensions
    module PaperTrail
      class VersionProxy
        def message
          @message = @version.event
        end

        def version_id
          @version.id
        end

        def remark
          @remark = @version.remark
        end
      end

      class AuditingAdapter
        COLUMN_MAPPING = {
          table: :item_type,
          username: :whodunnit,
          item: :item_id,
          created_at: :created_at,
          message: :event,
          remark: :remark,
        }.freeze
      end
    end
  end
end
