class CategoryValidator < ActiveModel::Validator
    def validate(record)
      unless record.category.match?(/Fiction/)
      record.errors[:category] << "You need to categorize the post as fiction or nonfiction."
        end
    end
end
