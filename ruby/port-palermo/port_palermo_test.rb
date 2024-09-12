require 'minitest/autorun'
require_relative 'port_palermo'

class PortPalermoTest < Minitest::Test
  def test_identifier
    # skip
    assert_equal :PALE, Port::IDENTIFIER
  end

  def test_get_identifier_for_hamburg
    # skip
    assert_equal :HAMB, Port.get_identifier("Hamburg")
  end

  def test_get_identifier_for_rome
    # skip
    assert_equal :ROME, Port.get_identifier("Rome")
  end

  def test_get_identifier_for_kiel
    # skip
    assert_equal :KIEL, Port.get_identifier("Kiel")
  end

  def test_get_terminal_for_oil
    # skip
    assert_equal :A, Port.get_terminal(:OIL123)

  end
  def test_get_terminal_for_gas
    # skip
    assert_equal :A, Port.get_terminal(:GAS674)
  end

  def test_get_terminal_for_cars
    # skip
    assert_equal :B, Port.get_terminal(:CAR942)
  end

  def test_get_terminal_for_clothes
    # skip
    assert_equal :B, Port.get_terminal(:CLO315)
  end
end
