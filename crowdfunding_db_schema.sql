-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Campaign" (
    "cf_id" int64   NOT NULL,
    "contact_id" int64   NOT NULL,
    "company_name" object   NOT NULL,
    "description" object   NOT NULL,
    "goal" float64   NOT NULL,
    "pledged" foat64   NOT NULL,
    "outcome" object   NOT NULL,
    "backers_count" int64   NOT NULL,
    "country" object   NOT NULL,
    "launched_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "category_id" object   NOT NULL,
    "subcategory_id" object   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" object   NOT NULL,
    "category" object   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" object   NOT NULL,
    "subcategory" object   NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" string   NOT NULL,
    "first_name" object   NOT NULL,
    "last_name" object   NOT NULL,
    "email" object   NOT NULL
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

CREATE INDEX "idx_Campaign_cf_id"
ON "Campaign" ("cf_id");

CREATE INDEX "idx_Category_category_id"
ON "Category" ("category_id");

CREATE INDEX "idx_Subcategory_subcategory_id"
ON "Subcategory" ("subcategory_id");

CREATE INDEX "idx_Contacts_contact_id"
ON "Contacts" ("contact_id");

