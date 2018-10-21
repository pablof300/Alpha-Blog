class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      validates :title, presence: true, length: {minimum: 3, maximum: 50}
      validates :description, presence:true, length: {minimum: 3, maximum: 50}

    end
  end
end
