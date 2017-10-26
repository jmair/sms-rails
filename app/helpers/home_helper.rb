module HomeHelper
  def page_status meta
    total = meta['total_pages']
    if total > 1
      ' of ' + total.to_s
    else
      ''
    end
  end

  def display_next meta
    current, total = meta['current_page'], meta['total_pages']
    current >= 1 && total > 1 && current != total ? '' : 'hidden'
  end

  def display_previous meta
    current, total = meta['current_page'], meta['total_pages']
    current > 1 && total > 1 ? '' : 'hidden'
  end
end
