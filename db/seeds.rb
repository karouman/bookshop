# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

# Init Main Genres
gAction = Genre.create( title: 'Action and Adventure', description: 'Action and adventure books constantly have you on the edge of your seat with excitement, as your fave main character repeatedly finds themselves in high stakes situations. The protagonist has an ultimate goal to achieve and is always put in risky, often dangerous situations. This genre typically crosses over with others like mystery, crime, sci-fi, and fantasy. (Harry Potter anyone?)')
gClassics = Genre.create( title: 'Classics', description: 'You may think of these books as the throwback readings you were assigned in English class. (Looking at you, Charles Dickens.) The classics have been around for decades, and were often groundbreaking stories at their publish time, but have continued to be impactful for generations, serving as the foundation for many popular works we read today.' ) 
gComics = Genre.create( title: 'Comic Book or Graphic Novel', description: 'The stories in comic books and graphic novels are presented to the reader through engaging, sequential narrative art (illustrations and typography) that\'s either presented in a specific design or the traditional panel layout you find in comics. With both, you\'ll often find the dialogue presented in the tell-tale "word balloons" next to the respective characters.' )
gMystery = Genre.create( title: 'Detective and Mystery', description: 'The plot always revolves around a crime of sorts that must be solved—or foiled—by the protagonists.' )
gFantasy = Genre.create( title: 'Fantasy', description: 'While usually set in a fictional imagined world—in opposition, Ta-Nehisi\'s Coates\'s The Water Dancer takes place in the very real world of American slavery—fantasy books include prominent elements of magic, mythology, or the supernatural.' )
Genre.create( title: 'Historical Fiction', description: 'These books are based in a time period set in the past decades, often against the backdrop of significant (real) historical events.' )
Genre.create( title: 'Horror', description: 'Meant to cause discomfort and fear for both the character and readers, horror writers often make use of supernatural and paranormal elements in morbid stories that are sometimes a little too realistic. The master of horror fiction? None other than Stephen King.' )
Genre.create( title: 'Literary Fiction', description: 'Though it can be seen as a broad genre that encompasses many others, literary fiction refers to the perceived artistic writing style of the author. Their prose is meant to evoke deep thought through stories that offer personal or social commentary on a particular theme.' )
Genre.create( title: 'Romance', description: 'Oh romance, how could we ever resist you? The genre that makes your heart all warm and fuzzy focuses on the love story of the main protagonists. This world of fiction is extremely wide-reaching in and of itself, as it has a variety of sub-genres including: contemporary romance, historical, paranormal, and the steamier erotica. If you\'re in need of any suggestions, we\'ve got a list of the best romances of all time and the top picks of the year.' )
Genre.create( title: 'Science Fiction (Sci-Fi) ', description: 'Though they\'re often thought of in the same vein as fantasy, what distinguishes science fiction stories is that they lean heavily on themes of technology and future science. You\'ll find apocalyptic and dystopian novels in the sci-fi genre as well.' )
Genre.create( title: 'Short Stories', description: 'Though they encompass many of the genres we describe here, short stories are brief prose that are significantly, well, shorter than novels. Writers strictly tell their narratives through a specific theme and a series of brief scenes, though many authors compile these stories in wide-ranging collections, as featured below.' )
Genre.create( title: 'Suspense and Thrillers', description: 'While they often encompass the same elements as mystery books, the suspense and thriller genre sees the hero attempt to stop and defeat the villain to save their own life rather than uncover a specific crime. Thrillers typically include cliffhangers and deception to encourage suspense, while pulling the wool over the eyes of both the main character and reader.' )
Genre.create( title: 'Women\'s Fiction', description: 'Another genre that encompasses many others, women\'s fiction is written specifically to target female readers, often reflecting on the shared experiences of being a woman in society and the protagonist\'s personal growth.' )
Genre.create( title: 'Biographies and Autobiographies', description: 'Serving as an official account of the details and events of a person\'s life span, autobiographies are written by the subject themselves, while biographies are written by an author who is not the focus of the book.' )
Genre.create( title: 'Cookbooks', description: 'Traditionally penned by professional chefs or even your favorite celebs, cookbooks offer an appetizing collection of recipes, specific to a theme, cuisine, or experience chosen by the author.' )
Genre.create( title: 'Essays', description: 'Typically written in the first-person, writers use their own personal experiences to reflect on a theme or topic for the reader. Many acclaimed authors—like James Baldwin and Toni Morrison—combine these pieces into collections of social commentary.' )
Genre.create( title: 'History', description: 'These books chronicle and layout a specific moment in time, with a goal to educate and inform the reader, looking at all parts of the world at any given moment.' )
Genre.create( title: 'Memoir', description: 'While a form of autobiography, memoirs are more flexible in that they typically don\'t feature an extensive chronological account of the writer\'s life. Instead, they focus on key moments and scenes that communicate a specific message or lesson to the reader about the author.' )
Genre.create( title: 'Poetry', description: 'With poetry—a form of written art—authors choose a particular rhythm and style to evoke and portray various emotions and ideas. Sometimes the message is clear (like a straight-forward love poem) while with others, the meaning is hidden behind a play on words—it all depends on the writer\'s style, intent, and chosen theme.' )
Genre.create( title: 'Self-Help', description: 'Whether the focus is on emotional well-being, finances, or spirituality, self-help books center on encouraging personal improvement and confidence in a variety of facets of your life.' )
Genre.create( title: 'True Crime', description: 'Like its much-loved television counterparts, true crime books chronicle and examine actual crimes and events in exacting detail, with many focusing on infamous murders, kidnappings, and the exploits of serial killers.' )

