class CreateNiftyAttachmentsTable < ActiveRecord::Migration

  def up
    unless ActiveRecord::Base.connection.data_source_exists?("nifty_attachments")
      create_table :nifty_attachments do |t|
        t.integer :parent_id
        t.string  :parent_type, :token, :digest, :role, :file_name, :file_type
        t.binary :data, :limit => 10.megabytes
        t.timestamps
      end
    end
  end

  def down
    if ActiveRecord::Base.connection.data_source_exists?("nifty_attachments")
      drop_table :nifty_attachments
    end
  end
end
