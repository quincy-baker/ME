module ApplicationHelper

	def yaml_load(type)
    YAML::load_file(fixture(type)).values
  end

  def fixture(type)
    File.join(Rails.root, 'db', 'fixtures', "#{type}.yml")
  end
  
end
