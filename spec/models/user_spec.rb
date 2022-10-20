require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new(username: "yashee", email: "yashee@email.com", password: "####")}
  context "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a username" do
      subject.username=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a email" do
      subject.email=nil
      expect(subject).to_not be_valid
    end
    it "should contain a valid email" do
      subject.email="yashee@email.com"
      expect(subject).to be_valid
    end
  end
  context "Association" do
    it { should have_many(:tasks) }
  end
end

