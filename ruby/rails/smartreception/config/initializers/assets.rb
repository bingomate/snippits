# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( sip-0.7.2.min.js )
Rails.application.config.assets.precompile += %w( call.js )
Rails.application.config.assets.precompile += %w( keycard.js )
Rails.application.config.assets.precompile += %w( getListings.js )
Rails.application.config.assets.precompile += %w( client.css )
Rails.application.config.assets.precompile += %w( client.js )
Rails.application.config.assets.precompile += %w( motion.js )
#Rails.application.config.assets.precompile += %w( diff-cam-engine.js )
#Rails.application.config.assets.precompile += %w( site.js )
#Rails.application.config.assets.precompile += %w( site.css )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
