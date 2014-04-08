require File.expand_path '../haml/filters/asciidoc.rb', __FILE__

Awestruct::Extensions::Pipeline.new do
          extension Awestruct::Extensions::Posts.new( '/news' ) 
	  extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 5)
	# extension Awestruct::Extensions::Tagger.new(:posts, '/blog/index', '/blog/tags', :per_page => 5)
	  extension Awestruct::Extensions::Disqus.new
	# extension Awestruct::Extensions::Atomizer.new(:posts, '/blog/news.atom')
        
        # Indexifier moves HTML files to their own directory to achieve "pretty" URLs (e.g., features.html -> /features/index.html)
          #extension Awestruct::Extensions::Indexifier.new

        # Helpers
	  helper Awestruct::Extensions::Partial
	  helper Awestruct::Extensions::Relative

end