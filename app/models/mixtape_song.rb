class MixtapeSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :mixtape
end
