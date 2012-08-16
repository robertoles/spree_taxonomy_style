class AddTaxonAndTaxonomyStyle < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :style, :string
    add_column :spree_taxons, :style, :string
  end
end