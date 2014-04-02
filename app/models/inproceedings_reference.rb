class InproceedingsReference
	include ActiveModel::Model

	def self.get_available_attributes
		return ["author", "title", "booktitle", "year", "editor", "volume", "series", "pages", "address", "month", "organization", "publisher", "note", "key"]
	end

	def self.get_required_attributes
		return ["author", "title", "booktitle", "year"]
	end
end