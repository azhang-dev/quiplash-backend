class QuestionbankSerializer < ActiveModel::Serializer
    attributes :user_id, :name, :questions, :id
end