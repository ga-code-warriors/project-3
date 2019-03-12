class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  require 'carrierwave/orm/activerecord'
  # encoded = ActiveRecord::Base.connection.escape_bytea(@image)
end
