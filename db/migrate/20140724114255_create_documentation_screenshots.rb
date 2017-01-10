class CreateDocumentationScreenshots < ActiveRecord::Migration
  def change
    unless ActiveRecord::Base.connection.data_source_exists?("documentation_screenshots")
      create_table :documentation_screenshots do |t|
        t.string :alt_text
      end
    end
  end
end
