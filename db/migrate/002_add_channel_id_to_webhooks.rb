class AddChannelIdToWebhooks < ActiveRecord::Migration
  def change
    add_column :webhooks, :channel_id, :string
  end
end