RSpec.describe BeyondApi::PaymentMethods do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#activate" do
    end

    describe "#all" do
    end

    describe "#deactivate" do
    end

    describe "#find" do
    end

    describe "#sort" do
    end

    describe "#update" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#activate" do
    end

    describe "#all" do
    end

    describe "#deactivate" do
    end

    describe "#find" do
    end

    describe "#sort" do
    end

    describe "#update" do
    end
  end
end
