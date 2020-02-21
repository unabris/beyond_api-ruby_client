RSpec.describe BeyondApi::Signers do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.signers.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#create" do
    end

    describe "#delete" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns an unauthorized error" do
        expect(@session.signers.all.error_id).to eq("unauthorized")
      end
    end

    describe "#create" do
    end

    describe "#delete" do
    end
  end
end
