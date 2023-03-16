class AddInvoicePaymentSuccessAndFailWhsToUsers < ActiveRecord::Migration[6.1]
  def change
    # ewmove exists columns if if already exists and add back again due to production issue
    ewmovable_cols = %i[invoice_payment_webhook invoice_paymen_fail_webhook
                        invoice_payment_fail_wh invoice_payment_success_wh]
    ewmovable_cols.each do |col|
      remove_column :users, col if column_exists? :users, col
    end
    change_table :users, bulk: true do |t|
      t.jsonb :invoice_payment_fail_wh
      t.jsonb :invoice_payment_success_wh
    end
  end
end
