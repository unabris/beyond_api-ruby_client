RSpec.describe BeyondApi::Users do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#add_roles" do
    end

    describe "#all" do
    end

    describe "#change_password" do
    end

    describe "#change_username" do
    end

    describe "#create" do
    end

    describe "#enable_support_access" do
    end

    describe "#disable_support_access" do
    end

    describe "#find" do
    end

    describe "#roles" do
    end

    describe "#search_by_username" do
    end

    describe "#send_email_address_change" do
    end

    describe "#send_reset_password_email" do
    end

    describe "#set_roles" do
    end

    describe "#support_access" do
    end

    describe "#verify_password" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#add_roles" do
    end

    describe "#all" do
    end

    describe "#change_password" do
    end

    describe "#change_username" do
    end

    describe "#create" do
    end

    describe "#enable_support_access" do
    end

    describe "#disable_support_access" do
    end

    describe "#find" do
    end

    describe "#roles" do
    end

    describe "#search_by_username" do
    end

    describe "#send_email_address_change" do
    end

    describe "#send_reset_password_email" do
    end

    describe "#set_roles" do
    end

    describe "#support_access" do
    end

    describe "#verify_password" do
    end
  end
end
