require 'rails_helper'

RSpec.describe Checklist, type: :model do
  let(:checklist) { Checklist.create!(title: "Do Laundry", checked: false) }

  describe "attributes" do
    it "should respond to title" do
      expect(checklist).to respond_to(:title)
    end
    it "should respond to body" do
      expect(checklist).to respond_to(:checked)
    end
  end
end
