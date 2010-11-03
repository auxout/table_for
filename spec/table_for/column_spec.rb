require 'spec_helper'

describe TableHelper::Column do
  # ActionView::Base instance
  let(:template) { ActionView::Base.new }
  # TableHelper::Column
  let(:klass) { TableHelper::Column }
  # Instance methods
  describe "an instance" do
    it_should_behave_like "Column class instance"
    # :title
    it ":title method should success" do
      build_column(klass, :id, :title => "Test").title.should eq("")
    end
    # :content_for
    it ":content_for method should raise error" do
      lambda do
        build_column(klass, :id, :title => "Test").content_for
      end.should raise_error(NoMethodError, "Use SimpleColumn or CallbackColumn")
    end
  end
end