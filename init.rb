Redmine::Plugin.register :time_custom_field do
  name 'Time Custom Field plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  # require 'time_custom_field/hooks/issue_form_hook'
  require 'time_custom_field/patches/field_format_patch'
end
