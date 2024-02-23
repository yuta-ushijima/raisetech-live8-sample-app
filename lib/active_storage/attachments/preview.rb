module ActiveStorage
  class Attachments::Preview
    def initialize(attachment)
      @attachment = attachment
    end

    def call
      document_preview =
        @attachment.image3
                   .blob
                   .representation(resize: '200x200')
                   .processed
      if document_preview.is_a?(ActiveStorage::Variant)
        variant = document_preview
      else
        variant = ActiveStorage::Variant.new(
          document_preview.image,
          document_preview.variation
        )
      end
      variant_preview = variant.processed
      p "=" * 100
      p ActiveStorage::Blob.find(document_preview.image.blob_id)
      p "=" * 100
      ActiveStorage::Blob.find(document_preview.image.blob_id).download
    end
  end
end
