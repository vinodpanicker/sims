class AddAttachmentToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :attachment, :string
  end
end
