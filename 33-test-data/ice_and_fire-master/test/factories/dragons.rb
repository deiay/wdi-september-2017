FactoryBot.define do
  factory :dragon do
    name "Trogdor"
    age { (2..100).to_a.sample }
  end
end
