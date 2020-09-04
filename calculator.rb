require 'rspec/autorun'

# Calculator method
class Calculator
  def add(a, b)
    a + b
  end
end

describe Calculator do
  describe '#add' do
    it 'returns the sum of its two arguments' do
      calc = Calculator.new

      expect(calc.add(4, 8)).to eq(12)
    end
    it "returns the sum of two different arguments" do
      calc = Calculator.new

      expect(calc.add(1, 2)).to eq(3)
    end
  end

end
