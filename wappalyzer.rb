class Wappalyzer
  CATEGORIES = [
    'cms',
    'message-boards',
    'database-managers',
    'documentation-tools',
    'widgets',
    'web-shops',
    'photo-galleries',
    'wikis',
    'hosting-panels',
    'analytics',
    'blogs',
    'javascript-frameworks',
    'issue-trackers',
    'video-players',
    'comment-systems',
    'captchas',
    'font-scripts',
    'web-frameworks',
    'miscellaneous',
    'editors',
    'lms',
    'web-servers',
    'cache-tools',
    'rich-text editors',
    'javascript-graphics',
    'mobile-frameworks',
    'programming-languages',
    'operating-systems',
    'search-engines'
  ]

  APPS = {
    '1und1' =>                            { cats: [  6 ], url: /\/shop\/catalog\/browse\?sessid\=/ },
    '1C-Bitrix' =>                        { cats: [  1 ], html: /<link[^>]+components\/bitrix/i, script: /1c\-bitrix/i },
    '2z Project' =>                       { cats: [  1 ], meta: { 'generator' => /2z project/i } },
    'AddThis' =>                          { cats: [  5 ], script: /addthis\.com\/js/, env: /^addthis$/ },
    'Adobe GoLive' =>                     { cats: [ 20 ], meta: { 'generator' => /Adobe GoLive/i } },
    'Advanced Web Stats' =>               { cats: [ 10 ], html: /aws.src = [^<]+caphyon\-analytics/i },
    'Ametys' =>                           { cats: [  1 ], meta: { 'generator' => /(Ametys|Anyware Technologies)/i }, script: /STools.js/ },
    'Amiro.CMS' =>                        { cats: [  1 ], meta: { 'generator' => /Amiro/i } },
    'AOLserver' =>                        { cats: [ 22 ], headers: { 'Server' => /AOLserver/i } },
    'Apache' =>                           { cats: [ 22 ], headers: { 'Server' => /(Apache($|[^-])|HTTPD)/i } },
    'Apache Tomcat' =>                    { cats: [ 22 ], headers: { 'Server' => /Apache-Coyote/i } },
    'Apache Traffic Server' =>            { cats: [ 22 ], headers: { 'Server' => /YTS/i } },
    'Arc Forum' =>                        { cats: [  2 ], html: /ping\.src = node\.href;/ },
    'ATG Web Commerce' =>                 { cats: [  6 ], headers: { 'X-ATG-Version' => /ATG/i }, html: /<[^>]+_DARGS/ },
    'Atlassian Confluence' =>             { cats: [  8 ], html: /Powered by <a href=.http:\/\/www\.atlassian\.com\/software\/confluence/i },
    'Atlassian Jira' =>                   { cats: [ 13 ], env: /^jira$/i, html: /Powered by <a href=.http:\/\/www\.atlassian\.com\/software\/jira/i, implies: [ 'Java' ] },
    'Alloy' =>                            { cats: [ 12 ], env: /^AUI$/ },
    'AWStats' =>                          { cats: [ 10 ], meta: { 'generator' => /AWStats/i } },
    'Banshee' =>                          { cats: [  1, 18 ], html: /Built upon the <a href=("|')[^>]+banshee-php\.org/i },
    'Backbone.js' =>                      { cats: [ 12 ], script: /backbone.*\.js/, env: /^Backbone$/ },
    'BIGACE' =>                           { cats: [  1 ], meta: { 'generator' => /BIGACE/ }, html: /Powered by <a href=("|')[^>]+BIGACE|<!--\s+Site is running BIGACE/i },
    'BigDump' =>                          { cats: [  3 ], html: /<!-- <h1>BigDump: Staggered MySQL Dump Importer/ },
    'Bigware' =>                          { cats: [  6 ], html: /bigware/i },
    'blip.tv' =>                          { cats: [ 14 ], html: /<(param|embed)[^>]+blip\.tv\/play/i },
    'Blogger' =>                          { cats: [ 11 ], meta: { 'generator' => /blogger/i }, url: /^(www.)?.+\.blogspot\.com/i },
    'Bugzilla' =>                         { cats: [ 13 ], html: /<[^>]+(id|title|name)=("|')bugzilla/i },
    'Burning Board' =>                    { cats: [  2 ], html: /<a href=('|")[^>]+woltlab\.com.+Burning Board/i },
    'Business Catalyst' =>                { cats: [  1 ], script: /CatalystScripts/, html: /<!-- BC_OBNW -->/ },
    'CakePHP' =>                          { cats: [ 18 ], headers: { 'set-cookie' => /cakephp=/ }, meta: { 'application-name' => /CakePHP/ } },
    'Cargo' =>                            { cats: [  1 ], script: /\/cargo\./i, html: /<link [^>]+Cargo feed/ },
    'CentOS' =>                           { cats: [ 28 ], headers: { 'Server' => /CentOS/i, 'X-Powered-By' => /CentOS/i } },
    'Chameleon' =>                        { cats: [  1 ], meta: { 'generator' => /chameleon\-cms/i } },
    'chartbeat' =>                        { cats: [ 10 ], html: /function loadChartbeat\(\) {/i },
    'Chamilo' =>                          { cats: [ 21 ], meta: { 'generator' => /Chamilo/i }, headers: { 'X-Powered-By' => /Chamilo/ } },
    'Cherokee' =>                         { cats: [ 22 ], headers: { 'Server' => /Cherokee/i } },
    'CKEditor' =>                         { cats: [ 24 ], env: /^CKEDITOR$/ },
    'ClickHeat' =>                        { cats: [ 10 ], script: /clickheat.*\.js/i, env: /^clickHeatBrowser$/ },
    'ClickTale' =>                        { cats: [ 10 ], html: /if\(typeof ClickTale(Tag)*==("|')function("|')\)/, env: /^ClickTale/i },
    'Clicky' =>                           { cats: [ 10 ], script: /static\.getclicky\.com/, env: /^clicky$/ },
    'CMS Made Simple' =>                  { cats: [  1 ], meta: { 'generator' => /CMS Made Simple/i } },
    'CO2Stats' =>                         { cats: [ 10 ], html: /src=("|')http:\/\/www\.co2stats\.com\/propres\.php/ },
    'CodeIgniter' =>                      { cats: [ 18 ], headers: { 'Set-Cookie' => /(exp_last_activity|exp_tracker|ci_session)/ }, implies: [ 'PHP' ] },
    'Commerce Server' =>                  { cats: [  6 ], headers: { 'COMMERCE-SERVER-SOFTWARE' => /.+/ } },
    'comScore' =>                         { cats: [ 10 ], html: /<i{1}frame[^>]* (id=("|')comscore("|')|scr=[^>]+comscore)/, env: /^_?COMSCORE$/i },
    'Concrete5' =>                        { cats: [  1 ], meta: { 'generator' => /concrete5/i } },
    'Contao' =>                           { cats: [  1, 6 ], html: /(<!--\s+This website is powered by (TYPOlight|Contao)|<link[^>]+(typolight|contao).css)/i, implies: [ 'PHP' ] },
    'Contens' =>                          { cats: [  1 ], meta: { 'generator' => /contens/i } },
    'ConversionLab' =>                    { cats: [ 10 ], script: /conversionlab\.trackset\.com\/track\/tsend\.js/ },
    'Coppermine' =>                       { cats: [  7 ], html: /<!--Coppermine Photo Gallery/i, implies: [ 'PHP' ] },
    'Cosmoshop' =>                        { cats: [  6 ], script: /cosmoshop_functions\.js/ },
    'Cotonti' =>                          { cats: [  1 ], meta: { 'generator' => /Cotonti/i } },
    'CouchDB' =>                          { cats: [ 22 ], headers: { 'Server' => /CouchDB/i } },
    'cPanel' =>                           { cats: [  9 ], html: /<!-- cPanel/i },
    'Crazy Egg' =>                        { cats: [ 10 ], script: /cetrk\.com\/pages\/scripts\/[0-9]+\/[0-9]+\.js/ },
    'CS Cart' =>                          { cats: [  6 ], html: /&nbsp;Powered by (<a href=.http:\/\/www\.cs\-cart\.com|CS\-Cart)/i },
    'CubeCart' =>                         { cats: [  6 ], html: /(Powered by <a href=.http:\/\/www\.cubecart\.com|<p[^>]+>Powered by CubeCart)/i },
    'cufon' =>                            { cats: [ 17 ], script: /cufon\-yui\.js/, env: /^Cufon$/ },
    'd3' =>                               { cats: [ 25 ], script: /d3(\.min)?\.js/ },
    'Dancer' =>                           { cats: [ 18 ], headers: { 'X-Powered-By' => /Perl Dancer/, 'Server' => /Perl Dancer/ }, implies: [ 'Perl' ] },
    'Danneo CMS' =>                       { cats: [  1 ], meta: { 'generator' => /Danneo/i } },
    'DataLife Engine' =>                  { cats: [  1 ], meta: { 'generator' => /DataLife Engine/i } },
    'David Webbox' =>                     { cats: [ 22 ], headers: { 'Server' => /David-WebBox/i } },
    'Debian' =>                           { cats: [ 28 ], headers: { 'Server' => /Debian/i, 'X-Powered-By' => /(Debian|dotdeb|etch|lenny|squeeze|wheezy)/i } },
    'DedeCMS' =>                          { cats: [  1 ], env: /^Dede/, script: /dedeajax/ },
    'Demandware' =>                       { cats: [  6 ], html: /<[^>]+demandware.edgesuite/, env: /^dwAnalytics/ },
    'DHTMLX' =>                           { cats: [ 12 ], script: /dhtmlxcommon\.js/ },
    'DirectAdmin' =>                      { cats: [  9 ], html: /<a[^>]+>DirectAdmin<\/a> Web Control Panel/i },
    'Disqus' =>                           { cats: [ 15 ], script: /disqus_url/, html: /<div[^>]+id=("|')disqus_thread("|')/, env: /^DISQUS/i },
    'Django' =>                           { cats: [ 18 ] },
    'Django CMS' =>                       { cats: [  1 ], script: /media\/cms\/js\/csrf\.js/, headers: { 'Set-Cookie' => /django/ }, implies: [ 'Django' ] },
    'dojo' =>                             { cats: [ 12 ], script: /dojo(\.xd)?\.js/, env: /^dojo$/ },
    'Dokeos' =>                           { cats: [ 21 ], meta: { 'generator' => /Dokeos/i }, html: /Portal <a[^>]+>Dokeos|@import "[^"]+dokeos_blue/i, headers: { 'X-Powered-By' => /Dokeos/ } },
    'DokuWiki' =>                         { cats: [  8 ], meta: { 'generator' => /DokuWiki/i } },
    'DotNetNuke' =>                       { cats: [  1 ], meta: { 'generator' => /DotNetNuke/i }, html: /(<!\-\- by DotNetNuke Corporation|<link[^>]+\/portals\/_default\/[^>]+\.css)/i, env: /^(DDN|DotNetNuke)/i },
    'DreamWeaver' =>                      { cats: [ 20 ], html: /(<!\-\-[^>]*(InstanceBeginEditable|Dreamweaver[^>]+target|DWLayoutDefaultTable)|function MM_preloadImages\(\) {)/ },
    'Drupal' =>                           { cats: [  1 ], script: /drupal\.js/, html: /(jQuery\.extend\(Drupal\.settings, \{|Drupal\.extend\(\{ settings: \{|<link[^>]+sites\/(default|all)\/themes\/|<style[^>]+sites\/(default|all)\/(themes|modules)\/)/i, headers: { 'X-Drupal-Cache' => /.*/, 'X-Generator' => /Drupal/, 'Expires' => /19 Nov 1978/ }, env: /^Drupal$/, implies: [ 'PHP' ] },
    'Drupal Commerce' =>                  { cats: [  6 ], html: /id="block[_-]commerce[_-]cart[_-]cart|class="commerce[_-]product[_-]field/i, implies: [ 'PHP' ] },
    'Dynamicweb' =>                       { cats: [  1 ], meta: { 'generator' => /Dynamicweb/i } },
    'e107' =>                             { cats: [  1 ], script: /e107\.js/ },
    'Ecodoo' =>                           { cats: [  6 ], script: /addons\/lytebox\/lytebox\.js/ },
    'Exhibit' =>                          { cats: [ 25 ], script: /exhibit.*\.js/, env: /^Exhibit$/ },
    'ExtJS' =>                            { cats: [ 12 ], script: /ext\-base\.js/, env: /^Ext$/ },
    'ExpressionEngine' =>                 { cats: [  1 ], headers: { 'Set-Cookie' => /(exp_last_activity|exp_tracker)/ } },
    'eZ Publish' =>                       { cats: [  1 ], meta: { 'generator' => /eZ Publish/i } },
    'FAST Search for SharePoint' =>       { cats: [ 29 ], url: /Pages\/SearchResults\.aspx\?k\=/, implies: [ 'Microsoft ASP.NET' ] },
    'FAST ESP' =>                         { cats: [ 29 ], html: /fastsearch|searchProfile\=|searchCategory\=/i, url: /esppublished|searchProfile\=|searchCategory\=/i },
    'Fact Finder' =>                      { cats: [ 29 ], html: /\/images\/fact-finder\.gif|ViewParametricSearch|factfinder|Suggest\.ff/i, url: /ViewParametricSearch|factfinder|ffsuggest/i },
    'FlexCMP' =>                          { cats: [  1 ], meta: { 'generator' => /FlexCMP/ }, headers: { 'X-Powered-By' => /FlexCMP/ } },
    'FluxBB' =>                           { cats: [  2 ], html: /Powered by (<strong>)?<a href=("|')[^>]+fluxbb/i },
    'Flyspray' =>                         { cats: [ 13 ], html: /(<a[^>]+>Powered by Flyspray|<map id=("|')projectsearchform)/ },
    'FreeBSD' =>                          { cats: [ 28 ], headers: { 'Server' => /FreeBSD/i } },
    'FWP' =>                              { cats: [  6 ], meta: {'generator' => /FWP Shop/ } },
    'FrontPage' =>                        { cats: [ 20 ], meta: { 'generator' => /Microsoft FrontPage/ }, html: /<html[^>]+urn:schemas\-microsoft\-com:office:office/i },
    'Gallery' =>                          { cats: [  7 ], env: /galleryAuthToken/, html: /<div id="gsNavBar" class="gcBorder1">/ },
    'Gambio' =>                           { cats: [  6 ], html: /brought to you by XT-Commerce|[Gg]ambio|content\.php\?coID=\d/},
    'Gauges' =>                           { cats: [ 10 ], html: /t\.src = '\/\/secure\.gaug\.es\/track\.js/, env: /^_gauges$/ },
    'Gentoo' =>                           { cats: [ 28 ], headers: { 'X-Powered-By' => /-?gentoo/} },
    'Get Satisfaction' =>                 { cats: [ 13 ], html: /var feedback_widget = new GSFN\.feedback_widget\(feedback_widget_options\)/ },
    'Google Analytics' =>                 { cats: [ 10 ], script: /(\.google\-analytics\.com\/ga\.js|google-analytics\.com\/urchin\.js)/, env: /^gaGlobal$/ },
    'Google App Engine' =>                { cats: [ 22 ], headers: { 'Server' => /Google Frontend/i } },
    'Google Font API' =>                  { cats: [ 17 ], script: /googleapis.com\/.+webfont/, html: /<link[^>]* href=("|')http:\/\/fonts\.googleapis\.com/, env: /^WebFont/ },
    'Google Friend Connect' =>            { cats: [  5 ], script: /google.com\/friendconnect/ },
    'Google Maps' =>                      { cats: [  5 ], script: /(maps\.google\.com\/maps\?file=api|maps\.google\.com\/maps\/api\/staticmap)/ },
    'Google Sites' =>                     { cats: [  1 ], url: /sites.google.com/ },
    'GoStats' =>                          { cats: [ 10 ], env: /^_go(stats|_track)/i },
    'Graffiti CMS' =>                     { cats: [  1 ], meta: { 'generator' => /Graffiti CMS/i } },
    'Gravatar' =>                         { cats: [ 19 ], env: /^Gravatar$/ },
    'Gravity Insights' =>                 { cats: [ 10 ], html: /gravityInsightsParams\.site_guid = '/, env: /^GravityInsights$/ },
    'Handlebars' =>                       { cats: [ 12 ], env: /^Handlebars$/ },
    'Hiawatha' =>                         { cats: [ 22 ], headers: { 'Server' => /Hiawatha/i } },
    'Highcharts' =>                       { cats: [ 25 ], script: /highcharts.*\.js/, env: /^Highcharts$/ },
    'Hotaru CMS' =>                       { cats: [  1 ], meta: { 'generator' => /Hotaru CMS/i } },
    'Hybris' =>                           { cats: [  6 ], html: /\/sys_master\/|\/hybr\//, header: { 'Set-Cookie' => /_hybris/ }, implies: [ 'Java' ] },
    'IIS' =>                              { cats: [ 22 ], headers: { 'Server' => /IIS/i }, implies: [ 'Windows Server' ] },
    'Indexhibit' =>                       { cats: [  1 ], html: /<link [^>]+ndxz-studio/i },
    'InstantCMS' =>                       { cats: [  1 ], meta: { 'generator' => /InstantCMS/i } },
    'Intershop' =>                        { cats: [  6 ], url: /is-bin|INTERSHOP/i, script: /is-bin|INTERSHOP/i },
    'IPB' =>                              { cats: [  2 ], script: /jscripts\/ips_/, env: /^IPBoard/, html: /<link[^>]+ipb_[^>]+\.css/ },
    'iWeb' =>                             { cats: [ 20 ], meta: { 'generator' => /iWeb/i } },
    'Jalios' =>                           { cats: [  1 ], meta: { 'generator' => /Jalios/i } },
    'Java' =>                             { cats: [ 27 ] },
    'Javascript Infovis Toolkit' =>       { cats: [ 25 ], script: /jit.*\.js/, env: /^\$jit$/ },
    'Jo' =>                               { cats: [ 26, 12 ], env: /^jo(Cache|DOM|Event)$/ },
    'JobberBase' =>                       { cats: [ 19 ], meta: { 'generator' => /Jobberbase/i }, env: /^Jobber$/ },
    'Joomla' =>                           { cats: [  1 ], meta: { 'generator' => /Joomla/i }, html: /(<!\-\- JoomlaWorks "K2"|<[^>]+(feed|components)\/com_)/i, headers: { 'X-Content-Encoded-By' => /Joomla/ }, env: /^(jcomments)$/i },
    'jqPlot' =>                           { cats: [ 25 ], script: /jqplot.*\.js/, env: /^jQuery.jqplot$/ },
    'jQTouch' =>                          { cats: [ 26 ], script: /jqtouch.*\.js/i, env:/^jQT$/ },
    'jQuery UI' =>                        { cats: [ 12 ], script: /jquery\-ui.*\.js/, implies: [ 'jQuery' ] },
    'jQuery' =>                           { cats: [ 12 ], script: /jquery.*.js/, env: /^jQuery$/ },
    'jQuery Mobile' =>                    { cats: [ 26 ], script: /jquery\.mobile.*\.js/i },
    'jQuery Sparklines' =>                { cats: [ 25 ], script: /jquery\.sparkline.*\.js/i },
    'JS Charts' =>                        { cats: [ 25 ], script: /jscharts.*\.js/i, env: /^JSChart$/ },
    'JTL Shop' =>                         { cats: [  6 ], html: /(<input[^>]+name=('|")JTLSHOP|<a href=('|")jtl\.php)/i },
    'K2' =>                               { cats: [ 19 ], html: /<!\-\- JoomlaWorks "K2"/, env: /^K2RatingURL$/, implies: [ 'Joomla' ] },
    'Kampyle' =>                          { cats: [ 10 ], script: /cf\.kampyle\.com\/k_button\.js/ },
    'Kentico CMS' =>                      { cats: [  1 ], meta: { 'generator' => /Kentico CMS/i } },
    'Koego' =>                            { cats: [ 10 ], script: /tracking\.koego\.com\/end\/ego\.js/ },
    'Kohana' =>                           { cats: [ 18 ], headers: { 'Set-Cookie' => /kohanasession/i, 'X-Powered-By' => /Kohana/ }, implies: [ 'PHP' ] },
    'Kolibri CMS' =>                      { cats: [  1 ], meta: { 'generator' => /Kolibri/i } },
    'Koobi' =>                            { cats: [  1 ], meta: { 'generator' => /Koobi/i } },
    'lighttpd' =>                         { cats: [ 22 ], headers: { 'Server' => /lighttpd/i } },
    'LiveJournal' =>                      { cats: [ 11 ], url: /^(www.)?.+\.livejournal\.com/i },
    'Liferay' =>                          { cats: [  1 ], env: /^Liferay$/, headers: { 'Liferay-Portal' => /.*/i } },
    'Lotus Domino' =>                     { cats: [ 22 ], headers: { 'Server' => /Lotus\-Domino/i } },
    'Magento' =>                          { cats: [  6 ], script: /\/(js\/mage|skin\/frontend\/(default|enterprise))\//, env: /^(Mage|VarienForm)$/, implies: [ 'PHP '] },
    'Mambo' =>                            { cats: [  1 ], meta: { 'generator' => /Mambo/i } },
    'MantisBT' =>                         { cats: [ 13 ], html: /<img[^>]+ alt=("|')Powered by Mantis Bugtracker/i },
    'MaxSite CMS' =>                      { cats: [  1 ], meta: { 'generator' => /MaxSite CMS/i } },
    'MediaWiki' =>                        { cats: [  8 ], meta: { 'generator' => /MediaWiki/i }, html: /(<a[^>]+>Powered by MediaWiki<\/a>|<[^>]+id=("|')t\-specialpages)/i },
    'Meebo' =>                            { cats: [  5 ], html: /(<iframe id=("|')meebo\-iframe("|')|Meebo\('domReady'\))/ },
    'Microsoft ASP.NET' =>                { cats: [ 18 ], html: /<input[^>]+name=("|')__VIEWSTATE/, headers: { 'X-Powered-By' => /ASP\.NET/, 'X-AspNet-Version' => /.+/ }, implies: [ 'Windows Server' ] },
    'Microsoft SharePoint' =>             { cats: [  1 ], meta: { 'generator' => /Microsoft SharePoint/i }, headers: { 'MicrosoftSharePointTeamServices' => /.*/, 'X-SharePointHealthScore' => /.*/, 'SPRequestGuid' => /.*/, 'SharePointHealthScore' => /.*/ } },
    'MiniBB' =>                           { cats: [  2 ], html: /<a href=("|')[^>]+minibb.+\s+<!--End of copyright link/i },
    'Mint' =>                             { cats: [ 10 ], script: /mint\/\?js/, env: /^Mint$/ },
    'Mixpanel' =>                         { cats: [ 10 ], script: /api\.mixpanel\.com\/track/ },
    'MochiKit' =>                         { cats: [ 12 ], script: /MochiKit\.js/, env: /^MochiKit$/ },
    'Modernizr' =>                        { cats: [ 12 ], script: /modernizr.*\.js/, env: /^Modernizr$/ },
    'MODx' =>                             { cats: [  1 ], html: /(<a[^>]+>Powered by MODx<\/a>|var el= \$\('modxhost'\);|<script type=("|')text\/javascript("|')>var MODX_MEDIA_PATH = "media";)|<(link|script)[^>]+assets\/snippets\//i },
    'Mojolicious' =>                      { cats: [ 18 ], headers: { 'x-powered-by' => /mojolicious/ }, implies: [ 'PERL' ] },
    'Mollom' =>                           { cats: [ 16 ], script: /mollom\.js/, html: /<img[^>]+\/.mollom\/.com/i },
    'Mondo Media' =>                      { cats: [  6 ], meta: { 'generator' => /Mondo Shop/ } },
    'Mongrel' =>                          { cats: [ 22 ], headers: { 'Server' => /Mongrel/ }, implies: [ 'Ruby' ] },
    'Moodle' =>                           { cats: [ 21 ], html: /(var moodleConfigFn = function\(me\)|<img[^>]+moodlelogo)/i, implies: [ 'PHP' ] },
    'Moogo' =>                            { cats: [  1 ], script: /kotisivukone.js/ },
    'MooTools' =>                         { cats: [ 12 ], script: /mootools.*\.js/, env: /^MooTools$/ },
    'Movable Type' =>                     { cats: [  1 ], meta: { 'generator' => /Movable Type/i } },
    'Mustache' =>                         { cats: [ 12 ], env: /^Mustache$/ },
    'Hiawatha' =>                         { cats: [ 22 ], headers: { 'Server' => /Hiawatha/i } },
    'MyBB' =>                             { cats: [  2 ], html: /(<script [^>]+\s+<!--\s+lang\.no_new_posts|<a[^>]* title=("|')Powered By MyBB)/i, env: /^MyBB/ },
    'MyBlogLog' =>                        { cats: [  5 ], script: /pub\.mybloglog\.com/i },
    'Mynetcap' =>                         { cats: [  1 ], meta: { 'generator' => /Mynetcap/i } },
    'Nedstat' =>                          { cats: [ 10 ], html: /sitestat\(("|')http:\/\/nl\.sitestat\.com/ },
    'Netmonitor' =>                       { cats: [ 10 ], script: /netmonitor\.fi\/nmtracker\.js/, env: /^netmonitor/ },
    'Nginx' =>                            { cats: [ 22 ], headers: { 'Server' => /nginx/i } },
    'NOIX' =>                             { cats: [ 19 ], html: /<[^>]+(src|href)=[^>]*(\/media\/noix)|<!\-\- NOIX/i },
    'nopCommerce' =>                      { cats: [  6 ], html: /(<!\-\-Powered by nopCommerce|Powered by: <a[^>]+nopcommerce)/i },
    'OneStat' =>                          { cats: [ 10 ], html: /var p=("|')http("|')\+\(d\.URL\.indexOf\('https:'\)==0\?'s':''\)\+("|'):\/\/stat\.onestat\.com\/stat\.aspx\?tagver/i },
    'OpenCart' =>                         { cats: [  6 ], html: /(Powered By <a href=("|')[^>]+OpenCart|route = getURLVar\(("|')route)/i },
    'openEngine' =>                       { cats: [  1 ], html: /<meta[^>]+openEngine/i },
    'OpenGSE' =>                          { cats: [ 22 ], headers: { 'Server' => /GSE/i } },
    'OpenLayers' =>                       { cats: [  5 ], script: /openlayers/, env:/^OpenLayers$/ },
    'OpenNemas' =>                        { cats: [  1 ], headers: { 'X-Powered-By' => /OpenNemas/ } },
    'Open Web Analytics' =>               { cats: [ 10 ], html: /<!-- (Start|End) Open Web Analytics Tracker -->/, env: /^_?owa_/i },
    'Optimizely' =>                       { cats: [ 10 ], env: /^optimizely/ },
    'Oracle Recommendations On Demand' => { cats: [ 10 ], script: /atgsvcs.+atgsvcs\.js/ },
    'osCommerce' =>                       { cats: [  6 ], html: /<a[^>]*osCsid/i },
    'osCSS' =>                            { cats: [  6 ], html: /<body onload=("|')window\.defaultStatus='oscss templates';("|')/i },
    'OXID eShop' =>                       { cats: [  6 ], html: /<!--.*OXID eShop/, env: /^ox(TopMenu|ModalPopup|LoginBox|InputValidator)/ },
    'PANSITE' =>                          { cats: [  1 ], meta: { 'generator' => /PANSITE/i } },
    'papaya CMS' =>                       { cats: [  1 ], html: /<link[^>]*\/papaya-themes\//i },
    'Parse.ly' =>                         { cats: [ 10 ], env: /^PARSELY$/ },
    'Perl' =>                             { cats: [ 27 ] },
    'PHP' =>                              { cats: [ 27 ], headers: { 'Server' => /php/i, 'X-Powered-By' => /php/i, 'Set-Cookie' => /PHPSESSID/ }, url: /\.php$/ },
    'Phpcms' =>                           { cats: [  1 ], env: /^phpcms/ },
    'PHP-Fusion' =>                       { cats: [  1 ], html: /Powered by <a href=("|')[^>]+php-fusion/i },
    'PHP-Nuke' =>                         { cats: [  2 ], meta: { 'generator' => /PHP-Nuke/i }, html: /<[^>]+Powered by PHP\-Nuke/i },
    'phpBB' =>                            { cats: [  2 ], meta: { 'copyright' => /phpBB Group/ }, html: /(Powered by <a[^>]+phpbb|<a[^>]+phpbb[^>]+class=.copyright|\tphpBB style name|<[^>]+styles\/(sub|pro)silver\/theme|<img[^>]+i_icon_mini|<table class="forumline)/i, env: /^(style_cookie_settings|phpbb_)/, headers: { 'Set-Cookie' => /^phpbb/ }, implies: [ 'PHP' ] },
    'phpDocumentor' =>                    { cats: [  4 ], html: /<!-- Generated by phpDocumentor/, implies: [ 'PHP' ] },
    'phpMyAdmin' =>                       { cats: [  3 ], html: /(var pma_absolute_uri = '|PMA_sendHeaderLocation\(|<title>phpMyAdmin<\/title>)/i, implies: [ 'PHP' ] },
    'phpPgAdmin' =>                       { cats: [  3 ], html: /(<title>phpPgAdmin<\/title>|<span class=("|')appname("|')>phpPgAdmin)/i },
    'Piwik' =>                            { cats: [ 10 ], html: /var piwikTracker = Piwik\.getTracker\(/i, env: /^Piwik$/ },
    'Plentymarkets' =>                    { cats: [  6 ], meta: { 'generator' => /www\.plentyMarkets\./i } },
    'Plesk' =>                            { cats: [  9 ], script: /common\.js\?plesk/i },
    'Plone' =>                            { cats: [  1 ], meta: { 'generator' => /Plone/i }, implies: [ 'Python' ] },
    'Plura' =>                            { cats: [ 19 ], html: /<iframe src="http:\/\/pluraserver\.com/ },
    'posterous' =>                        { cats: [  1, 11 ], html: /<div class=("|')posterous/i, env: /^Posterous/i },
    'Powergap' =>                         { cats: [  6 ], html: /(s\d\d)\.php\?shopid=\1/ },
    'Prestashop' =>                       { cats: [  6 ], meta: { 'generator' => /PrestaShop/i }, html: /Powered by <a href=("|')[^>]+PrestaShop/i },
    'Prototype' =>                        { cats: [ 12 ], script: /(prototype|protoaculous)\.js/, env: /^Prototype$/ },
    'Protovis' =>                         { cats: [ 25 ], script: /protovis.*\.js/, env: /^protovis$/ },
    'punBB' =>                            { cats: [  2 ], html: /Powered by <a href=("|')[^>]+punbb/i },
    'Python' =>                           { cats: [ 27 ] },
    'Quantcast' =>                        { cats: [ 10 ], script: /edge\.quantserve\.com\/quant\.js/, env: /^quantserve$/ },
    'Quick.Cart' =>                       { cats: [  6 ], html: /<a href="[^>]+opensolution\.org\/">Powered by/i },
    'ReallyCMS' =>                        { cats: [  1 ], meta: { 'generator' => /ReallyCMS/ } },
    'Red Hat' =>                          { cats: [ 28 ], headers: { 'Server' => /Red Hat/i, 'X-Powered-By' => /Red Hat/i } },
    'Raphael' =>                          { cats: [ 25 ], script: /raphael.*\.js/, env: /^Raphael$/ },
    'reCAPTCHA' =>                        { cats: [ 16 ], script: /(api\-secure\.recaptcha\.net|recaptcha_ajax\.js)/, html: /<div[^>]+id=("|')recaptcha_image/, env: /^Recaptcha$/ },
    'Reddit' =>                           { cats: [  2 ], html: /(<script[^>]+>var reddit = {|<a[^>]+Powered by Reddit|powered by <a[^>]+>reddit<)/i, url: /^(www\.)?reddit\.com/, env: /^reddit$/, implies: [ 'Python' ] },
    'Redmine' =>                          { cats: [ 13 ], meta: { 'description' => /Redmine/i }, html: /Powered by <a href=("|')[^>]+Redmine/i, implies: [ 'Ruby' ] },
    'Reinvigorate' =>                     { cats: [ 10 ], html: /reinvigorate\.track\("/ },
    'RequireJS' =>                        { cats: [ 12 ], script: /require.*\.js/ , env: /^requirejs$/},
    'Ruby' =>                             { cats: [ 27 ], headers: { 'Server' => /(Mongrel|WEBrick|Ruby|mod_rails|mod_rack|Phusion.Passenger)/i, 'X-Powered-By' => /(mod_rails|mod_rack|Phusion.Passenger)/i } },
    'S.Builder' =>                        { cats: [  1 ], meta: { 'generator' => /S\.Builder/i } },
    's9y' =>                              { cats: [  1 ], meta: { 'generator' => /Serendipity/i, 'Powered-By' => /Serendipity/i } },
    'script.aculo.us' =>                  { cats: [ 12 ], script: /(scriptaculous|protoaculous)\.js/, env: /^Scriptaculous$/ },
    'Sencha Touch' =>                     { cats: [ 26, 12 ], script: /sencha\-touch.*\.js/ },
    'Seoshop' =>                          { cats: [  6 ], html: /http:\/\/www\.getseoshop\.com/ },
    'ShareThis' =>                        { cats: [  5 ], script: /w\.sharethis\.com\//, env: /^SHARETHIS$/ },
    'Shopify' =>                          { cats: [  6 ], html: /<link[^>]+=cdn\.shopify\.com/, env: /^Shopify$/ },
    'sIFR' =>                             { cats: [ 17 ], script: /sifr\.js/ },
    'Site Meter' =>                       { cats: [ 10 ], script: /sitemeter.com\/js\/counter\.js\?site=/ },
    'SiteCatalyst' =>                     { cats: [ 10 ], html: /var s_code=s\.t\(\);if\(s_code\)document\.write\(s_code\)/i, env: /^s_account$/ },
    'SiteEdit' =>                         { cats: [  1 ], meta: { 'generator' => /SiteEdit/i } },
    'Smartstore' =>                       { cats: [  6 ], script: /smjslib\.js/ },
    'SMF' =>                              { cats: [  2 ], html: /<script [^>]+\s+var smf_/i, env: /^smf_/ },
    'sNews' =>                            { cats: [  1 ], meta: { 'generator' => /sNews/ } },
    'Snoobi' =>                           { cats: [ 10 ], script: /snoobi\.com\/snoop\.php/ },
    'SOBI 2' =>                           { cats: [ 19 ], html: /(<!\-\- start of Sigsiu Online Business Index|<div[^>]* class=("|')sobi2)/i },
    'SoundManager' =>                     { cats: [ 12 ], env: /^(SoundManager|BaconPlayer)$/ },
    'SPIP' =>                             { cats: [  1 ], meta: { 'generator' => /SPIP/i }, headers: { 'X-Spip-Cache' => /.*/ } },
    'SQL Buddy' =>                        { cats: [  3 ], html: /(<title>SQL Buddy<\/title>|<[^>]+onclick=("|')sideMainClick\(("|')home\.php)/i },
    'Squarespace' =>                      { cats: [  1 ], html: /Squarespace\.Constants\.CURRENT_MODULE_ID/i },
    'Squiz Matrix' =>                     { cats: [  1 ], meta: { 'generator' => /Squiz Matrix/ }, html: /  Running (MySource|Squiz) Matrix/i, 'X-Powered-By' => /Squiz Matrix/ },
    'StatCounter' =>                      { cats: [ 10 ], script: /statcounter\.com\/counter\/counter/ },
    'Store Systems' =>                    { cats: [  6 ], html: /Shopsystem von <a href="http:\/\/www\.store-systems\.de"|\.mws_boxTop/ },
    'SWFObject' =>                        { cats: [ 19 ], script: /swfobject.*\.js/i, env: /^SWFObject$/ },
    'swift.engine' =>                     { cats: [  1 ], headers: { 'X-Powered-By' => /swift\.engine/ } },
    'Swiftlet' =>                         { cats: [ 18 ], meta: { 'generator' => /Swiftlet/i }, html: /Powered by <a href=("|')[^>]+Swiftlet/i, headers: { 'X-Swiftlet-Cache' => /.*/, 'X-Powered-By' => /Swiftlet/, 'X-Generator' => /Swiftlet/ }, implies: [ 'PHP' ] },
    'Textpattern CMS' =>                  { cats: [  1 ], meta: { 'generator' => /Textpattern/i } },
    'Tiki Wiki CMS Groupware' =>          { cats: [ 1, 2, 8, 11, 13 ], script: /(\/|_)tiki/, meta: { 'generator' => /^Tiki/i } },
    'Timeplot' =>                         { cats: [ 25 ], script: /timeplot.*\.js/, env: /^Timeplot$/ },
    'TinyMCE' =>                          { cats: [ 24 ], env: /^tinyMCE$/ },
    'TomatoCart' =>                       { cats: [  6 ], meta: { 'generator' => /TomatoCart/i } },
    'Trac' =>                             { cats: [ 13 ], html: /(<a id=("|')tracpowered)/i, implies: [ 'Python' ] },
    'Tumblr' =>                           { cats: [ 11 ], html: /<iframe src=("|')http:\/\/www\.tumblr\.com/i, url: /^(www.)?.+\.tumblr\.com/i, headers: { 'X-Tumblr-Usec' => /.*/ } },
    'Twilight CMS' =>                     { cats: [  1 ], headers: { 'X-Powered-CMS' => /Twilight CMS/ } },
    'Twitter Bootstrap' =>                { cats: [ 18 ], script: /twitter\.github\.com\/bootstrap/, html: /<link[^>]+bootstrap[^>]+css/, env: /^Twipsy$/ },
    'Typekit' =>                          { cats: [ 17 ], script: /use.typekit.com/, env: /^Typekit$/ },
    'TypePad' =>                          { cats: [ 11 ], meta: { 'generator' => /typepad/i }, url: /^(www.)?.+\.typepad\.com/i },
    'TYPO3' =>                            { cats: [  1 ], headers: { 'Set-Cookie' => /fe_typo_user/ }, meta: { 'generator' => /TYPO3/i }, html: /(<(script[^>]* src|link[^>]* href)=[^>]*fileadmin|<!--TYPO3SEARCH)/i, url: /\/typo3/i },
    'Ubercart' =>                         { cats: [  6 ], script: /uc_cart\/uc_cart_block\.js/ },
    'Ubuntu' =>                           { cats: [ 28 ], headers: { 'Server' => /Ubuntu/i, 'X-Powered-By' => /Ubuntu/i } },
    'Umbraco' =>                          { cats: [  1 ], meta: { 'generator' => /umbraco/i }, headers: { 'X-Umbraco-Version' => /.+/ }, html: /powered by <a href=[^>]+umbraco/i, implies: [ 'Microsoft ASP.NET' ] },
    'Underscore.js' =>                    { cats: [ 12 ], script: /underscore.*\.js/ },
    'UNIX' =>                             { cats: [ 28 ], headers: { 'Server' => /Unix/i } },
    'UserRules' =>                        { cats: [ 13 ], html: /var _usrp =/ , env: /^\_usrp$/ },
    'UserVoice' =>                        { cats: [ 13 ], env: /^UserVoice$/ },
    'Vanilla' =>                          { cats: [  2 ], html: /<body id=("|')(DiscussionsPage|vanilla)/i, headers: { 'X-Powered-By' => /Vanilla/ } },
    'Varnish' =>                          { cats: [ 22 ], headers: { 'X-Varnish' => /.+/, 'X-Varnish-Age' => /.+/, 'X-Varnish-Cache' => /.+/, 'X-Varnish-Action' => /.+/, 'X-Varnish-Hostname' => /.+/, 'Via' => /Varnish/i } },
    'vBulletin' =>                        { cats: [  2 ], meta: { 'generator' => /vBulletin/i }, env: /^(vBulletin|vB_)/ },
    'viennaCMS' =>                        { cats: [  1 ], html: /powered by <a href=("|')[^>]+viennacms/i },
    'Vignette' =>                         { cats: [  1 ], html: /<[^>]+?=("|')(vgn\-ext|vgnext)/i },
    'Vimeo' =>                            { cats: [ 14 ], html: /<(param|embed)[^>]+vimeo\.com\/moogaloop/i },
    'VirtueMart' =>                       { cats: [  6 ], html: /<div id=("|')vmMainPage/, headers: { 'Set-Cookie' => /^virtuemart\=/ } },
    'VisualPath' =>                       { cats: [ 10 ], script: /visualpath[^\/]*\.trackset\.it\/[^\/]+\/track\/include\.js/ },
    'VIVVO' =>                            { cats: [  1 ], headers: { 'Set-Cookie' => /VivvoSessionId/, env: /^vivvo/i } },
    'Vox' =>                              { cats: [ 11 ], url: /^(www.)?.+\.vox\.com/i },
    'VP-ASP' =>                           { cats: [  6 ], script: /vs350\.js/, html: /<a[^>]+>Powered By VP\-ASP Shopping Cart<\/a>/, implies: [ 'Microsoft ASP.NET' ] },
    'W3Counter' =>                        { cats: [ 10 ], script: /w3counter\.com\/tracker\.js/ },
    'Web Optimizer' =>                    { cats: [ 10 ], html: /<title [^>]*lang=("|')wo("|')>/ },
    'Websale' =>                          { cats: [  6 ], url: /\/websale7\// },
    'webEdition' =>                       { cats: [  1 ], meta: { 'generator' => /webEdition/i, 'DC.title' => /webEdition/i } },
    'WebGUI' =>                           { cats: [  1 ], meta: { 'generator' => /WebGUI/i } },
    'WebPublisher' =>                     { cats: [  1 ], meta: { 'generator' => /WEB\|Publisher/i } },
    'WebsiteBaker' =>                     { cats: [  1 ], meta: { 'generator' => /WebsiteBaker/i } },
    'Webtrekk' =>                         { cats: [ 10 ], html: /var webtrekk = new Object/ },
    'Webtrends' =>                        { cats: [ 10 ], html: /<img[^>]+id=("|')DCSIMG("|')[^>]+webtrends/i, env: /^(WTOptimize|WebTrends)/i },
    'Weebly' =>                           { cats: [  1 ], html: /<[^>]+class=("|')weebly/i },
    'WikkaWiki' =>                        { cats: [  8 ], meta: { 'generator' => /WikkaWiki/ }, html: /Powered by <a href=("|')[^>]+WikkaWiki/i },
    'Windows Server' =>                   { cats: [ 28 ] },
    'wink' =>                             { cats: [ 26, 12 ], script: /(\_base\/js\/base|wink).*\.js/i, env: /^wink$/ },
    'Wolf CMS' =>                         { cats: [  1 ], html: /<a href=("|')[^>]+wolfcms.org.+Wolf CMS.+inside/i },
    'Woopra' =>                           { cats: [ 10 ], script: /static\.woopra\.com/ },
    'WordPress' =>                        { cats: [  1, 11 ], meta: { 'generator' => /WordPress/i }, html: /<link rel=("|')stylesheet("|') [^>]+wp-content/i, env: /^wp_username$/, implies: [ 'PHP' ] },
    'xajax' =>                            { cats: [ 12 ], script: /xajax_core.*\.js/i },
    'Xanario' =>                          { cats: [  6 ], meta: { 'generator' => /xanario shopsoftware/i } },
    'XenForo' =>                          { cats: [  2 ], html: /(jQuery\.extend\(true, XenForo|Forum software by XenForo&trade;|<!\-\-XF:branding)/ },
    'XiTi' =>                             { cats: [ 10 ], html: /<[^>]+src=("|')[^>]+xiti.com\/hit.xiti/i, env: /^Xt_/ },
    'XMB' =>                              { cats: [  2 ], html: /<!-- Powered by XMB/i },
    'xui' =>                              { cats: [ 26, 12 ], script: /[^a-zA-Z]xui.*\.js/i, env: /^xui$/ },
    'XOOPS' =>                            { cats: [  1 ], meta: { 'generator' => /XOOPS/i } },
    'xtCommerce' =>                       { cats: [  6 ], meta: { 'generator' => /xt:Commerce/ }, html: /<div class=("|')copyright("|')>.+<a[^>]+>xt:Commerce/i },
    'YaBB' =>                             { cats: [  2 ], html: /Powered by <a href=("|')[^>]+yabbforum/i },
    'Yahoo! Web Analytics' =>             { cats: [ 10 ], script: /d\.yimg\.com\/mi\/ywa\.js/ },
    'Yandex.Metrika' =>                   { cats: [ 10 ], script: /mc\.yandex\.ru\/metrika\/watch\.js/ },
    'YouTube' =>                          { cats: [ 14 ], html: /<(param|embed|iframe)[^>]+youtube(-nocookie)?\.com\/(v|embed)/i },
    'YUI Doc' =>                          { cats: [  4 ], html: /<html[^>]* yuilibrary\.com\/rdf\/[0-9.]+\/yui\.rdf/i },
    'YUI' =>                              { cats: [ 12 ], script: /\/yui\/|yui\.yahooapis\.com/, env: /^YAHOO$/ },
    'Zen Cart' =>                         { cats: [  6 ], meta: { 'generator' => /Zen Cart/i } },
    'Zend' =>                             { cats: [ 22 ], headers: { 'X-Powered-By' => /Zend/ } },
    'Zepto' =>                            { cats: [ 12 ], script: /zepto.*.js/, env: /^Zepto$/ }
  }

  attr_reader :analysis

  def initialize(url)
    @url = url
    analyze!
  end

  private

  def hostname
    @hostname ||= URI.parse(@url).host
  end

  def data
    response.body
  end

  def url
    @url
  end

  def scripts
    @scripts ||= begin
      data.scan(/<script[^>]+src=("|')([^"']+)\1/i).transpose[1] || []
    end
  end

  def metas
    @metas ||= begin
      data.scan(/<meta[^>]+>/i).flatten.reduce(Hash.new) do |hash, line|
        name = line[/name=("|')([^"']+)\1/, 2]
        content = line[/content=("|')([^"']+)\1/, 2]

        hash[name] = content
        hash
      end
    end
  end

  def headers
    response
  end

  def response
    @response ||= begin
      uri = URI.parse(@url)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      http.request(request)
    end
  end

  def analyze!
    @analysis ||= begin
      matched_apps = []

      APPS.each do |app, tells|
        tells.each do |type, matcher|
          next if type == :cats

          case type
          when :url
            matched_apps << app if url =~ matcher
          when :html
            matched_apps << app if data =~ matcher
          when :script
            if scripts.any?{|script| script =~ matcher}
              matched_apps << app
            end
          when :meta
            matcher.each do |name, content_rx|
              if metas[name] =~ content_rx
                matched_apps << app
              end
            end
          when :headers
            matcher.each do |type, content_rx|
              if headers[type.downcase] =~ content_rx
                matched_apps << app
              end
            end
          when :env
            # Not way to peer into the page's DOM yet
          end
        end
      end

      matched_apps.uniq
    end
  end
end