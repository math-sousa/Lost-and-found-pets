#factory to create a comment
FactoryBot.define do
    factory :comment do
      content {'Default'}
      perfil_id {''}
      post_id {''}
    end
  end