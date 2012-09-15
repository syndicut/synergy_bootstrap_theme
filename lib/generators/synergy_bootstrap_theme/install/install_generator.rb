module SynergyBootstrapTheme
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_bootstrap
        generate "bootstrap:install"
      end

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require bootstrap/load-image.min\n"+
                                                           "//= require bootstrap/image-gallery.min\n"+
                                                           "//= require store/rails\n"+
                                                           "//= require store/theme\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css",
                          " *= require store/main\n"+
                          " *= require bootstrap/image-gallery\n",
                          :before => /\*\//, 
                          :verbose => true
      end

      def add_favicon
        run 'rake synergy_default_theme:install:assets'
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=synergy_default_theme'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end