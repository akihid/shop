# frozen_string_literal: true

FactoryBot.define do

  factory :item do
    sequence(:title) { |n| "Title#{n}" }
    sequence(:description) { |n| "Description#{n}" }
    price { 3000 }
    stock { 10 }
    association :item_category
    association :item_seller

    trait :with_image do
      after :create do |item|
        create(:item_image, item: item)
      end
    end

    trait :with_author do
      after :create do |item|
        item_author = create(:item_author)
        create(:item_authors_item, item_author: item_author, item: item)
      end
    end

    trait :with_isbn_code do
      after :create do |item|
        create(:item_isbn_code, item: item)
      end
    end
  end
end