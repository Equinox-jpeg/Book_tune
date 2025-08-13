const books = [
  {
    "id": 1,
    "title": "Pride and Prejudice",
    "author": "Jane Austen",
    "cover": "images/pride-and-prejudice.jpg",
    "description": "Elizabeth Bennet navigates class, family, and pride as she encounters the enigmatic Mr. Darcy.",
    "category": "Classic Romance",
    "isPremium": 1
  },
  {
    "id": 2,
    "title": "Moby-Dick",
    "author": "Herman Melville",
    "cover": "images/moby-dick.jpg",
    "description": "Captain Ahab’s obsessive hunt for the white whale becomes a meditation on fate and defiance.",
    "category": "Adventure",
    "isPremium": 1
  },
  {
    "id": 3,
    "title": "The Adventures of Sherlock Holmes",
    "author": "Arthur Conan Doyle",
    "cover": "images/the-adventures-of-sherlock-holmes.jpg",
    "description": "Twelve dazzling cases where Holmes’s cool logic and Watson’s warmth uncover hidden truths.",
    "category": "Mystery",
    "isPremium": 1
  },
  {
    "id": 4,
    "title": "The Picture of Dorian Gray",
    "author": "Oscar Wilde",
    "cover": "images/the-picture-of-dorian-gray.jpg",
    "description": "A handsome man stays young while his secret portrait bears the weight of sin and time.",
    "category": "Gothic Fiction",
    "isPremium": 1
  },
  {
    "id": 5,
    "title": "Frankenstein",
    "author": "Mary Shelley",
    "cover": "images/frankenstein.jpg",
    "description": "A scientist creates life and must face the loneliness and rage of his abandoned creation.",
    "category": "Gothic Horror",
    "isPremium": 1
  },
  {
    "id": 6,
    "title": "Journey to the Center of the Earth",
    "author": "Jules Verne",
    "cover": "images/journey-to-the-center-of-the-earth.jpg",
    "description": "A coded parchment sends explorers into vast caverns filled with wonders and ancient life.",
    "category": "Science Fiction",
    "isPremium": 1
  },
  {
    "id": 7,
    "title": "Dracula",
    "author": "Bram Stoker",
    "cover": "images/dracula.jpg",
    "description": "Letters and diaries chart a chilling battle against a charismatic count from Transylvania.",
    "category": "Gothic Horror",
    "isPremium": 1
  },
  {
    "id": 8,
    "title": "War and Peace",
    "author": "Leo Tolstoy",
    "cover": "images/war-and-peace.jpg",
    "description": "Love and loss unfold across salons and battlefields during Napoleon’s invasion of Russia.",
    "category": "Historical",
    "isPremium": 1
  },
  {
    "id": 9,
    "title": "The Count of Monte Cristo",
    "author": "Alexandre Dumas",
    "cover": "images/the-count-of-monte-cristo.jpg",
    "description": "Edmond Dantès escapes injustice to orchestrate a patient, brilliant revenge.",
    "category": "Historical Adventure",
    "isPremium": 1
  },
  {
    "id": 10,
    "title": "Les Misérables",
    "author": "Victor Hugo",
    "cover": "images/les-mis-rables.jpg",
    "description": "Valjean seeks redemption while revolution, love, and the law collide in Paris.",
    "category": "Classic Drama",
    "isPremium": 1
  },
  {
    "id": 11,
    "title": "The Wonderful Wizard of Oz",
    "author": "L. Frank Baum",
    "cover": "images/the-wonderful-wizard-of-oz.jpg",
    "description": "Dorothy and friends follow the Yellow Brick Road in a quest for home and heart.",
    "category": "Fantasy",
    "isPremium": 1
  },
  {
    "id": 12,
    "title": "Alice’s Adventures in Wonderland",
    "author": "Lewis Carroll",
    "cover": "images/alice-s-adventures-in-wonderland.jpg",
    "description": "Alice tumbles into a land of wordplay, riddles, and delightfully impossible logic.",
    "category": "Fantasy",
    "isPremium": 1
  },
  {
    "id": 13,
    "title": "Peter Pan",
    "author": "J. M. Barrie",
    "cover": "images/peter-pan.jpg",
    "description": "The boy who never grows up leads a flight to Neverland’s pirates, pixies, and peril.",
    "category": "Fantasy",
    "isPremium": 1
  },
  {
    "id": 14,
    "title": "A Connecticut Yankee in King Arthur’s Court",
    "author": "Mark Twain",
    "cover": "images/a-connecticut-yankee-in-king-arthur-s-court.jpg",
    "description": "A time-tossed engineer applies modern know‑how to Camelot, with satirical sparks.",
    "category": "Fantasy",
    "isPremium": 1
  },
  {
    "id": 15,
    "title": "Leaves of Grass",
    "author": "Walt Whitman",
    "cover": "images/leaves-of-grass.jpg",
    "description": "Expansive poems celebrate the self, the body, and the vibrant chorus of America.",
    "category": "Poetry",
    "isPremium": 1
  },
  {
    "id": 16,
    "title": "The Raven and Other Poems",
    "author": "Edgar Allan Poe",
    "cover": "images/the-raven-and-other-poems.jpg",
    "description": "Melodic, macabre verses explore longing, memory, and the supernatural.",
    "category": "Poetry",
    "isPremium": 0
  },
  {
    "id": 17,
    "title": "The Divine Comedy",
    "author": "Dante Alighieri",
    "cover": "images/the-divine-comedy.jpg",
    "description": "A visionary journey through Hell, Purgatory, and Paradise in luminous tercets.",
    "category": "Poetry",
    "isPremium": 0
  },
  {
    "id": 18,
    "title": "The Time Machine",
    "author": "H. G. Wells",
    "cover": "images/the-time-machine.jpg",
    "description": "A Victorian traveler leaps ages ahead to discover humanity’s strange descendants.",
    "category": "Science Fiction",
    "isPremium": 0
  },
  {
    "id": 19,
    "title": "The War of the Worlds",
    "author": "H. G. Wells",
    "cover": "images/the-war-of-the-worlds.jpg",
    "description": "Martian tripods devastate Earth, forcing a reckoning with empire and fragility.",
    "category": "Science Fiction",
    "isPremium": 0
  },
  {
    "id": 20,
    "title": "The Invisible Man",
    "author": "H. G. Wells",
    "cover": "images/the-invisible-man.jpg",
    "description": "A triumphant experiment turns a scientist unseen—and untethered from morality.",
    "category": "Science Fiction",
    "isPremium": 0
  },
  {
    "id": 21,
    "title": "Twenty Thousand Leagues Under the Seas",
    "author": "Jules Verne",
    "cover": "images/twenty-thousand-leagues-under-the-seas.jpg",
    "description": "Aboard the Nautilus, Captain Nemo explores wonders and wages a private war.",
    "category": "Science Fiction",
    "isPremium": 0
  },
  {
    "id": 22,
    "title": "From the Earth to the Moon",
    "author": "Jules Verne",
    "cover": "images/from-the-earth-to-the-moon.jpg",
    "description": "A bold 19th‑century plan imagines humanity’s first launch to the Moon.",
    "category": "Science Fiction",
    "isPremium": 0
  },
  {
    "id": 23,
    "title": "Around the World in 80 Days",
    "author": "Jules Verne",
    "cover": "images/around-the-world-in-80-days.jpg",
    "description": "Phileas Fogg races the globe on a wager, with mishaps and marvels at every turn.",
    "category": "Adventure",
    "isPremium": 0
  },
  {
    "id": 24,
    "title": "The Three Musketeers",
    "author": "Alexandre Dumas",
    "cover": "images/the-three-musketeers.jpg",
    "description": "D’Artagnan joins Athos, Porthos, and Aramis: intrigue, duels, and unwavering loyalty.",
    "category": "Historical Adventure",
    "isPremium": 0
  },
  {
    "id": 25,
    "title": "The Hound of the Baskervilles",
    "author": "Arthur Conan Doyle",
    "cover": "images/the-hound-of-the-baskervilles.jpg",
    "description": "A spectral hound haunts the moors; Holmes separates legend from lethal plot.",
    "category": "Mystery",
    "isPremium": 0
  },
  {
    "id": 26,
    "title": "A Study in Scarlet",
    "author": "Arthur Conan Doyle",
    "cover": "images/a-study-in-scarlet.jpg",
    "description": "Holmes and Watson’s debut links a London crime to a far‑reaching past.",
    "category": "Mystery",
    "isPremium": 0
  },
  {
    "id": 27,
    "title": "The Sign of the Four",
    "author": "Arthur Conan Doyle",
    "cover": "images/the-sign-of-the-four.jpg",
    "description": "Stolen treasure and a secret pact test Holmes’s brilliance and resolve.",
    "category": "Mystery",
    "isPremium": 0
  },
  {
    "id": 28,
    "title": "The Moonstone",
    "author": "Wilkie Collins",
    "cover": "images/the-moonstone.jpg",
    "description": "A vanished gem and multiple narrators create a pioneering detective puzzle.",
    "category": "Mystery",
    "isPremium": 0
  },
  {
    "id": 29,
    "title": "The Woman in White",
    "author": "Wilkie Collins",
    "cover": "images/the-woman-in-white.jpg",
    "description": "Identity, conspiracy, and a pale apparition twist through a tense inheritance drama.",
    "category": "Gothic Mystery",
    "isPremium": 0
  },
  {
    "id": 30,
    "title": "The Strange Case of Dr Jekyll and Mr Hyde",
    "author": "Robert Louis Stevenson",
    "cover": "images/the-strange-case-of-dr-jekyll-and-mr-hyde.jpg",
    "description": "Respectability and desire collide in a chilling split of self.",
    "category": "Gothic Horror",
    "isPremium": 0
  },
  {
    "id": 31,
    "title": "Grimm’s Fairy Tales",
    "author": "Jacob and Wilhelm Grimm",
    "cover": "images/grimm-s-fairy-tales.jpg",
    "description": "Folk stories from dark woods to shining castles—brutal, moral, and timeless.",
    "category": "Fairy Tales",
    "isPremium": 0
  },
  {
    "id": 32,
    "title": "The Arabian Nights",
    "author": "Anonymous",
    "cover": "images/the-arabian-nights.jpg",
    "description": "Scheherazade’s thousand‑and‑one tales weave sultans, sailors, djinn, and wonder.",
    "category": "Fantasy",
    "isPremium": 0
  },
  {
    "id": 33,
    "title": "The King of Elfland’s Daughter",
    "author": "Lord Dunsany",
    "cover": "images/the-king-of-elfland-s-daughter.jpg",
    "description": "A mortal lord weds an elfin princess in a luminous, wistful early fantasy.",
    "category": "Fantasy",
    "isPremium": 0
  },
  {
    "id": 34,
    "title": "The Jungle Book",
    "author": "Rudyard Kipling",
    "cover": "images/the-jungle-book.jpg",
    "description": "Mowgli learns the law of the jungle with Baloo, Bagheera, and Shere Khan.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 35,
    "title": "Peter and Wendy",
    "author": "J. M. Barrie",
    "cover": "images/peter-and-wendy.jpg",
    "description": "A novelization of Peter Pan’s adventures, rich with play and poignancy.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 36,
    "title": "The Secret Garden",
    "author": "Frances Hodgson Burnett",
    "cover": "images/the-secret-garden.jpg",
    "description": "A locked garden restores friendship, health, and hope to lonely hearts.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 37,
    "title": "A Little Princess",
    "author": "Frances Hodgson Burnett",
    "cover": "images/a-little-princess.jpg",
    "description": "Sara Crewe’s grace and imagination outshine hardship at a strict school.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 38,
    "title": "Heidi",
    "author": "Johanna Spyri",
    "cover": "images/heidi.jpg",
    "description": "An alpine childhood of goats, mountains, and the healing power of home.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 39,
    "title": "Anne of Green Gables",
    "author": "L. M. Montgomery",
    "cover": "images/anne-of-green-gables.jpg",
    "description": "An imaginative orphan finds mishaps and belonging in Avonlea.",
    "category": "Children's",
    "isPremium": 0
  },
  {
    "id": 40,
    "title": "Great Expectations",
    "author": "Charles Dickens",
    "cover": "images/great-expectations.jpg",
    "description": "Pip’s rise from forge to finery is shadowed by mystery and remorse.",
    "category": "Classic",
    "isPremium": 0
  },
  {
    "id": 41,
    "title": "A Tale of Two Cities",
    "author": "Charles Dickens",
    "cover": "images/a-tale-of-two-cities.jpg",
    "description": "A story of sacrifice and rebirth set amid the French Revolution’s fury.",
    "category": "Historical",
    "isPremium": 0
  },
  {
    "id": 42,
    "title": "Little Women",
    "author": "Louisa May Alcott",
    "cover": "images/little-women.jpg",
    "description": "The March sisters chase dreams and duty with wit, work, and warmth.",
    "category": "Classic",
    "isPremium": 0
  },
  {
    "id": 43,
    "title": "Don Quixote",
    "author": "Miguel de Cervantes",
    "cover": "images/don-quixote.jpg",
    "description": "A would‑be knight tilts at windmills in a comic, tender odyssey.",
    "category": "Classic",
    "isPremium": 0
  },
  {
    "id": 44,
    "title": "Anna Karenina",
    "author": "Leo Tolstoy",
    "cover": "images/anna-karenina.jpg",
    "description": "Passion and judgment collide from glittering salons to snowy fields.",
    "category": "Classic",
    "isPremium": 0
  },
  {
    "id": 45,
    "title": "The Scarlet Letter",
    "author": "Nathaniel Hawthorne",
    "cover": "images/the-scarlet-letter.jpg",
    "description": "Hester Prynne endures shame and finds strength under the letter A.",
    "category": "Classic",
    "isPremium": 0
  },
  {
    "id": 46,
    "title": "Meditations",
    "author": "Marcus Aurelius",
    "cover": "images/meditations.jpg",
    "description": "A Roman emperor’s notes on virtue, clarity, and resilience—Stoicism distilled.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 47,
    "title": "The Republic",
    "author": "Plato",
    "cover": "images/the-republic.jpg",
    "description": "Dialogues probing justice, the soul, and the architecture of an ideal city.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 48,
    "title": "Walden",
    "author": "Henry David Thoreau",
    "cover": "images/walden.jpg",
    "description": "A quiet experiment in simplicity becomes a meditation on purpose and nature.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 49,
    "title": "Thus Spoke Zarathustra",
    "author": "Friedrich Nietzsche",
    "cover": "images/thus-spoke-zarathustra.jpg",
    "description": "A poetic call to self‑overcoming that unsettles and inspires in equal measure.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 50,
    "title": "The Art of War",
    "author": "Sun Tzu",
    "cover": "images/the-art-of-war.jpg",
    "description": "Ancient strategies on conflict, deception, and decisive advantage.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 51,
    "title": "On the Shortness of Life",
    "author": "Seneca",
    "cover": "images/on-the-shortness-of-life.jpg",
    "description": "A Stoic reminder that life is long—if you learn how to use it.",
    "category": "Philosophy",
    "isPremium": 0
  },
  {
    "id": 52,
    "title": "Leaves of Grass: 1891–92 Edition",
    "author": "Walt Whitman",
    "cover": "images/leaves-of-grass-1891-92-edition.jpg",
    "description": "Whitman’s final, expansive vision of self, nation, and nature.",
    "category": "Poetry",
    "isPremium": 0
  },
  {
    "id": 53,
    "title": "The Canterbury Tales",
    "author": "Geoffrey Chaucer",
    "cover": "images/the-canterbury-tales.jpg",
    "description": "Pilgrims share bawdy, moral, and marvelous tales on the road to a shrine.",
    "category": "Poetry",
    "isPremium": 0
  },
  {
    "id": 54,
    "title": "Selected Poems",
    "author": "Emily Dickinson",
    "cover": "images/selected-poems.jpg",
    "description": "Compressed lightning—startling meditations on death, love, and hope.",
    "category": "Poetry",
    "isPremium": 0
  },
  {
    "id": 55,
    "title": "Treasure Island",
    "author": "Robert Louis Stevenson",
    "cover": "images/treasure-island.jpg",
    "description": "A map marked with an X leads to mutiny, courage, and pirate legend.",
    "category": "Adventure",
    "isPremium": 0
  },
  {
    "id": 56,
    "title": "The Call of the Wild",
    "author": "Jack London",
    "cover": "images/the-call-of-the-wild.jpg",
    "description": "Stolen from comfort, Buck answers the primordial pull of the North.",
    "category": "Adventure",
    "isPremium": 0
  },
  {
    "id": 57,
    "title": "White Fang",
    "author": "Jack London",
    "cover": "images/white-fang.jpg",
    "description": "A wolf‑dog’s brutal youth bends toward trust and loyalty.",
    "category": "Adventure",
    "isPremium": 0
  },
  {
    "id": 58,
    "title": "The Iliad",
    "author": "Homer",
    "cover": "images/the-iliad.jpg",
    "description": "Wrath and fate clash before Troy in a foundational poem of war and honor.",
    "category": "Epic",
    "isPremium": 0
  },
  {
    "id": 59,
    "title": "The Odyssey",
    "author": "Homer",
    "cover": "images/the-odyssey.jpg",
    "description": "Odysseus voyages home through monsters, magic, and the tests of wit.",
    "category": "Epic",
    "isPremium": 0
  },
  {
    "id": 60,
    "title": "Beowulf",
    "author": "Anonymous",
    "cover": "images/beowulf.jpg",
    "description": "A warrior battles Grendel, a vengeful mother, and a dragon in ancient verse.",
    "category": "Epic",
    "isPremium": 0
  }
];
