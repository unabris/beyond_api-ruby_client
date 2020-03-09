module FixturesHelper
  def fixture(fixture_path)
    YAML.load(ERB.new(File.read("spec/fixtures/#{fixture_path}")).result)
  end
end
