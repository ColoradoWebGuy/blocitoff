require 'rails_helper'

RSpec.describe Checklist, type: :model do
  let(:user) { create(:user) }
  let(:checklist) { create(:checklist) }

  it { should belong_to(:user) }
  it { should validate_presence_of(:user) }

  describe "attributes" do
    it "should respond to title" do
      expect(checklist).to respond_to(:title)
    end
    it "should respond to body" do
      expect(checklist).to respond_to(:checked)
    end
  end
end
