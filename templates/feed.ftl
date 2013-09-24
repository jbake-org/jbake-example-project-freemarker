<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>JBake</title>
    <link>http://jbake.org/</link>
    <atom:link href="http://jbake.org/feed.xml" rel="self" type="application/rss+xml" />
    <description>JBake - Java based open source static site/blog generator</description>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts as post>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>http://jbake.org${post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      	<description>
	<#escape x as x?xml>	
	${post.body}
	</#escape>
	</description>
    </item>
    </#list>

  </channel> 
</rss>
