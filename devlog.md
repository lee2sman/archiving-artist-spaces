# Devlog for Archiving Artist Spaces


### 2022-12-05

Working on GAS archive. More on that later.

Started on working on new tool to interoperate with my bookmobile library which pulls down articles, runs them through the Readability library to remove cruft (headers, ads, footers, navigation, etc) and then save as an epub or markdown or cleaned up html or with a css theme from my curated selection. My new update can download a list of links, let's say to create a directory on a certain topic. Would be great to combine this with yt-dlp (fork of youtube-dl) and any image scrape tool, at a later date.

The two parts of the suite I'm building: tools to pull, tools to publish/browse/interact. Tools to pull will be CLI and possibly GUI tools to get photos, texts, audio, video. Tools to publish/browse/interact are GUI and CLI tools to make archives of photos and text and media, and software to browse these archives (and ideally to continue adding to them).

My bookmobile software relies on readability-cli and its upstream readability from Mozilla.

I'm using my new in-progress tool to build another example personal archive of artware, interviews, and more on media art and DIY art community organizing, among other subjects.

[Gardenappl's Readable aka readability-cli on GitLab](https://gitlab.com/gardenappl/readability-cli)  

[Mozilla's Readability on GitHub](https://github.com/mozilla/readability)

### 2022-11-15

As we're going deeper into archiving issues of copyright are coming back, and specifically how to archive documentation that originates in online closed platforms, as opposed to images shared with Creative Commons rights for example.

In addition to legal assistance, I'm also looking at how different archives deal with this issue.

First, here's a link to DiscMaster, which is a new experimental 'frontend' of sorts to browse an archive housed on Archive.org

> Experimental website to browse and search vintage computer files from archive.org. Thousands of new files are added daily! Click the links at the top!

[Textfiles.com DiscMaster](http://discmaster.textfiles.com/)

I've long been a fan of UbuWeb and am excited to pick up Duchamp Is My Lawyer by creator/director/webmaster Kenneth Goldsmith.

> In Duchamp Is My Lawyer, Goldsmith tells the history of UbuWeb, explaining the motivations behind its creation and how artistic works are archived, consumed, and distributed online. Based on his own experiences and interviews with a variety of experts, Goldsmith describes how the site navigates issues of copyright and the ways that UbuWeb challenges familiar configurations and histories of the avant-garde. The book also portrays the growth of other “shadow libraries” and includes a section on the artists whose works reflect the aims, aesthetics, and ethos of UbuWeb. Goldsmith concludes by contrasting UbuWeb’s commitment to the free-culture movement and giving access to a wide range of artistic works with today’s gatekeepers of algorithmic culture, such as Netflix, Amazon, and Spotify.

[Duchamp Is My Lawyer: The Polemics, Pragmatics, and Poetics of UbuWeb](http://cup.columbia.edu/book/duchamp-is-my-lawyer/9780231186957)

### 2022-10-27

Flux Thursday dinner with members of Institute for X visiting us in NYC. They talked about the funding of X, how its precarious, how it works with the city, and how Danish society and culture differs from our US models. One of the things they emphasize was the importance of explaining the value and activities of X when meeting with politicians. How do they make the case and demonstrate what they're doing is essential, important, timely? They printed a large book This is X to document the community, its mission and activities. I'm reminded of earlier discussions with LACA about printed materials, about my choice to make Zine software for our pilot project with 1026, about Coaxial and Elevator Monday's printed books as well. Seems like an important part of the puzzle would be to provide simple (automated if possible) layout software for spaces to make publications, though I don't know how bogged down in this I want to be right away before completing digital archiving activity first.

[This is X book](https://institutforx.dk/publications/this-is-x/)

### 2022-10-25

Worked with Caleb on json templating and reviewing ideas for manipulating/resizing images using imagemagick.

Going back to my earlier discussion about producing various 'fidelity' output of the archive, I'm bookmarking an idea about creating a build step to produce minimal dithered image copies of all images. These can be used in the option to produce a low-bandwidth archive. I'm brainstorming some possible build outputs based on how intentions for how they can be deployed and viewed/browsed. This isn't at all confirmed but some ideas include:
* custom web archive - jekyll or js with templates, full images - example: Gas
* archive 'application' - built with lua/love and compiled. Views with text and images build from folder/structure
* web 1.0 - just html (from markdown), css, color images
* gemini -  gemtext, dithered b&w images

This workflow would work along Archive-It.

### 2022-10-18

I read this blog post about a speculative idea to have a browser standard for specifying website fidelity. They point out how NPR, CNN, PBS (for example) offer minimal versions of their sites without images and minimal CSS styling. This is great for low-bandwidth usage, for example for folks in rural areas, with minimal connection/speed/bandwidth, during a hurricane for example when one needs to conserver energy. Discussion of this topic of creating low-bandwidth sites is ongoing on the corner of Mastodon I'm on for example, but I see no discussion outside this select community of 'solarpunk' programmer-artists-makers. If we're striving for a future with less consumption, less energy usage, and even 'off-the-grid' networks and reducing consumption then lower bandwidth consumption should be a priority. One of my goals as stated is to make a version of these digital archives that can be consumed at different levels of what I'll now call fidelity: can they work on low-bandwidth, low-consuming browsers and devices/computers  and not just those with the fastest and latest computers and tablets? This works in parallel to creating multiple modes of collecting and presenting these archives: online, as software, as command line programs, and as organized collections of files (text, images, video, audio) that can be reproduced and shared.

[Website Fidelity](https://blog.jim-nielsen.com/2022/website-fidelity/)

### 2022-10-18

I want to write a bit more about digital preservation, which I think of as a nascent movement with many possible permutations.

> In 2014 Het Nieuwe Instituut launched New Archive Interpretations, a series of commissions for artists, designers and researchers to examine the influence and impact of the digital archive in relation to its analogue predecessor, the paper archive. Over a two-year period they investigated the challenges and opportunities of digital archives.

> ....This practice-led approach to digital archiving is vital because the characteristics of the digital demand a reconsideration of the material value of digital and digitized documents and their archives through practice and doing. In short, by experimenting we tested the limits and tried to uncover the possibilities and boundaries of digital archiving. In the process, we addressed the authoritative position of archives, the usefulness of open data and openness, and the importance of human presence.

These kinds of digital archiving investigations are important to me, and are informing the work I'm doing now. While the interest in permacomputing seems like a brand new trend, the need to preserve writing and visual materials is timeless, going back centuries. Linking new approaches to past ones helps us see what's new and specific to the time we are in now, but also how it may relate to previous approaches to archiving. When I talk about archiving I am using words like text, images, but what we're really archiving is a particular part of history - trying to preserve, present, contextualize this history through choices we make. 

As part of New Archives Interpretations, an interview "What Kind of Archivist Are You?" was conducted between organizer Annett Dekker and software artist and writer Marloes de Valk and artist and researcher Aymeric Mansoux, who both have a practice that goes back over a decade examining and creating new works dealing with issues of digital preservation. Their project What Remains, with Dave and Amber Griffiths, is an 8-bit videogame about archives and the environment, created to run on the 1985 Nintendo Entertainment System (NES). In the interview What "Kind of Archivist Are You?" they speak about using this old platform, with lots of emulators, with a thriving community 40 years on, and how old cartridges may 'last forever.' When asked about the position of public institutions on how archival systems function they say 

> ...today's difficulty for archival systems to be truly useful is linked to the need to constantly work around their incapacity to make things public. Since the late 90s retro gaming online communities have worked around the law to provide the most resilient and best documented archive of gaming software, as well as fostering the creation of a myriad of non profit organisations, and other types of groups, dedicated to both the preservation and the active use of so-called obsolete hardware. If we can do it from our basement with virtually no financial support, surely public institutions can do it too. 

In another answer they talk about the challenges of digital archiving:

> On the one hand there is the role of keeping information safe long-term, archiving for the future, without too much worry about access. On the other hand there is the approach of online communities that keep the information they value hyper accessible and alive, without focussing on the longevity of the information. Once the community shrinks or loses momentum, the information is no longer maintained and could easily disappear. 

They point to several simultaneous approaches, from individuals or groups that set up their own infrastructure to share books, files and objects, to the conveniences and challenges of working with corporate platforms, to the independent communities that work to free, share, preserve, use and breathe life into the shared works.

By the way, I love the license they use for their interview, the Copypast 1.0 License.

[New Archive Interpretations](https://archiefinterpretaties.hetnieuweinstituut.nl/en/new-archive-interpretations)

[Aymeric Mansoux and Marloes de Valk: What kind of archivist are you?](http://aaaan.net/aymeric-mansoux-and-marloes-de-valk-the-need-to-archive/)

[Copypasta 1.0 License](https://things.bleu255.com/licenses/copypasta.txt)


### 2022-10-08

Caleb and I met online with Eli Mellen, a friend via Mastodon code community. He offered to talk with us about site architecture, about some of our ideas, and to give feedback. It was a generous offer, and extremely helpful. First, he confirmed using a static site generator and not a dynamic server. Secondly, he told us to consider with each of these archive sites/projects, there needs to be a person who is the caretaker. Where does this data archive 'live?'. The most important part is the back of house, where things are archived/preserved if you're really interested in it living in the future.

Eli spoke about letting people work with an archive versus letting people stare at it. The metaphor he used was letting people into the butterfly garden versus pinning butterflies dead and letting people only look at them. In other words, how to make archives more playful, inventive, exploratory, interactive.

Next we talked about the database part. Caleb and I spoke about using JSON to hold our data (artworks, images, names, dates, collections). Eli talked about using sqlite as a database. The database would act as an intermediary layer to more easily manage the data itself. It doesn't need to be a backend. But you could point at a sqllite and your static site generator uses it to generate static files for the website. It gives more options than just using my file directories. If we build in Sqlite we would come up with a database scheme that seems useful for creating metadata and then write a script to jump into the database and export as json. The idea of the database is a tool to massage and edit that is easier than working directly in json. Easier than doing sorts, searches, etc. Tools like jq let us manipulate that json as more than a text file.

We next talked about a basic organizational hierarchy:

```
Class organization:
* index view - all the exhibits
* collection view - a specific exhibit
* detail view -  an artwork in that exhibit
```

Next we talked about Jekyll for static site generation. I've used it for half a decade at least. Caleb has put a lot of work into mastering Liquid templating. Eli told us to consider Hugo, which is compiled in Go. It means that you can export a specific binary so if Hugo dissapears you can ship the site with a binary of Go, making a self-contained ecosystem. This is worth consideration, though I don't know if we want to have to relearn new templating language and be stuck with the Go ecosystem. 

When looking at our json template Eli suggested an alteration: having an images array: each individual image will have some data (url, name, photographer, etc) and then an array of type, maybe with multiple types (exhibit, header, etc). One thing worth considering is the IIIF standard, a standard for how to distribute images (and audio and video) in a single specific way. It could give us a way to call any single image and pull it at a few different sizes based on this API. However, he cautioned it's overly complicated because it's a standard and an international body and many museums with their own complex interests participate, and it's not documented well. There are standalone servers that do this, but they are not static so they don't fit our model.

[International Image Interoperability Framework](https://iiif.io) 

I mentioned talking with Brewster Kahle and Eli suggested working with Archive-It may be the best structure if it allows us to host the images from their website-server. Another option is to have images live on our shared server. Some people would suggest a CDN but there are other options because the data becomes more abstracted from us. This is less important for a 'quirky art site.' If you're the Met, yes, maybe think about it. The important thing is to make sure you're not delivering full quality image every time. We can solve some of this in the design itself. 

Internet Archive has the idea of a collection. He suggested our external site as frontend, and then we build a web viewer at a collection and that we host that someplace, and we have a website built off this collection backed off the internet archive data.

In terms of accessibility we should think how to expose the metadata on the page even if it's not visible. Image descriptions: can you automate the building of that? For example: Artist name, name of piece, in this exhibit.

And what's the experience like if a site loads with no images, for screen readers, etc.

If we decide to add a search tool (I think unlikely?), he suggested looking at lunrjs.com, a client-side search, no database needed. Uses data in json. This is a way to add searching and filtering. A powerful tool if you're willing to add client side javascript. It's modeled after solr, which is a beefy java search indexing machine. There are some alternatives to lunr as well.

### 2022-09-23

Met with Caleb to review GAS design and the collected archive assets. We continued discussion on designing an archive for longevity. We've pretty much ruled out fast-moving frameworks but we're still thinking we may use Jekyll. We have lots of experience with it. I've used it for about 5 years or so, and the code I wrote back then still works to power my blog. This will let us mostly write html/css, with templating. For the modular stuff we'll likely use json and call it with Liquid. Our goal will be for the site last at least 5 years this way, in a framework that we can review and should be able to work with for years. We'll also organize all the assets in a hierachy of folders with text files.

I've been doing more reading, thinking and brainstorming about permacomputing and creating resilient archives. Caleb and I started talking last week about building a physical computer that could serve as a device to browse an archive. Partly inspired by Community Memory, this would be a computer with monitor and keyboard, and not intended as web software, but as an OS with minimal software to view an archive of an art space (we'll test with Flux Factory) and even perhaps to allow entry, which could be an uploaded station or as simple as allowing people to write in their own memories, experiences as part of their art space/specific art community.

```
                 /\
                /  \
               /    \
              /      \
             /  Our   \
            /  custom  \
           /  designed  \ 
	  / GUI software \
         /________________\
        /                  \
       / CLI, TUI programs  \
      /______________________\
     /                        \
    / The OS, builtin programs \
   /____________________________\
  /                              \
 / Text files, images, in folders \
/__________________________________\
```

While command line software (and simple text files and images) could be seen as the most simple and less brittle software, Caleb spoke about how the command line is offputting, not immediately compelling, perhaps even scary to many people. I posted on Mastodon about trying to create something resilient and perhaps needing things to be CLI for that reason but Devine responded and asked why not create both. I think that's a great idea. While we could code our own GUI software to view an archive to be as longterm as possible, we acknowledge it may still fail (dependencies not available, hardware changes, operating system changes, etc etc), so we could have a fallback to simpler systems. If our own software fails, what's below it? How can things still be used/seen? I showed Caleb my drawing of a pyramid. At the bottom is text files and images and folders, the 'meat' of an archive. The level above is the operating system and built-in programs, ways to display and view these files, agnostic by system. A level above this is our simple interactive command line program, and perhaps there is an interactive Text User Interface option. A simpler CLI version would be command line with just number input at the prompt. On top would be our custom GUI software, maybe a website, electron app (seems like it would break fast though!), a Lua program, TCL, or something else.

Simplest Text User Interface (not a real mock-up, just a tiny flavor of what things could look like):

```
Flux Archive 0.1

  ________
 /        \___________________________
/                                     |
|                                     |
| 1) View the archive directory...    |
| 2) See a random archive page        |
| 3) See a random archive image       |
| >4) Read the book of memories       |
| 5) Enter your own memory            |
| 6) Quit                             |
| ____________________________________|
```

Simplest Command Line Interface:

```
Flux Archive 0.1
----------------
1) View the archive directory... 
2) See a random archive page
3) See a random archive image
4) Read the book of memories  
5) Enter your own memory    

Selection:
>
```

Again, these are just minimal examples, not actually well-designed yet.

The simplest level in terms of complexity, is just a collection of folders and text files. This could be 'spit out' and read/the 'backend' of our CLI, TUI and GUI programs.

```
Flux_Archive/
  what-is-this.txt
  how-to-use.txt
  credits.txt
years/
   2022/
   events/
     exhibit-xxx-yyy/
        description.txt
        photos/
	   1.jpg
	   2.jpg
     flux-saturdays/
    2021/
    2020/
    .
    .
    .
memories/
   aaaaaaaas_memories.txt
   Lee_Tusman_memories.txt
```

Again, this is an overly simplified mockup.

We spent some time looking into the Internet Archive's Archive-It service, which Brewster said is something he'd love for us to check out, use, and encourage other arts orgs to use. It has many more options than the plain Wayback Machine, including many ways to input metadata, give us a frontend of sorts for the project, and has APIs. This is where we could build software specific to our arts communities we are trying to serve. As simple as customized form pages for input and uploading.

We also checked out the captures of our Jekyll site for our podcast Artists and Hackers, which was captured by Archive Team. We saw that the JavaScript modules were captured and did work in the archive of our site, albeit slowly, except the audio (which we host externally on podbean) was not saved. Whether external content could be configured and captured with Archive-It is something we'll have to look into (we hope/suspect yes).

For our GAS archive we are thinking we'll host our site content and images all together on a server rather than on an external IMG CDN though we'll look into the options. We spent time talking about organizing our data (artist names, exhibits, artwork lists, statements, etc etc) and considered JSON and SQLite and looked into some SQLite frontend code options. We'll likely stick with JSON since it's pretty standard and we know it and our 'database' will be relatively small.

### 2022-09-21

Today I am tuning into Publishing Partyline, a series of talks online organized on Varia about web-to-print design practices. For Experimental Archive Space we are using Bindery.js to mock up and print the zines, but found Bindery a bit brittle to work with. I'd really like an easy-to-use web-to-print workflow so I can build-in easy zine/catalog-making software for art spaces so they can have digital PDF and print PDF archives.

[Bindery.js](http://bindery.info/)  
[Publishing PartyLine](https://varia.zone/en/publishing-partyline.html)  
[Open Source Publishing](http://osp.kitchen/)  
[paged.js](https://pagedjs.org/)  

### 2022-09-20

Attended talk at NYU Engelberg Center with Brewster Kahle talking about the Internet Archive's legal case against 4 publishing companies who are suing them. Kahle talked about a canadian term Technological Neutraility - what you can do with previous-generation technology (e.g. a book) you should be able to do with present-day technology (e-books - buy, sell, loan, etc). Afterwards I talked to Brewster about the Archiving Artist Spaces project. He was extremely supportive and gave me some contacts at his organization to get in touch with and some suggestions to look into their API and to help other groups learn about and use ArchiveIt.

### 2022-09-07

Relapse of concussion symptoms. Ongoing dizziness, pain, headache, etc issues has made this project go at least half as slow as the pace I'd like it to go since computer work is harder. 

### 2022-09-06

Ongoing work on Gas archive

### 2022-08-11

Recorded an initial audio interview with about 10 members of Flux Factory in Aarhus, Denmark. 

### 2022-07-21

Pete and I completed an initial draft of the Little Berlin archive.

### 2022-06-30

Discuss Gas archive.

### 2022-06-15

Mostly recovered from concussion now. Able to code and work again. Met with Pete last week to check in on Little Berlin web archiving project. Trying to get a draft completed this week. Got all events page to render text if available. This process seems overly complicated and not a precise copy. Using a webrecorder archiver might be a better fit for most use cases for minified / obscured site code. Will investigate.

Links:  

[Library of Congress Citizen DJ project](https://citizen-dj.labs.loc.gov/about/)

### 2022-04-30

Last night I watched [Dawson City: Frozen Time](https://en.wikipedia.org/wiki/Dawson_City:_Frozen_Time), an incredible and gorgeous documentary about the history of the gold rush in the Alaskan Yukon and the discovery of 533 lost silent films. The Library of Congress says 75% of all silent films have been lost forever; in other words, no known reels are thought to still exist. The Scorsese Foundation says "half of all American films made before 1950 and over 90% of films made before 1929 are lost forever." This documentary covers the history of early silent film, how it was made, and the unique characteristics of life in this frontier town that led to films arriving years after their release, to be played in the town theater. Because silver nitrate film was so flammable, studios didn't want them back, so they were stored and then eventually dumped, some down the river, and others in a basement and then an old frozen pool. The main cinema burned down (twice I believe). And many large historical film archives also were destroyed in fires as a result of the flammable silver nitrate films. The documentary told their story but also presented the films as an incomplete document. It used modern documentary technique but also classic silent film techniques with a very powerful soundtrack, inter titles, and scanned photographs. Of course I couldn't help but also be reminded of the loss of digital files and documentation of DIY spaces and of course other histories and communities.

I got an email today from someone looking for a book I edited 8 years ago, called Really Free Culture: Anarchist Communities, Radical Movements and Public Practices. They wanted a PDF copy to help them cite something in an academic paper, but couldn't find the PDF. Well, I couldn't find it either, though I do have the paper copy. I created it using PediaPress, which let me compile Wikipedia articles into a book. Strangely to me, I found over the years it was used as a citation by many other wikipedia articles, including about bike sharing programs and Provo, the Lower East Side Motherfuckers, and some other places. Time for another edition. And a good reminder of the importance of physical print documentation.

### 2022-04-26

I'm part of the Flux Factory collective, and we'll be in residency on Governor's Island beginning now through the fall. That's a long time! Along with Flux Factory (in building 404), a large number of organizations, community groups, DIY art spaces and others have temporary or more permanent space on the island. For example, Flux Factory had use of a building last summer for 2 months, and this time we've been bumped up to have the space for at least 7 months. As I and many other artists are used to, the building is rundown. Former officers' family quarters, they have no utilities. We must bring in water and access portable restrooms offsite on another part of the island. The walls have lead paint. We brought in folding chairs and plastic folding tables, our tech and audio equipment. We set up shop onsite and use the building for studio space, meetings, performances, hang-outs, and exhibits. We'll have open studios many weekends, and host a continuation of Flux's longstanding picnic and artist presentations monthly event, Flux Thursdays, though on the island we'll do "Flux Saturdays". This will be a staging space for me to work on the Archiving Artist Spaces project, both specifically about and with Flux Factory in specific, and with other artist-run spaces located on the island as well. It's also a good meeting space for other organizations not located on the island, as many artists come through. I'll make some organizing and info-gathering materials and zines, conduct mini versions of the trainings, and meet new contacts and collaborators. First order of business will be to make an Archiving Artist Spaces website, a placeholder, and then to print handouts/flyres Calling For Artist-Run Spaces. I may build a little library space for zines in nook at some point, and hold workshops in the summer or fall.

### 2022-04-20

In the end of February I suffered a serious concussion and was unable to work for a month and a half.

I wasn't able to do much of anything on the project, but I did gather some related zines and talk to a few folks involved in archival work. 

### 2022-02-21

Met up with a friend from grad school today. He runs a company that creates archives of artwork documentation online for individual artists and institutions. It's a commercial service with yearly charges. I'm trying to do somewhat similar things, with some additional services, for no money. It reminds me of that extended metaphor about operating systems as cars from Neal Stephenson's long-in-the-tooth 'In the Beginning... Was the Command Line'. 

> Linux, which is right next door, and which is not a business at all. It's a bunch of RVs, yurts, tepees, and geodesic domes set up in a field and organized by consensus. The people who live there are making tanks. These are not old-fashioned, cast-iron Soviet tanks; these are more like the M1 tanks of the U.S. Army, made of space-age materials and jammed with sophisticated technology from one end to the other. But they are better than Army tanks. They've been modified in such a way that they never, ever break down, are light and maneuverable enough to use on ordinary streets, and use no more fuel than a subcompact car. These tanks are being cranked out, on the spot, at a terrific pace, and a vast number of them are lined up along the edge of the road with keys in the ignition. Anyone who wants can simply climb into one and drive it away for free. 

>  The group giving away the free tanks only stays alive because it is staffed by volunteers, who are lined up at the edge of the street with bullhorns, trying to draw customers' attention to this incredible situation. A typical conversation goes something like this:

> Hacker with bullhorn: "Save your money! Accept one of our free tanks! It is invulnerable, and can drive across rocks and swamps at ninety miles an hour while getting a hundred miles to the gallon!"
> Prospective station wagon buyer: "I know what you say is true...but...er...I don't know how to maintain a tank!"
> Bullhorn: "You don't know how to maintain a station wagon either!"
> Buyer: "But this dealership has mechanics on staff. If something goes wrong with my station wagon, I can take a day off work, bring it here, and pay them to work on it while I sit in the waiting room for hours, listening to elevator music."
> Bullhorn: "But if you accept one of our free tanks we will send volunteers to your house to fix it for free while you sleep!"
> Buyer: "Stay away from my house, you freak!"
> Bullhorn: "But..."
> Buyer: "Can't you see that everyone is buying station wagons?" 

Aside from the obviously mistaken "They’ve been modified in such a way that they never, ever break down" statement, it's a great and hilarious metaphor.

### 2022-02-20

Some notes on two things I reviewed today:

The Digital Preservation Commission is a UK and Ireland company and charity that works to help its members "secure our digital legacy." They host events, a blog, post on social media, video webinars on preservation topics and tools, and a Digital Preservation Handbook. Their extensive handbook, originally created in 2001 and refined in a 2nd edition and updated in phases is licensed Open Government licence v3.0, allowing re-use. It provides a good example for a toolkit, where mine can be aimed more specifically for shoestring artist-run-spaces.

Secondly, Devine posted Digital-Preservation Proposals published as part of a 20-year old article from MIT's Technology Review on Data Extinction. They list 4 methods of digital preservation: migration, emulation, encapsulation, and a "universal virtual computer."

> “People count on libraries to archive human creativity,” Abby Smith says. “It’s important for people to know, though, that libraries are at a loss about how to solve this problem.” When computer users are saving documents or images, they don’t think twice about making them accessible to future generations, she says. “They need to.”

Links:

[DPC's YouTube channel](https://www.youtube.com/channel/UCgCmeMYeF0nfZCRSof6qXug)  
[Web & Social Media Archiving:' DIY Approaches & Tools and HTTrack](https://www.youtube.com/watch?v=9_Nou5vlabc)  
[DPC Digital Preservation Handbook](https://www.dpconline.org/handbook/getting-started)  
[Data Extinction](https://www.technologyreview.com/2002/10/01/234717/data-extinction/) (MIT Technology Review)  

### 2022-02-12

There was an article in NPR today about archiving artwork from the Black Lives Matter protest on the fence that stood between The White House and Lafayette Park during 2020 protests.

The fence stood for 6 months and was a site that accumulated signs, artwork, scraps, and messages. In the article it describes a confluence of factors where both the participants and supporters of the protest (and the fence monument and artifacts) recognized the worth and value of each individual and the collective material on that fence; as well, archivists worked with the activists to preserve these pieces, which are now being displayed online and the physical artifacts will be preserved as well.

Over 800 signs were saved from the fence. It's really clear how much these kinds of archival projects can be communal, shared caretaking.

> The signs are being housed in a storage unit in Washington, D.C., as they await to be scanned by archivists at Baltimore's Enoch Pratt Free Library, a joint project with the D.C. Public Library. 

A collection of the signs was exhibited to mark the 100th anniversary of the Tulsa race massacre. Howard University acquired some of the signs. Some other museums expressed interest in owning pieces as well once all the items have been scanned (when I look today I count only 37 items scanned). They have still to decide how to break up the items and where they should go after. 

Looking at the metadata for each individual item I see Title, Date Created/Published, Medium, Summary, Reproduction Number, Rights Advisory, Call Number, Repository, Notes, Subjects, Format, Collections. 

An excerpt from one item:

> Poster was removed from the Black Lives Matter Memorial Fence, an installation of protest art attached to a chain link fence outside of the White House, Washington, D.C, from June 2020 through January 2021, responding to the murder of George Floyd on May 25, 2020, and other instances of police brutality against African Americans; other issues addressed by posters on the fence include institutional injustices, political protest, frustration and mourning related to COVID-19, and international solidarity.
> Forms part of: [Posters from the Black Lives Matter Memorial Fence in Washington, D.C.].
> Gift; Nadine Seiler & Karen Irwin on behalf of the BLM community; 2021; (DLC/PP-2021:011).

I also checked out the George Floyd and Anti-Racist Street Art Archive online. Some phrases that stand out to me on this linked web archive: "Use of images: Images and metadata available in this database are intended for non-commercial educational use only. The intention of this database is to document and analyze street art for scholarship, research, and teaching. Whenever possible we have included the names of artists responsible for creating these works. If you notice any errors or ommisions, please let us know!" The site and works are also licensed CC 4.0 SA.

I'm curious whether Library of Congress might be a good fit for the collections of digital artifacts (and possibly paper/item artifacts) as well from the artist-run archives I'm working with. And lastly, I'm making a note to possibly get in touch with Aliza Leventhal, co-founder of Society of American Archivist's Digital Design Records Taskforce.

Links:

[Artwork from the Black Lives Matter memorial has a new home: the Library of Congress](https://text.npr.org/1080027368) (NPR)  
[Black Lives Matter Memorial Fence search](https://www.loc.gov/pictures/search/?q=black+lives+matter+memorial+fence&st=gallery) (Library of Congress)  
[Example item](https://www.loc.gov/pictures/item/2021630016/)  
[George Floyd and Anti-Racist Street Art Archive](https://georgefloydstreetart.omeka.net/)  
[Aliza Leventhal on website of The Society of American Archivists](https://www2.archivists.org/prof-education/faculty/aliza-leventhal)  

### 2022-02-11

Learning from LACA:

I spent the afternoon today in the stacks of Los Angeles Contemporary Archive (LACA), meeting with the director Hailey, and going through various books and collections of files. LACA identifies as an "artist-run archive" and a non-circulating library "in which creative processes are recorded and preserved." 

> The Archive houses and catalogues art-related objects, with a special focus on underexposed artistic modes of expression and ephemeral materials. The Archive includes studio and performance ephemera, artists' writings, audio-visual recordigs, digital media files and institutional archives of artist-run spaces.

LACA has a great bound binder with documents about its purpose, collections, intentions, mission, as well as short, medium and long term planning. I found it really helpful to go through the whole thing, as it prompted me to consider lots of questions to consider while working on this project and producing a useful toolkit and tools for archiving artist-run spaces digitally.

Here's an example of the kinds of content I found in the archival storage box of Human Resources (artist-run space in LA):
* binders with bills, paid or unopened
* printed press releases, exhibition checklists, art statements
* gallery visitor sign-in sheets with individually written names and emails
* exhibition proposal letters sent to the director
* rejected grant letters written by Human Resources

I loved reading through the short term, medium term and longterm goals listed by LACA. Some items from 'medium term':

* institute a system for processing backlogged items
* create manuals for communicating appropriate handling of materials
* collaborative emergency response planning with neighboring archives in the event of a localized disaster
* physical supplies and maintenance for the space and physical preservation

Some questions for LACA:
* what practices can a space follow to ensure longterm protection of their creative activities?
* what kinds of institutions might a space outside of LA want to be in contact with about caretaking or archiving their work?
* is it important to print out web-based material (press releases, posts, exhibition pages, emails) for archiving?
* are you concerned about photocopy paper degrading?
* how do you decide which materials from an artist space to preserve?

I started thinking about the contents of the toolkit I will build for spaces interested in self-preservation archiving. Here's some questions that can go in the 'assessment' / how-to document:

* what kinds of materials exist (e.g. photo documentation of performances, instagram posts...)
* what should be saved? how will you decide?
* which of this do you already have?
* what materials are out 'there' that you need help accessing? how can you gain access to preserve it?

Some items I should put together:
* mission
* collections - what do we preserve?
* programs - trainings, what else?
* I'll want to put together a consent/oral history intake form. 

While looking at all of these physical artifacts and books today I realized I need to clarify how what I'm working on (archiving digital collections) relates to physical archives. I probably should have recomendations for groups wishing to donate physical artifacts. 

LACA itself needs some help upgrading its Drupal. It's been busy working on its physical space and archiving items and now needs some help (likely financial and technical) to upgrade the backend of its web presence, and then later likely modernize its front end. I shared the concept of using 'boring technology', tried and true technology that has been used for a long time and will likely continue to be used and maintained.

One last thing to mention: many of the collections coming in to LACA are donated without any explanation or context. But over time it's unclear what items are or how they relate to a space or artist. This is similar to how I've found lots of photos without metadata; it's unclear the subject, what year or person it relates to, or the story of what we're seeing. Collecting this kind of info may be difficult and I'll have to think through ways to help people create contextual information.

Many of the archival books relating to artist-run spaces I reviewed consisted primarily of photo documentation, with a few essays or interviews at the end. Some others were roganized differently, with receipts or emails short welcome message., or maybe a filled out new member/application form from each participant. Increasingly, I think in addition to these web archives having a physical book is important as well. It can find different audiences as it can be more easily shared. It can act as an intentional mini-archive of sorts, displaying items or people or collections or artifacts it deems important and providing context. This is also prompting me to think about my potential creation of this kind of book layout software that can help with this.

Links:

[Los Angeles Contemporary Archive](http://lacarchive.com)  
[Significance 2.0: A Guide to Assessing the Significance of Collections](https://www.arts.gov.au/sites/default/files/significance-2.0.pdf?acsf_files_redirect) (PDF, Collections Council of Australia)

### 2022-02-06

Took a hike in Griffith Park with Brianna, Nina, Don, Gu. Spoke with Don about Elevator Mondays, his former DIY space in Pico Union. I used to visit when I lived in LA. I talked about my project and spoke about the generative zine-making part. He designed Elevator Mondays/Elevator Book in 2020: "The 314 page book features over 150 artists across 20+ exhibitions, images of exhibition documentation are combined with studio visit snap shots and personal images of friends, hikes, and dogs...there are lots of dogs in this book." We made plans to meet up again so I can check out the hand made artist books and look at my generative zine-making software. I'm also going to meet up with Ceci and looking forward to talking about these issues with GAS, and Eva at Coaxial, and LACA and Human Resources.

Links:

[Elevator Mondays](https://www.instagram.com/elevatormondays/)

[Car, shed ... elevator? The Los Angeles art spaces proving smaller is better](https://www.theguardian.com/artanddesign/2017/jun/30/los-angeles-alternative-art-galleries-gallery1993) (The Guardian, 2017)

Questions:

* Who are these archives for? (beginning to answer: 'alumni' of these spaces, the greater public who may be interested in their activity, future scholars/artists/communities who may want to research and learn about these communities and their activities)
* Who owns these archives as a whole and their items (photos, text, other elements) individually? (beginning to answer: the groups who contributed them, the 'public', no one)
* What are we including? missing? leaving out? (beginning to answer: 'archived' frozen or cloned websites, social media images, oral history.; video recordings, physical media; those that didn't know or want to participate)
* What is the goal? (to build archives and tools to attempt to capture some part of the artist creative and intellectual output and the community that develops out of these spaces. to be caretakers and share these archives for future audiences / generations. to build awareness of archiving needs and tools that artist-run communities can use.)

### 2021-12-29

This week I looked at Content Management Systems (CMS) options for static sites. I didn't find much. I lean away from Wordpress and most other CMS because they're PHP and dynamic, opening them up to being hacked, requiring constant upgrade cycles and the complications of competing plugins. On the other hand a CMS allows non-coders to create and edit a site, so it would be nice to find something like this I could recommend to less-techinical artist spaces. One option I looked at are Wordpress -> static site output generators. The simplest and complete is SimplyStatic but it needs a $100 PRO annual account for the features I'd want, and it's not open source.

Today I worked with Pete, a past organizer at Little Berlin (along with me and many others). He used OctoParse to grab the text content from all events, members and press pages and convert them to spreadsheets that he put in Google Drive. Spreadsheet files, such as from Google sheets or Excel or open source alternatives like Etherpad can be easily exported as CSV data files. I built a parser in node.js, using csv-parse and the built-in fs filesystem packages to ingest the events.csv file and then render out separate html pages for each separate event. I inject the basic html tags around these so the rendered page is html5.

My next step was to tackle CSS. I turned on the developer features for the Squarespace site. I git cloned to downloaded the site to my local computer. Sniffing around the template file I was unable to find the obfuscated actual rendered CSS output, and the less css preprocessor files didn't seem to render out the Little Berlin site theme. Probably there's some other hidden magic that Squarespace hides, since that's how they make their money. 

Okay, so my next step, from scratch, I wrote some CSS using flexbox, my layout tool of choice since it's canon and easy to get going from examples. The Little Berlin site is pretty basic, so I just needed to make a "Holy Grail" layout in Flexbox, and spent time getting this set up. I got a good approximation, showed Pete.

Still to come: some of the rendered pages using my parser get messed up and don't export nor display error message. I'm guessing it's happening on pages where the description text incorporates forbidden characters possibly, like pipe, extra dots, quotes, commas. Will need to come back and verify and correct this. *(Update: correct! fixed.)*

Links:

[2 Ways to Create the Holy Grail Layout with Flexbox](https://www.developerdrive.com/holy-grail-layout-flexbox/) (Developer Drive)  
[SimplyStatic static site generator from Wordpress](https://wordpress.org/plugins/simply-static/#description)

### 2021-06-08

Some notes on using wget on a domain to download images:

```
wget -nd -r -A jpeg,jpg,bmp,gif,png --level=inf https://domain.com
```

This uses wget to download all images recursively through infinite levels of sub-directories and save them all into the single folder. At some point it seemed to get stuck (when it got to 3880 downloaded images) so I re-ran the command with the -c flag (continue), which allows it to check headers of previous files.

Next I used Windows software to brute-force download every public photo from Space 1026 account on one of the platforms due to them not having access to that account anymore. When so many people organize a space, who holds the passwords? How do you manage them? Not an easy thing for many small businesses to handle, much less a small no-profit artist-run collective.

Then Caleb and I reviewed some of our Experimental Archive Space designs.

Links:

[Machine Project Guide to Planning and Curating Events](https://machineproject.com/build/engine/wp-content/uploads/2018/01/Machine_Curating.pdf) (Machine Project, PDF)  
[Queer Archive Work](https://queer.archive.work/)  
[Artists Space image archive](https://images.artistsspace.org/)  
[Babycastles: Scrape-The-Internet-For-Our-Archives](https://github.com/babycastles/Scrape-The-Internet-For-Our-Archives) (GitHub repo)   
