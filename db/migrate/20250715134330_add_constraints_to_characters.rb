class AddConstraintsToCharacters < ActiveRecord::Migration[8.0]
  def change
    execute <<-SQL
      ALTER TABLE characters
      ADD CONSTRAINT check_valid_clan
      CHECK (clan IN ('Banu Haqim', 'Brujah','Gangrel','Hecata','Lasombra','Malkavian',
      'The Ministry', 'Nosferatu','Ravnos', 'Toreador', 'Tremere', 'Tzimisce', 'Ventrue','Caitiff', 'Thin-blood'))
    SQL
  end
end
