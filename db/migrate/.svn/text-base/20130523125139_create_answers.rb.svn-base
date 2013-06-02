class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers, :force => true do |t|
      t.text        :body, :null => false
      t.references  :question
      t.references  :user
      
      t.timestamps
    end
  end

end
