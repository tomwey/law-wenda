class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions, :force => true do |t|
      t.string      :title, :null => false
      t.text        :body
      
      t.references  :node
      t.references  :user
      
      t.integer     :answers_count,       :default => 0
      t.integer     :visit_count,         :default => 0

      t.timestamps
      t.datetime    :answered_at
    end
    
    add_index :questions, :node_id
    add_index :questions, :user_id
    add_index :questions, :answered_at
  end
end
