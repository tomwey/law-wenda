require 'test_helper'

class QuestionCellTest < Cell::TestCase
  test "sidebar_for_node_recent_questions" do
    invoke :sidebar_for_node_recent_questions
    assert_select "p"
  end
  

end
