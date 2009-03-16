require 'rubygems'
require 'spec'

class Item
  attr_reader :cost
  
  def initialize(name, cost)
    @name = name
    @cost = cost
  end
end

class TaxCalculator
  RATES = {"CA" => 7.75}
  
  def self.calculate(subtotal, us_state)
    (subtotal * RATES[us_state]).round / 100.0
  end
end

class Order
  def initialize(us_state)
    @us_state = us_state
    @subtotal = 0
  end
  
  def add_item(item, quantity)
    @subtotal += (item.cost * quantity)
  end
  
  def tax
    TaxCalculator.calculate @subtotal, @us_state
  end
end

describe Order, "calculating tax" do
  it "should add tax onto the total" do
    o = Order.new "CA"
    bacon = Item.new "Chunky bacon", 42
    o.add_item bacon, 1
    TaxCalculator.should_receive(:calculate).with(42, "CA").and_return 3.26
    o.tax.should == 3.26
  end
end