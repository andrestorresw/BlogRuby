class Article < ApplicationRecord
    has_rich_text :content #Le indicamos al modelo que tiene un campo texto enriquecido y le ponemos un identificador con nombre arbitratio (:content)
end
