# Capture deatails if stripe invoice.payment sucess or not
class AddInvoicePaymentWebhookToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :invoice_payment_webhook, :jsonb, default: '{}'
  end
end
