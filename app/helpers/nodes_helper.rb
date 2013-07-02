# coding: utf-8
module NodesHelper
  
  def render_node_name(node)
    link_to(node.name, node_questions_path(node))
  end
  
end