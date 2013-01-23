class Background < ActiveRecord::Base
  attr_accessible :name, :bg, :selected

  has_attached_file :bg,
    :storage => :s3,
    :s3_storage_class => :reduced_redundancy,
    :bucket => 'styleblast',
    :path => ':attachment/:style/:basename.:extension',
    :s3_credentials => {
      :access_key_id => ENV['OKFOCUS_S3_KEY'],
      :secret_access_key => ENV['OKFOCUS_S3_SECRET']
    }

end
