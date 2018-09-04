module TimeCustomFieldFormat
  module Patch
    class TimeFormat < Redmine::FieldFormat::Unbounded
      add 'time'
      self.form_partial = 'custom_fields/formats/time_field'
      self.customized_class_names = %w(Issue User)

      field_attributes :auto_close
      field_attributes :vibrate

      def self.name_id
        'time'
      end

      def convert_value(custom_field, value) 
        return value
      end 

      def validate_custom_value(custom_value)
        return []
      end

      def value_blank?(value)
        return false
      end

      def formatted_value(view, custom_field, value, customized=nil, html=false)
        if view.action_name == "index"
          super(view, custom_field, value, customized, html)
        elsif value.blank?
          value
        else
          value
          # generate_table_view(view,custom_field, value)
        end
      end

      def edit_tag(view, tag_id, tag_name, custom_value, options={})
        view.render partial: 'issues/insert_time_field', locals: { custom_value: custom_value }
      end
    end
  end
end