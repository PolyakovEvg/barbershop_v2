class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
    create_table :barbers do |t|
    t.text :name
    t.timestamps()
    end
    
    Barber.create :name => 'Джесси Пинкман'
    Barber.create :name => 'Волтер Уайт'
    Barber.create :name => 'Густаво Фринк'
  end
end
