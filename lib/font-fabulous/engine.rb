module FontFabulous
  module Rails
    class Engine < ::Rails::Engine
      initializer 'font-fabulous.assets.precompile', :group => :all do |app|
        %w(stylesheets fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        %w(eot svg ttf woff).each do |ext|
          app.config.assets.precompile << "font-fabulous/font-fabulous.#{ext}"
        end
      end
    end
  end
end
