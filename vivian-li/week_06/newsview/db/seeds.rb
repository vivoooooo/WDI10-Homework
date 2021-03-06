Article.destroy_all 

a1 = Article.create(:headline_english => "Drowned Syrian toddler: Tony Abbott says 'tragic' picture a reminder of need to stop boats", :headline_other_language => "NA", :author_english => "Matthew Knott", :author_other_language => "NA", :source_english => "Sydney Morning Herald", :source_other_language => "NA", :date_published => "2015/09/04", :date_accessed => "2015/09/04", :link => "http://www.smh.com.au/federal-politics/political-news/drowned-syrian-toddler-tony-abbott-says-tragic-picture-a-reminder-of-need-to-stop-boats-20150903-gjevx5.html", :article_text_english => "Prime Minister Tony Abbott says the 'very sad' images of a Syrian boy lying lifeless on a Turkish beach demonstrate the need for countries to adopt tough policies to stop asylum seekers arriving by boat.
    Abbott government frontbencher Barnaby Joyce has also said Australia should increase the number of Syrian refugees it accepts following the harrowing images.", :article_other_language => "NA", :screen_capture => "http://www.smh.com.au/content/dam/images/g/j/d/x/3/x/image.related.articleLeadwide.620x349.gjevx5.png/1441334355413.jpg", :keywords => "Tony Abbott, refugees, Barnaby Joyce, Scott Morrison", :issues => "Refugee Crisis, Syria, asylum seekers", :own_notes => "Tony Abbott sugggests that the sad picture is a reason to continue with the stop the boats campaign and he really should get himself checked into a mental hospital *omits another thousand swear words aimed at Tony*" )

a2 = Article.create(:headline_english => "Abbott government agrees to resettle 12,000 Syrian refugees in Australia.", :headline_other_language => "NA", :author_english =>"Latika Bourke", :author_other_language => "NA", :source_english => "Sydney Morning Hearld", :source_other_language => "NA",  :date_published => "2015/09/09", :date_accessed => "2015/09/09", :link => " http://www.smh.com.au/federal-politics/political-news/abbott-government-agrees-to-resettle-12000-syrian-refugees-in-australia-20150909-gjibqz.html", :article_text_english => "Australia will permanently resettle 12,000 refugees from Syria, and begin air strikes on Islamic State targets within the week, Prime Minister Tony Abbott has announced
Speaking a short time after Coalition MPs met in Canberra on Wednesday to discuss the government's policy, Mr Abbott described the commitment to take in 12,000 refugees as one of the world's largest to date.

He said women, children and families from persecuted minorities sheltering in Jordan, Lebanon and Turkey would take priority.'I do want to stress, women children and families - the most vulnerable of all,' he said.
He denied there would be any preferential treatment given to Christians over Muslims despite reports of some backbench anti-Muslim sentiment.'It's those who can never go back that we're focussed on,'' he said.

Mr Abbott said Australia would 'move quickly' to resettle refugees but they would be subject to standard security checks.
The government will also spend $44 million supplying 240,000 refugees with cash, food, water and blankets in Lebanon, Turkey and Jordan.
Declaring the need to act 'with our heads, as well as with our hearts,'' Mr Abbott said airstrikes would target Islamic State targets in eastern Syria. 

Mr Abbott said the legal basis for the airstrikes is 'the collective self-defence of Iraq'. 
Independent MP Andrew Wilkie said dropping bombs on Syria would be 'illegal, ineffective and dangerou'.'These airstrikes just won't work. You can't defeat an unconventional enemy like Islamic State by dropping bombs,'' he said.

PM bows to pressure

The decision to accept 12,000 refugees on top of the existing 13,750 humanitarian intake is a radical turnaround from the Prime Minister's position outlined just four days ago.
On Sunday Mr Abbott said Australia would accept more refugees from Syria but within the existing quota.  

But after pressure from state Liberal leaders, the federal opposition and Greens, backed by public calls for Australia to do more to address the EU migrant crisis, Mr Abbott staged a complete change of heart on the issue.

Mr Abbott said he had not wanted to rush his response and wanted to seek advice from UN refugee agency the UNHCR and Australian bureaucrats first.
The cost of resettling the 12,000 refugees will be approximately $700 million over four years, not including processing costs. 

Senior government officials said the first refugees could arrive by Christmas. It's intended that the 12,000 will arrive within the financial year.

The UNHCR released a statement welcoming Australia's commitment. 
'UNHCR warmly receives Australia's announcement in committing to resettle an additional 12,000 refugees,'' it said in a statement. 

'The Prime Minister's announcement comes at a crucial time when UNHCR is stretched to capacity in meeting the needs of the most desperate.''

New South Wales Premier Mike Baird also welcomed the decision in a post on Facebook.
'I am thrilled to hear that 12,000 Syrian refugees will soon be able to find safety on our shores … I applaud this bold and generous decision,'' he said.

'Something is happening here in Australia. People have united behind the simple idea that our boundless plains are here to be shared, especially with those that are in desperate need.'
Opposition Leader Bill Shorten on Monday called for Australia to accept 10,000 refugees on a one-off basis as well as $100 million for the UNHCR.

Mr Abbott confirmed on Wednesday the Coalition would contribute a lesser figure of approximately $44 million.

Western Sydney backbencher Craig Laundy was one of the government's early voices in calling on the federal Coalition to step up its response. He welcomed the government's change of heart.
'On Friday I asked the Prime Minister, Foreign Minister and Immigration Minister simply could we please do more,'' he told Fairfax Media.

'Today I say to all three, and cabinet, simply 'Thank you',' he said.

Greens MP Adam Bandt said on Facebook that the government had been 'forced to respond' because of the tens of thousands of Australians who had attended pro-refugee rallies around the country this week.

But he cautioned the government on prioritising Christian Syrians over Muslims for resettlement.
'We shouldn't discriminate between people seeking refuge,' he said.'", :screen_capture => "http://res.cloudinary.com/dpixt6n1s/image/upload/v1441773074/ootcocajohadwyswlubm.jpg", :keywords => "Syrian, Refugees, UNHCR", :issues => "Refugee Crisis, Liberal Party, 12000 extra settlement", :own_notes => "The decision to accept 12,000 refugees on top of the existing 13,750 humanitarian intake is a radical turnaround from the Prime Minister's position outlined just four days ago. On Sunday Mr Abbott said Australia would accept more refugees from Syria but within the existing quota. But after pressure from state Liberal leaders, the federal opposition and Greens, backed by public calls for Australia to do more to address the EU migrant crisis, Mr Abbott staged a complete change of heart on the issue.")

Person.destroy_all

p1 = Person.create(:name => "Tony Abbott", :birthday => "1957/11/04", :image => "http://orangepost.com.au/wp-content/uploads/2013/09/tonyabbott-budgie-smugglers.jpg", :profile => "Anthony John 'Tony' Abbott MP (born 4 November 1957) is an Australian politician who has served as the 28th Prime Minister of Australia since 2013, as Leader of the Liberal Party since 2009, and as the Member of Parliament for Warringah since 1994. And he's a dickhead" )

p2 = Person.create(:name => "Barnaby Joyce", :birthday => "1967/04/17", :image => "http://resources0.news.com.au/images/2015/05/15/1227356/283784-867c4c7e-faab-11e4-9fac-f9da0f3d8e0c.jpg", :profile => "Barnaby Thomas Gerald Joyce is an Australian politician who is currently the Minister for Agriculture in the Abbott Ministry, having been sworn in on 18 September 2013.") 

Organisation.destroy_all

o1 = Organisation.create(:name => "The Liberal Party of Australia", :year => "1945", :image => "https://upload.wikimedia.org/wikipedia/commons/e/e0/Liberal_Party_of_Australia_Logo_2015.png", :profile => "The Liberal Party of Australia (LPA or colloquially Libs) is a centre-right political party in Australia. Founded in 1945 to replace the United Australia Party (UAP) and its predecessors, the Liberal Party of Australia is one of the two major parties in Australian politics along with the centre-left Australian Labor Party (ALP).")

o2 = Organisation.create(:name => "Liberal National Party of Queensland", :year => "2008", :image => "https://upload.wikimedia.org/wikipedia/en/b/ba/Lnp_logo.PNG", :profile => "The National Party of Australia (also known as The Nationals or simply, The Nats) is an Australian political party. Traditionally representing graziers, farmers, and rural voters generally, it began as the Australian Country Party, and then adopted the name the National Country Party in 1975. The party's name was changed to the National Party of Australia in 1982. The party is commonly referred to as 'The Nationals'. Federally, in New South Wales, and to an extent Victoria and historically in Western Australia, it has generally been the minor party in a centre-right Coalition with the Liberal Party of Australia in government.")

User.destroy_all
u1 = User.create :name => 'Craigsy', :email => 'craigsy@gmail.com', :password => 'chicken'
u2 = User.create :name => 'Jonesy', :email => 'jonesy@gmail.com', :password => 'chicken'





a1.people << p1 << p2  
a2.people << p1 
a1.organisations << o1 << o2 
a1.organisations << o1 

o1.people << p1 
o2.people << p2



