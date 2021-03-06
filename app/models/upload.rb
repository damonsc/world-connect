class Upload < ApplicationRecord

mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true # Make sure the owner's name is present.
   belongs_to :user, optional:true
   belongs_to :admin, optional:true
end
