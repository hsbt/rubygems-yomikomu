require "rubygems/installer"
require 'yomikomu'

Gem.post_install do |installer|
  installer.spec.full_require_paths.each do |path|
    Dir.glob(path + "/**/*.rb").each do |f|
      next unless f =~ /.rb\z/
      ::Yomikomu.compile_and_store_iseq(f)
    end
  end
end
