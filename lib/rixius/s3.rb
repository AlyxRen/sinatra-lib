module AWS
  module S3
    class S3Object
      class << self
        alias :rixius_original_store, :store
        def store key, data, bucket = nil, options = {}
          if options['Cache-Control'].blank?
            options['Cache-Control'] = 'max-age=315360000'
          end
          rixius_original_store key, data, bucket, options
        end
      end
    end
  end
end
