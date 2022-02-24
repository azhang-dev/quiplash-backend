class AddVoteToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :vote, :integer, :default => 0
  end
end
