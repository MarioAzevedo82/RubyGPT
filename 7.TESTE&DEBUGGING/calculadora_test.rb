require 'minitest/autorun'
require_relative 'calculadora'

class CalculadoraTest < Minitest::Test
  def setup
    @calc = Calculadora.new
  end

  def test_soma
    assert_equal 5, @calc.soma(2, 3), "Deveria retornar 5"
  end

  def test_subtracao
    assert_equal 1, @calc.subtracao(3, 2), "Deveria retornar 1"
  end
end

