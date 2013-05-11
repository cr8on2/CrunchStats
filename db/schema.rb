# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130511180903) do

  create_table "entities", :force => true do |t|
    t.string  "name"
    t.string  "kind"
    t.string  "location"
    t.string  "status"
    t.string  "perma"
    t.integer "industry_id"
  end

  create_table "fundingrounds", :force => true do |t|
    t.string  "series"
    t.float   "amount"
    t.string  "currency"
    t.string  "date"
    t.integer "entity_receiver_id"
    t.integer "investment_id"
  end

  create_table "industries", :force => true do |t|
    t.string "category"
  end

  create_table "investments", :force => true do |t|
    t.integer "entity_funding_id"
    t.integer "funding_round_id"
  end

end
