module TestPassagesHelper
  def test_passage_result(result)
    if @test_passage.passed?
      content_tag(:span, result.to_s, style: 'color: green; font-size: 20px') <<
        content_tag(:p, ' Test passed!', style: 'font-size: 25px')
    else
      content_tag(:span, result.to_s, style: 'color: red; font-size: 20px') <<
        content_tag(:p, ' Test Failed!', style: 'font-size: 25px')
    end
  end
end
