class CreateProjectsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :projects
  end
end
