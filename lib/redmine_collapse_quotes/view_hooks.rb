module RedmineCollaseQuotes
  class ViewHooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_description_bottom,
      :partial => 'hooks/view_issues_show_description_bottom'
  end
end
