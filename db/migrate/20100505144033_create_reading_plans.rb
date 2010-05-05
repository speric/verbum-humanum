class CreateReadingPlans < ActiveRecord::Migration
  def self.up
    create_table :reading_plans, :primary_key => :id, :options => "auto_increment = 1000" do |t|
      t.integer       :id
      t.integer       :amazon_asin
      t.string         :book_title
      t.string         :book_author
      t.integer       :duration_count
      t.integer       :duration_multiplier
      t.string         :creator, :limit => 30, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :reading_plans
  end
end
