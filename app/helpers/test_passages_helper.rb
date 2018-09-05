module TestPassagesHelper
  def test_passage_result(result)
    lam = ->(x) { content_tag(:p, x, style: 'font-size: 25px') }
    if @test_passage.passed?
      content_tag(:span, result.to_s, style: 'color: green; font-size: 20px') <<
        lam.call(' Test passed!')
    else
      content_tag(:span, result.to_s, style: 'color: red; font-size: 20px') <<
        lam.call(' Test Failed!')
    end
  end
end
