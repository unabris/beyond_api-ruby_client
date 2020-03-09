# frozen_string_literal: true

RSpec.describe BeyondApi::Customers do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.customers.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#create" do
      it "returns a successful response" do
        expect(@session.customers.create(fixture("customers/create.yml"))).not_to be_instance_of(BeyondApi::Error)
      end

      it "is invalid with an existing email" do
        customer = @session.customers.create(fixture("customers/create.yml"))
        expect(@session.customers.create(fixture("customers/create.yml").merge("email" => customer.email))).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#delete" do
      it "returns a successful response" do
        customer = @session.customers.create(fixture("customers/create.yml"))
        expect(@session.customers.delete(customer.id)).to be(true)
      end
    end

    describe "#find" do
      it "returns a successful response" do
        customer = @session.customers.create(fixture("customers/create.yml"))
        expect(@session.customers.find(customer.id).id).to eq(customer.id)
      end
    end

    describe "#update" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns an unauthorized error" do
        expect(@session.customers.all.error_id).to eq("unauthorized")
      end
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#find" do
      it "returns a successful response"
    end

    describe "#update" do
    end
  end
end
