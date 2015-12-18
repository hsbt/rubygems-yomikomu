require "rubygems/installer"

Gem.post_install do |installer|
  installer.spec.files.each do |f|
    next unless f =~ /.rb\z/
    ::Yomikomu.compile_and_store_iseq(f)
  end
end
