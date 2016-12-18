<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Posts tagged with ${content.tags[0]}</title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/${content.tags[0]}-feed.xml" rel="self" type="application/rss+xml" />
    <description>Posts tagged with ${content.tags[0]}</description>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list posts as post>
    <#list post.tags as tag>
    <#if tag?contains(content.tags[0])>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}/${post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      	<description>
	<#escape x as x?xml>	
	${post.body}
	</#escape>
	</description>
    </item>
    </#if>
    </#list>
    </#list>

  </channel> 
</rss>
