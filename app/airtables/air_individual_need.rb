# Dir.glob(File.expand_path(File.join('app', 'airtables', '*.rb')), &method(:require))

class AirIndividualNeed < AirTable
  self.table_name = "Individual"
  self.base_key = ENV['AIRTABLE_BASE']

  @model = "Need"
  @fields = {
    "Need" => "name",
    "Taxonomy" => :need_categories,
    "Initiatives" => :initiatives
  }
  @store_air_type = true

def blank_record?
    self["Need"].blank?
  end


end
