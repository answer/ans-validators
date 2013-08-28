# -*- coding: utf-8 -*-

class ConfirmationOfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    target_attribute = attribute.to_s.gsub /_confirmation$/, ""
    target_value = record.send(target_attribute)
    if target_value && target_value != value
      human_attribute_name = record.class.human_attribute_name(target_attribute)
      record.errors.add(:"#{attribute}", :confirmation_of, options.merge(attribute: human_attribute_name))
    end
  end
end
