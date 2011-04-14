# redmine_collapse_quotes -- Redmine plugin to collapse quotes in issue history
#
# Copyright (C) 2011  Alex Shuglin <ash@commandprompt.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

require 'redmine'
require 'dispatcher'

require_dependency 'redmine_collapse_quotes/view_hooks'

Redmine::Plugin.register :redmine_collapse_quotes do
  name 'Redmine Collapse Quotes plugin'
  author 'Alex Shulgin <ash@commandprompt.com>'
  description 'Redmine plugin to collapse quotes in issue history'
  version '0.0.1'
#  url 'https://github.com/commandprompt/redmine_collapse_quotes/'
#  author_url 'http://example.com/about'

  requires_redmine :version_or_higher => '1.1.0'
end
