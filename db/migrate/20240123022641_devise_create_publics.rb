# frozen_string_literal: true

class DeviseCreatePublics < ActiveRecord::Migration[7.0]
  def change
    create_table :publics do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :user_id
      t.timestamps null: false
    end

    add_index :publics, :email,                unique: true
    add_index :publics, :reset_password_token, unique: true
    # add_index :publics, :confirmation_token,   unique: true
    # add_index :publics, :unlock_token,         unique: true
  end
end
