require 'spec_helper'

describe "CipherController" do
  it "should encode HTML" do
    pending
    CipherController.should_receive(:encode).with("<b>Randy</b>")
    text = CipherController::encode("<b>Randy</b>")
    # text is nil ????????
    text.should == "<b>Randy</b>"
  end
end