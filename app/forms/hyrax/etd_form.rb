# Generated via
#  `rails generate hyrax:work Etd`
module Hyrax
  class EtdForm < Hyrax::Forms::WorkForm
    self.model_class = ::Etd
    self.terms += [:resource_type]
    self.terms += [:department]
    self.terms += [:school]
    self.terms += [:degree]
  end
end
