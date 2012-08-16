Deface::Override.new(
  virtual_path: "spree/admin/taxonomies/_form", 
  partial: 'spree/admin/taxonomies/style_selector',
  insert_bottom: "[data-hook='admin_taxonomy_form_fields']",
  name: 'add_taxonomy_style_selector')

Deface::Override.new(
  virtual_path: "spree/admin/taxons/_form", 
  partial: 'spree/admin/taxons/style_selector',
  insert_bottom: "[data-hook='admin_taxon_form_fields']",
  name: 'add_taxon_style_selector')
