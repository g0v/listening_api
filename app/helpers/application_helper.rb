# encoding: utf-8
module ApplicationHelper
  def render_ul_breadcrumbs
    @breadcrumbs.delete []

    content_tag :ul, :class => 'breadcrumb' do
      last_breadcrumb_name = @breadcrumbs.pop.first
      @breadcrumbs.map do |breadcrumb|
        content_tag :li do
          if breadcrumb.first.is_a? Array
            breadcrumb.map{|e| link_with_breadcrumb(e)}.join(', ').html_safe
          else
            link_with_breadcrumb(breadcrumb)
          end
        end
      end.push(content_tag :li, last_breadcrumb_name, :class => 'active')
         .join('<li><span class="divider"><i class="icon-chevron-right"></i></span></li>')
         .html_safe
    end
  end

  def link_with_breadcrumb(link_info)
    link_name = link_info.first
    path, params = link_info.last.split('?')
    params = params.nil? ? [] : params.split('&')
    params << 'ref=breadcrumb'
    link_to(link_name, "#{path}?#{params.join('&')}")
  end

  def safe_truncate_content(content, length)
    pure_text = strip_tags(content).gsub(/\n/, '').gsub(/\r/, '').gsub(/\t/, '').gsub(/&nbsp;/, '')
    sanitize truncate(pure_text, :length => length, :omission => '…')
  end
end
