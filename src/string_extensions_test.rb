require 'test/unit'
require './string_extensions.rb'

class TestStringExtensions < Test::Unit::TestCase
  def test_han2zen
    assert_equal('Hello,World!'.han2zen, 'Ｈｅｌｌｏ，Ｗｏｒｌｄ！')
    assert_equal('1234567890'.han2zen, '１２３４５６７８９０')
    assert_equal('ｶﾀｶﾅ'.han2zen, 'カタカナ')
    assert_equal('ｶﾀkana123'.han2zen, 'カタｋａｎａ１２３')
  end

  def test_zen2han
    assert_equal('Ｈｅｌｌｏ，Ｗｏｒｌｄ！'.zen2han, 'Hello,World!')
    assert_equal('１２３４５６７８９０'.zen2han, '1234567890')
    assert_equal('カタカナ'.zen2han, 'ｶﾀｶﾅ')
    assert_equal('ガギグゲゴ'.zen2han, 'ｶﾞｷﾞｸﾞｹﾞｺﾞ')
    assert_equal('パピプペポ'.zen2han, 'ﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟ')
    assert_equal('カタkana１２３'.zen2han, 'ｶﾀkana123')
  end
end

