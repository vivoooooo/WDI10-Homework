Article.destroy_all 

a1 = Article.create(:headline_english => "Drowned Syrian toddler: Tony Abbott says 'tragic' picture a reminder of need to stop boats", :headline_other_language => "NA", :author_english => "Matthew Knott", :author_other_language => "NA", :source_english => "SMH", :source_other_language => "NA", :date_published => "2015/09/04", :date_accessed => "2015/09/04", :link => "http://www.smh.com.au/federal-politics/political-news/drowned-syrian-toddler-tony-abbott-says-tragic-picture-a-reminder-of-need-to-stop-boats-20150903-gjevx5.html", :article_text_english => "Prime Minister Tony Abbott says the 'very sad' images of a Syrian boy lying lifeless on a Turkish beach demonstrate the need for countries to adopt tough policies to stop asylum seekers arriving by boat.
    Abbott government frontbencher Barnaby Joyce has also said Australia should increase the number of Syrian refugees it accepts following the harrowing images.", :article_other_language => "NA", :screen_capture => "http://www.smh.com.au/content/dam/images/g/j/d/x/3/x/image.related.articleLeadwide.620x349.gjevx5.png/1441334355413.jpg", :keywords => "Tony Abbott, refugees, Barnaby Joyce, Scott Morrison", :issues => "Refugee Crisis, Syria, asylum seekers", :own_notes => "Tony Abbott sugggests that the sad picture is a reason to continue with the stop the boats campaign and he really should get himself checked into a mental hospital *omits another thousand swear words aimed at Tony*" )

Person.destroy_all

p1 = Person.create(:name => "Tony Abott", :birthday => "1957/11/04", :image => "http://orangepost.com.au/wp-content/uploads/2013/09/tonyabbott-budgie-smugglers.jpg", :profile => "Anthony John 'Tony' Abbott MP (born 4 November 1957) is an Australian politician who has served as the 28th Prime Minister of Australia since 2013, as Leader of the Liberal Party since 2009, and as the Member of Parliament for Warringah since 1994. And he's a dickhead" )

p2 = Person.create(:name => "Barnaby Joyce", :birthday => "1967/04/17", :image => "http://resources0.news.com.au/images/2015/05/15/1227356/283784-867c4c7e-faab-11e4-9fac-f9da0f3d8e0c.jpg", :profile => "Barnaby Thomas Gerald Joyce is an Australian politician who is currently the Minister for Agriculture in the Abbott Ministry, having been sworn in on 18 September 2013.") 

Organisation.destroy_all

o1 = Organisation.create(:name => "The Liberal Party of Australia", :year => "1945", :image => "https://upload.wikimedia.org/wikipedia/commons/e/e0/Liberal_Party_of_Australia_Logo_2015.png", :profile => "The Liberal Party of Australia (LPA or colloquially Libs) is a centre-right political party in Australia. Founded in 1945 to replace the United Australia Party (UAP) and its predecessors, the Liberal Party of Australia is one of the two major parties in Australian politics along with the centre-left Australian Labor Party (ALP).")

o2 = Organisation.create(:name => "Liberal National Party of Queensland", :year => "2008", :image => "https://upload.wikimedia.org/wikipedia/en/b/ba/Lnp_logo.PNG", :profile => "The National Party of Australia (also known as The Nationals or simply, The Nats) is an Australian political party. Traditionally representing graziers, farmers, and rural voters generally, it began as the Australian Country Party, and then adopted the name the National Country Party in 1975. The party's name was changed to the National Party of Australia in 1982. The party is commonly referred to as 'The Nationals'. Federally, in New South Wales, and to an extent Victoria and historically in Western Australia, it has generally been the minor party in a centre-right Coalition with the Liberal Party of Australia in government.")






