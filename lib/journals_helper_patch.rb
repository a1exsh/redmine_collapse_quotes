module JournalsHelperPatch
  def self.included(base)
    base.module_eval do
      alias_method_chain :render_notes, :collased_quotes
    end
  end

  def render_notes_with_collased_quotes(*args)
    render_notes_without_collased_quotes(*args).gsub!(/<blockquote>/) do
      <<-EOF
<a class="toggle-quoted-text" href="#" onclick="return toggleQuotedTextVisibility(this);">#{translate :label_show_quoted_text}</a>
<blockquote style="display: none;">
EOF
    end
  end
end
