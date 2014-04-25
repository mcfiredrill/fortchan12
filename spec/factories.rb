FactoryGirl.define do
  sequence(:name) { |n| "user #{n}" }

  factory :post do
    name { generate(:name) }
    body "abcdefg ~O_O~"
    topic { FactoryGirl.create(:topic) }

    factory :photo_post do
      photo_file_name "abc.jpg"
      photo_content_type "jpg"
      photo_file_size "128"
    end
  end

  factory :topic do
    created_at '2014-01-01 01:10:10'
  end
end
