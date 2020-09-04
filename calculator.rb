require 'rspec/autorun'

# Calculator method
class Calculator
  def add(a, b)
    a + b
  end

  def factorial(n)
    if n < 1
      1
    else
      n * factorial(n - 1)
    end

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

  describe '#factorial' do
    it 'returns 1 when given 0' do
      calc = Calculator.new

      expect(calc.factorial(0)).to eq(1)
    end
    it 'returns 120 when given 5' do
      calc = Calculator.new

      expect(calc.factorial(5)).to eq(120)
    end
  end
end