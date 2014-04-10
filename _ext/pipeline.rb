require File.expand_path '../haml/filters/asciidoc.rb', __FILE__

Awestruct::Extensions::Pipeline.new do
          extension Awestruct::Extensions::Posts.new( '/news', :posts ) 
	  extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 3)
	  extension Awestruct::Extensions::Tagger.new(:posts, '/news/index', '/news/tags', :per_page=>3 )
	  extension Awestruct::Extensions::TagCloud.new(:posts, '/news/tags/index.html')
	  extension Awestruct::Extensions::Disqus.new
	# extension Awestruct::Extensions::Atomizer.new(:posts, '/blog/news.atom')
        
        # Indexifier moves HTML files to their own directory to achieve "pretty" URLs (e.g., features.html -> /features/index.html)
          #extension Awestruct::Extensions::Indexifier.new

        # Helpers
	  helper Awestruct::Extensions::Partial
	  helper Awestruct::Extensions::Relative

end