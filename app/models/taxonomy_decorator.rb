Spree::Taxonomy.class_eval do
  attr_accessible(:style)
end

Spree::Taxonomy.instance_eval do
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