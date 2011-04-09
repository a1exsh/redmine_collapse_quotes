require 'redmine'
require 'dispatcher'

require_dependency 'redmine_collapse_quotes/view_hooks'

Dispatcher.to_prepare :redmine_collapse_quotes do
  require_dependency 'journals_helper'

  JournalsHelper.send(:include, JournalsHelperPatch) unless JournalsHelper.include?(JournalsHelperPatch)
end

Redmine::Plugin.register :redmine_collapse_quotes do
  name 'Redmine Collapse Quotes plugin'
  author 'Alex Shulgin <ash@commandprompt.com>'
  description 'Redmine plugin to collapse quotes in issue history'
  version '0.0.1'
#  url 'https://github.com/commandprompt/redmine_collapse_quotes/'
#  author_url 'http://example.com/about'

  requires_redmine :version_or_higher => '1.1.0'
end
