module SimpleFormFancyUploads
  class AttachmentPreviewInput < SimpleForm::Inputs::FileInput
    def input(wrapper_options=nil)
      out = ''
      if object.send("#{attribute_name}?")
        out << template.link_to(object.send(attribute_name).original_filename,
          object.send(attribute_name).expiring_url, class: "field__input attach_preview")
      end
      (out << super).html_safe
    end
  end
end
