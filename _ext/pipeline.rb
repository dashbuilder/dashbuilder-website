require File.expand_path '../haml/filters/asciidoc.rb', __FILE__

Awestruct::Extensions::Pipeline.new do
	helper Awestruct::Extensions::Partial
	helper Awestruct::Extensions::Relative
	extension Awestruct::Extensions::DataDir.new
	extension Awestruct::Extensions::Posts.new( '/news', :posts )
	extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 5 )
end

