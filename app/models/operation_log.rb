class OperationLog < ApplicationRecord
  belongs_to :user
  belongs_to :article, required: false
  belongs_to :folder, required: false
  belongs_to :sub_article, required: false
  belongs_to :request, required: false
end
