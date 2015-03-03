require File.expand_path(File.join(File.dirname(__FILE__),'../src/roman.rb'))

describe Roman do
  [
    [ 1, 'I'],
    [ 2, 'II'],
    [ 5, 'V'],
    [ 9, 'IX'],
    [ 10, 'X'],
    [ 39, 'XXXIX'],
    [ 40, 'XL'],
    [ 50, 'L'],
    [ 90, 'XC'],
    [ 100, 'C'],
    [ 400, 'CD'],
    [ 500, 'D'],
    [ 900, 'CM'],
    [ 1000, 'M'],
    [ 3999, 'MMMCMXCIX'],
    [ 0, ''],
    [ 404, 'CDIV'],
    [4000, nil]
  ].each do |integer, roman|
    it "should convert #{integer}" do
      Roman.integer_to_roman(integer).should == roman
    end
  end
end
