module TimeCustomField
  module Hooks
    class IssueFormHook < Redmine::Hook::ViewListener
      render_on :view_issues_form_details_top, partial: 'time_custom_field_hooks/time_fields_requires'

      def view_layouts_base_html_head(context = {})
        return stylesheet_link_tag('jquery-clockpicker.min.css', plugin: 'time_custom_field')
      end
    end
  end
end
