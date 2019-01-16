# frozen_string_literal: true

class ApplicationRecord
  include Mongoid::Document
  self.abstract_class = true
end
