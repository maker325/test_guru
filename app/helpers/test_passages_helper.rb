module TestPassagesHelper
  def test_passage_result(result)
    content_tag(:span, result.to_s, style: 'color: green; font-size: 20px') << if @test_passage.passed?
                                                                                 content_tag(:p, ' Test passed!')
                                                                               else
                                                                                 content_tag(:p, ' Test Failed!')
                                                              end
  end
end
