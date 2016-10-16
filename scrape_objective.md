Utilize a public site to learn and understand extraction/scrapping techniques. The data will not be stored on a database, but rather, on a csv file - at least initially.

## Learning Goals

* Interact with a public site to retrieve jobs information
* Research different tools to interact with external sites
* Build a simple Command Line Application that allows me to grabs jobs from a public site.

## Tools

* a Ruby HTTP library (use one of the following)
  - [net/http](http://ruby-doc.org/stdlib/libdoc/net/http/rdoc/Net/HTTP.html)
  - [openuri](http://ruby-doc.org/stdlib/libdoc/open-uri/rdoc/OpenURI.html)
  - [httpclient](https://github.com/nahi/httpclient)
  - [httparty](https://github.com/jnunemaker/httparty#httparty)
* [json](http://ruby-doc.org/stdlib/libdoc/json/rdoc/JSON.html)

## Initial Concerns

1. Navigating the API and/or Timing out of the site
2. Not being able to specify the appropriate parameters
3. Encountering anti-scrapping software.

## References

https://www.distilled.net/resources/web-scraping-with-ruby-and-nokogiri-for-beginners/
https://github.com/sparklemotion/mechanize
