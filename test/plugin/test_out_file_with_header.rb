require "helper"
require "fluent/plugin/out_file_with_header.rb"

class FileWithHeaderOutputTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Output.new(Fluent::Plugin::FileWithHeaderOutput).configure(conf)
  end
end
