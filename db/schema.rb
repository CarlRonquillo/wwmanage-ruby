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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181106181629) do

  create_table "category", primary_key: "CategoryID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "Category", limit: 20, null: false
  end

  create_table "media", primary_key: "MediaID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "Title", limit: 50, null: false
    t.string "ContentType", limit: 2, null: false
    t.text "FileName"
    t.text "URL"
    t.date "CreatedDate"
    t.integer "FKCreatedByID"
    t.integer "FKProjectID"
  end

  create_table "mmprojectcategory", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "FKProjectID", null: false
    t.integer "FKCategoryID", null: false
  end

  create_table "opal_district", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "DistrictID"
  end

  create_table "opal_field", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "FieldID"
  end

  create_table "opal_region", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "RegionID"
  end

  create_table "person", primary_key: "PersonID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "FK_NazAccountID"
    t.string "FamilyName", limit: 30
    t.string "GivenName", limit: 30
    t.string "EmailAddress", limit: 128
  end

  create_table "project", primary_key: "ProjectID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "ProjectName", limit: 50, null: false
    t.text "Description", limit: 4294967295
    t.text "VisionObjective", limit: 4294967295
    t.string "Country", limit: 3
    t.string "City", limit: 50
    t.string "ArrivalCity", limit: 50
    t.decimal "EstimatedCost", precision: 2, scale: 2
    t.decimal "RequestedProjectFunds", precision: 2, scale: 2
    t.decimal "IndividualCostPerDay", precision: 2, scale: 2
    t.string "Duration", limit: 20
    t.string "Active", limit: 1
    t.string "YouthTeamsAccepted", limit: 1
    t.date "ApprovalDate"
    t.date "ExpirationDate"
    t.date "CreatedDate"
    t.date "ModifiedDate"
    t.integer "FKRegionID"
    t.integer "FKFieldID"
    t.integer "FKDistrictID"
    t.integer "FKSiteCoordinatorID"
    t.integer "FKCreatedByID"
    t.string "FKModifiedByID", limit: 50
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
