class AttachmentsController < ApplicationController
  def preview
    preview_data = ::ActiveStorage::Attachments::Preview.new(attachment).call
    send_data(
      preview_data,
      filename: attachment.image3.filename.to_s,
      type: 'image/jpeg'
    )
  end

  private

  def attachment
    @attachment ||= Fruit.find params["fruit_id"]
  end
end
