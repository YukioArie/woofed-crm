# == Schema Information
#
# Table name: stages
#
#  id          :bigint           not null, primary key
#  name        :string           default(""), not null
#  order       :integer          default(1), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  pipeline_id :bigint           not null
#
# Indexes
#
#  index_stages_on_account_id   (account_id)
#  index_stages_on_pipeline_id  (pipeline_id)
#
# Foreign Keys
#
#  fk_rails_...  (pipeline_id => pipelines.id)
#
class Stage < ApplicationRecord
  belongs_to :pipeline
  belongs_to :account
  has_many :deals, dependent: :destroy
end
