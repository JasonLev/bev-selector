require 'spec_helper'

describe Beverage do
  let(:beverage) {
    Beverage.create(selection: "Beer", user_id: 3)}

  describe 'should have a:' do
    it 'user id' do
      beverage.respond_to?(:user_id).should == true
    end

    # it 'selection' do
    #   beverage.respond_to?(:selection).should == true
    # end
  end

  # describe 'should NOT have a:' do
  #   it 'user id of nil' do
  #     beverage.user_id.should_not == nil
  #   end

  #   it 'selection of nil' do
  #     beverage.selection.should_not == nil
  #   end
  # end


  describe 'should validate the presence of:' do
    it ':user_id' do
      should validate_presence_of :user_id
    end

  #   it ':selection' do
  #     should validate_presence_of :selection
  #   end
  end

  # describe "relationship to other models" do
  #   it 'is a join table that belongs to :user' do
  #     should belong_to(:user)
  #   end
  # end
end

