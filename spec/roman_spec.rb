require File.expand_path(File.join(File.dirname(__FILE__),'../src/roman.rb'))

describe Roman do
  [
    [ 1, 'I'],
    [ 2, 'II'],
    [ 3, 'III'],
    [ 4, 'IV'],
    [ 5, 'V'],
    [ 6, 'VI'],
    [ 7, 'VII'],
    [ 8, 'VIII'],
    [ 9, 'IX'],
    [ 10, 'X'],
    [ 11, 'XI'],
    [ 12, 'XII'],
    [ 13, 'XIII'],
    [ 14, 'XIV'],
    [ 15, 'XV'],
    [ 16, 'XVI'],
    [ 17, 'XVII'],
    [ 18, 'XVIII'],
    [ 19, 'XIX'],
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
    [4000, '']
  ].each do |integer, roman|
    it "should convert #{integer}" do
      Roman.integer_to_roman(integer).should == roman
    end
  end
end
