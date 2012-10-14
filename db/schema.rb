# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121014015610) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.boolean  "choice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "captain_nominations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "nominee_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contests", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "prize"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_prize"
  end

  create_table "final_team_answers", :force => true do |t|
    t.integer  "team_id"
    t.integer  "question_id"
    t.integer  "yes_number"
    t.integer  "no_number"
    t.boolean  "final_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "html_codes", :force => true do |t|
    t.string   "labelString"
    t.text     "CodeString",  :limit => 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", :force => true do |t|
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pledges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "contest_id"
    t.integer  "team_id"
    t.string   "charity"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_suggestions", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "questions", :force => true do |t|
    t.string   "content"
    t.boolean  "answer"
    t.date     "show_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "category_name"
    t.integer  "contest_id"
    t.string   "answer_url"
  end

  create_table "scale_data", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_answers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "team_id"
    t.boolean  "choice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_comments", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "team_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_scores", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "team_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "team_name"
    t.integer  "captain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.datetime "nomination_period_started"
    t.string   "nominated_charity"
    t.boolean  "approved"
    t.string   "nominated_charity_site"
    t.string   "charity_site"
    t.string   "charity"
  end

  create_table "thoughts", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_comments", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_scores", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",                              :default => false
    t.string   "display_name"
    t.string   "real_name"
    t.date     "birthday"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wiki_answers", :force => true do |t|
    t.integer  "wiki_question_id"
    t.integer  "user_id"
    t.boolean  "choice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wiki_comments", :force => true do |t|
    t.integer  "wiki_question_id"
    t.integer  "user_id"
    t.string   "content"
    t.boolean  "display"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wiki_questions", :force => true do |t|
    t.string   "content"
    t.string   "url"
    t.boolean  "answer"
    t.string   "show_category"
    t.boolean  "show"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_name"
  end

end
