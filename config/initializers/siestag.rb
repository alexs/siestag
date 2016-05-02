Siestag::Application.configure do
  config.before_initialize do
    config.autoload_paths += %W(#{config.root}/lib)

    %w(site_config).each do |file|
      file_path = Rails.root.to_s + '/lib/' + file
      require file_path if File.exist? "#{file_path}.rb"
    end
  end
end
