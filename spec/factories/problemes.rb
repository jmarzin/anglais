# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :probleme do
    texte "MyText"
    corrige false
    date_correction "2014-06-15 20:24:38"
  end
end
