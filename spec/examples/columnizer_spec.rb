require File.dirname(__FILE__) + '/spec_helper'

describe Columnizer do

  it 'should be able to make one row' do
    data = [['hello', 'world']]
    Columnizer.columnize(data).should == "helloworld\n"
  end
  
  it 'should be able to make two equal sized columns' do
    data = [['hello'], ['world']]
    Columnizer.columnize(data).should == "hello\nworld\n"
  end

  it 'should be able to make two columns equal with different sizes' do
    data = [['astrology'], ['is']]
    Columnizer.columnize(data).should == "astrology\nis       \n"
  end

  it 'should be okay with rows with missing elements' do
    data = [['one', 'two'], ['three']]
    Columnizer.columnize(data).should == "one  two\nthree   \n"
  end

  it 'should be okay with three-wide rows data' do
    data = [['one', 'two', 'three'], ['four', 'five', 'six']]
    Columnizer.columnize(data).should == "one two three\nfourfivesix  \n"
  end

  it 'should be able to add padding to simple data' do
    data = [['one', 'two']]
    Columnizer.columnize(data, :padding => 3).should == "one   two\n"
  end

  it 'should be able to add padding to three-wide rows data' do
    data = [['one', 'two', 'three'], ['four', 'five', 'six']]
    Columnizer.columnize(data, :padding => 3).should == "one    two    three\nfour   five   six  \n"
  end

  it 'should be able to lead with an undersized column' do
    data = [['one'], ['two', 'three']]
    Columnizer.columnize(data).should == "one     \ntwothree\n"
  end

end
