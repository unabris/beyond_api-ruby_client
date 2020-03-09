# frozen_string_literal: true

RSpec.describe BeyondApi::Orders do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#active_payment_process" do
      it "returns a successful response"
    end

    describe "#active_refund_process" do
      it "returns a successful response"
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.orders.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#cancel" do
    end

    describe "#cancelation_process" do
      it "returns a successful response"
    end

    describe "#cancelation_processes" do
      it "returns a successful response"
    end

    describe "#capture_payment_process" do
    end

    describe "#create_cancelation_process" do
    end

    describe "#create_invoice" do
    end

    describe "#create_return_process" do
    end

    describe "#create_shipping_process" do
    end

    describe "#events" do
      it "returns a successful response"
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#mark_payment_process_as_paid" do
    end

    describe "#mark_payment_process_as_voided" do
    end

    describe "#mark_refund_process_as_paid" do
    end

    describe "#mark_shipping_process_as_delivered" do
    end

    describe "#mark_shipping_process_as_shipped" do
    end

    describe "#payment_process" do
      it "returns a successful response"
    end

    describe "#payment_processes" do
      it "returns a successful response"
    end

    describe "#processes" do
      it "returns a successful response"
    end

    describe "#refund_process" do
      it "returns a successful response"
    end

    describe "#refund_processes" do
      it "returns a successful response"
    end

    describe "#return_process" do
      it "returns a successful response"
    end

    describe "#return_processes" do
      it "returns a successful response"
    end

    describe "#search_by_cart_id" do
      it "returns a successful response"
    end

    describe "#search_order_number_by_cart_id" do
      it "returns a successful response"
    end

    describe "#send_order_document" do
    end

    describe "#shipping_process" do
      it "returns a successful response"
    end

    describe "#shipping_processes" do
      it "returns a successful response"
    end

    describe "#update_billing_address" do
    end

    describe "#update_order_note" do
    end

    describe "#update_shipping_address" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#active_payment_process" do
      it "returns a successful response"
    end

    describe "#active_refund_process" do
      it "returns a successful response"
    end

    describe "#all" do
      it "returns an unauthorized error" do
        expect(@session.orders.all.error_id).to eq("unauthorized")
      end
    end

    describe "#cancel" do
    end

    describe "#cancelation_process" do
      it "returns a successful response"
    end

    describe "#cancelation_processes" do
      it "returns a successful response"
    end

    describe "#capture_payment_process" do
    end

    describe "#create_cancelation_process" do
    end

    describe "#create_invoice" do
    end

    describe "#create_return_process" do
    end

    describe "#create_shipping_process" do
    end

    describe "#events" do
      it "returns a successful response"
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#mark_payment_process_as_paid" do
    end

    describe "#mark_payment_process_as_voided" do
    end

    describe "#mark_refund_process_as_paid" do
    end

    describe "#mark_shipping_process_as_delivered" do
    end

    describe "#mark_shipping_process_as_shipped" do
    end

    describe "#payment_process" do
      it "returns a successful response"
    end

    describe "#payment_processes" do
      it "returns a successful response"
    end

    describe "#processes" do
      it "returns a successful response"
    end

    describe "#refund_process" do
      it "returns a successful response"
    end

    describe "#refund_processes" do
      it "returns a successful response"
    end

    describe "#return_process" do
      it "returns a successful response"
    end

    describe "#return_processes" do
      it "returns a successful response"
    end

    describe "#search_by_cart_id" do
      it "returns a successful response"
    end

    describe "#search_order_number_by_cart_id" do
      it "returns a successful response"
    end

    describe "#send_order_document" do
    end

    describe "#shipping_process" do
      it "returns a successful response"
    end

    describe "#shipping_processes" do
      it "returns a successful response"
    end

    describe "#update_billing_address" do
    end

    describe "#update_order_note" do
    end

    describe "#update_shipping_address" do
    end
  end
end
