module PaymentInvoiceWebhookHandle
  extend ActiveSupport::Concern
  included do
    # before_action :authenticate_user!
  end

  def test_concerns
    raise 'testing concenr'.inspect
  end

  protected
  # methods goes here
  private
  # methods goes here
end
