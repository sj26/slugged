class <%= migration_class_name %> < ActiveRecord::Migration
  
  def self.up
    add_column <%= table_name.to_sym.inspect %>, :cached_slug, :string
    add_index  <%= table_name.to_sym.inspect %>, :cached_slug
  end

  def self.down
    remove_column <%= table_name.to_sym.inspect %>, :cached_slug
  end
  
end
