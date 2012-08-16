Spree::Taxon.class_eval do
  attr_accessible(:style)

  def display_style
    return style unless style.blank?
    return parent.display_style if parent && parent.display_style
    return ""
  end
end

Spree::Taxon.instance_eval do
  def styles
    @styles ||= []
  end

  def styles=(styles)
    @styles = styles
  end

  def styles_dropdown
    styles.map {|s| [s.humanize, s]}
  end
end