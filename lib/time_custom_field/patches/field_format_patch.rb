module TimeCustomFieldFormat
  module Patch
    class TimeFormat < Redmine::FieldFormat::Unbounded
      add 'Time'
      self.form_partial = 'custom_fields/formats/time_field'
      self.customized_class_names = %w(Issue User)

      def self.name_id
        'Time'
      end
    end
  end
end