# Init main SF Library
lSf = Library.create( name: 'San Francisco Public Library', address: '100 Larkin St', zipcode:'CA 94102', city: 'San Francisco' )
lPark = Library.create( name: 'Park Branch Library', address: '1833 Page St', zipcode:'CA 94117', city: 'San Francisco' )
lPresidio = Library.create( name: 'Presidio Branch Library', address: '3150 Sacramento St', zipcode:'CA 94115', city: 'San Francisco' )
Library.create( name: 'Simpson Library (California College of the Arts)', address: '1111 8th St', zipcode:'CA 94107', city: 'San Francisco' )
Library.create( name: 'Richmond/Senator Milton Marks Branch Library', address: '351 9th Ave', zipcode:'CA 94118', city: 'San Francisco' )
Library.create( name: 'City College of San Francisco Downtown Center Library', address: '84 4th St', zipcode:'CA 94103', city: 'San Francisco' )

#init users
uVincent = User.create( login: 'vincent', password:'newpasswd' )
User.create( login: 'guillaume', password:'newpasswd' )


bCatch = Book.create( title: 'Catch and Kill', abstract: 'The son of a zookeeper, Pi Patel has an encyclopedic knowledge of animal behavior and a fervent love of stories. When Pi is sixteen, his family emigrates from India to North America aboard a Japanese cargo ship, along with their zoo animals bound for new homes. The ship sinks. Pi finds himself alone in a lifeboat, his only companions a hyena, an orangutan, a wounded zebra, and Richard Parker, a 450-pound Bengal tiger. Soon the tiger has dispatched all but Pi, whose fear, knowledge, and cunning allow him to coexist with Richard Parker for 227 days while lost at sea. When they finally reach the coast of Mexico, Richard Parker flees to the jungle, never to be seen again. The Japanese authorities who interrogate Pi refuse to believe his story and press him to tell them "the truth." After hours of coercion, Pi tells a second story, a story much less fantastical, much more conventional--but is it more true? <img src="https://images-na.ssl-images-amazon.com/images/I/51rxEvLljUL._SX322_BO1,204,203,200_.jpg" </img>', genres: [ gAction, gClassics ], library: lSf )

bLife = Book.create( title: 'Life of Pi', abstract: 'My first book abstract.', genres: [ gClassics, gComics, gFantasy ], library: lSf )
Book.create( title: 'The Three Musketeers', abstract: 'My first book abstract.', genres: [ gFantasy ], library: lSf )
Book.create( title: 'The Call of the Wild', abstract: 'My first book abstract.', genres: [ gFantasy, gMystery ], library: lSf)
Book.create( title: 'To Kill a Mockingbird', abstract: 'My first book abstract.', genres: [ gAction ], library: lPark )
Book.create( title: 'Little Women', abstract: 'My first book abstract.', genres: [ gClassics, gFantasy ], library: lPark)
Book.create( title: 'Beloved', abstract: 'My first book abstract.', genres: [ gFantasy ], library: lPark )
Book.create( title: 'Watchmen', abstract: 'My first book abstract.', genres: [ gFantasy, gMystery ], library: lPresidio )

require 'date'
Borrowing.create( user: uVincent, book: bCatch, returns: DateTime.now() - 20, returned: DateTime.now() - 10 )
Borrowing.create( user: uVincent, book: bCatch, returns: DateTime.now() + 3 )
Borrowing.create( user: uVincent, book: bLife, returns: DateTime.now() - 7 )
