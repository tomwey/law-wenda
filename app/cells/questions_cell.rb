# coding: utf-8
class QuestionsCell < BaseCell

  # 节点下面的最新问题
  cache :sidebar_for_node_recent_questions, :expires_in => 20.minutes do |cell, args|
    args[:question].id
  end
  
  def sidebar_for_node_recent_questions(args = {})
    question = args[:question]
    limit = question.answers_count > 20 ? 20 : question.answers_count
    limit = 1 if limit == 0
    @questions = question.node.questions.without_me(question).recent.limit(limit)
    render
  end

end
