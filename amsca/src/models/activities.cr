class Activities < Granite::Base
  connection pg
  table activities

  column id : Int64, primary: true
  column description : String?
  column owner : String?
  timestamps
end
