class Character < ApplicationRecord
  VALID_CLANS = [ "Banu Haqim", "Brujah", "Gangrel", "Hecata", "Lasombra", "Malkavian", "The Ministry", "Nosferatu", "Ravnos", "Toreador", "Tremere", "Tzimisce", "Ventrue", "Caitiff", "Thin-blood" ]
  belongs_to :player
end
