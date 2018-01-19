class Initial < ActiveRecord::Migration[5.1]
  #  Rails 3.1 makes migrations smarter by providing a new change method. This method is preferred for writing
  #  constructive migrations (adding columns or tables).
  #  The migration knows how to migrate your database and reverse it when the migration is rolled
  #  back without the need to write a separate down method.
  def change
    create_table :visitors do |t|
      t.string :email
      t.text :content

      t.timestamps
    end
  end

  # A migration is a subclass of ActiveRecord::Migration that implements two methods: up (perform the required transformations) and down (revert them).
  #
  # Active Record provides methods that perform common data definition tasks in a database independent way (you’ll read about them in detail later):
  #
  # add_column
  # add_index
  # change_column
  # change_table
  # create_table
  # drop_table
  # remove_column
  # remove_index
  # rename_column
  #
  # Supported Types
  # Active Record supports the following database column types:
  #
  #                                                          :binary
  # :boolean
  # :date
  # :datetime
  # :decimal
  # :float
  # :integer
  # :primary_key
  # :string
  # :text
  # :time
  # :timesta
end
