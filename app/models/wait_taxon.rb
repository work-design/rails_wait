class WaitTaxon < ApplicationRecord
  include RailsWait::WaitTaxon
end unless defined? WaitTaxon
