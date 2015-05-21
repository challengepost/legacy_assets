require "legacy_assets/version"
require "sass"

module LegacyAssets
  if defined?(Rails)
    require "legacy_assets/engine"
  else
    Sass.load_paths << File.expand_path("../app/assets/stylesheets", __FILE__)
    Sass.load_paths << File.expand_path("../app/assets/images", __FILE__)
    Sass.load_paths << File.expand_path("../vendor/assets/stylesheets", __FILE__)
    Sass.load_paths << File.expand_path("../vendor/assets/fonts", __FILE__)
    Sass.load_paths << File.expand_path("../vendor/assets/javascripts", __FILE__)
  end
end
