class NameValidator < ActiveModel::EachValidator
 
    def validate_each(record, attribute, value)

        if value.nil? || value.length < 2
            puts options.inspect
            message = options[:message] || 'doit comporter à minima 2 caractères.'
            record.errors.add(attribute, message)
        end
    end 
end    