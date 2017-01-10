class CreateDocumentationPages < ActiveRecord::Migration
  def up
    unless ActiveRecord::Base.connection.data_source_exists?("documentation_pages")
      create_table "documentation_pages" do |t|
        t.string :title, :permalink
        t.text :content, :compiled_content
        t.integer :parent_id, :position
        t.timestamps
      end
    end
  end
end
