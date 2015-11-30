class Assets
  def initialize(metronic_directory, rails_directory)
    @metronic_directory = metronic_directory
    @rails_directory = rails_directory
  end

  def copy_javascripts(*args)
    args.each do |file|
    FileUtils.cp(
      File.join(metronic_directory, file),
      File.join(rails_app_directory, 'vendor/assets/javascripts/'))
    end
  end

  def copy_css(*args)
    args.each do |file|
    FileUtils.cp(
      File.join(metronic_directory, file),
      File.join(rails_app_directory, 'vendor/assets/stylesheets/'))
    end    
  end
end