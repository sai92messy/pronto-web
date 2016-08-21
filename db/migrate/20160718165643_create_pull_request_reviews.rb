class CreatePullRequestReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :pull_request_reviews do |t|
      t.belongs_to :project, foreign_key: true
      t.hstore :payload

      t.timestamps
    end
  end
end
