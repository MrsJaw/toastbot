# Description:
#   Pinkys Ponderings generator
#   Source: http://pinkyandthebrain.wikia.com/wiki/Are_You_Pondering_What_I%27m_Pondering%3F
#
# Commands:
#   are you pondering what i - reply with one of Pinky's responses to Brain
#
# Author:
#   @kamala

module.exports = (robot) ->

    PinkyResponse = [
        ', but where are we going to find a duck and a hose at this hour?',
        ', but where will we find an open tattoo parlor at this time of night?',
        ', but if we didn\'t have ears, we\'d look like weasels.',
        ', but where are we going to find rubber pants our size?',
        ', but balancing a family and a career ... ooh, it\'s all too much for me.',
        ', but isn\'t Regis Philbin already married?',
        ', but burlap chafes me so.',
        ', but how are we going to find chaps our size?',
        ', but we\'ll never get a monkey to use dental floss.',
        ', but this time, you wear the tutu.',
        ', but culottes have a tendency to ride up so.',
        ', but if they called them \'Sad Meals\', kids wouldn\'t buy them!',
        ', but me and Pippi Longstocking -- I mean, what would the children look like?',
        ', but this time you put the trousers on the chimp.',
        ', but I can\'t memorize a whole opera in Yiddish.',
        ', but where do you stick the feather and call it macaroni?',
        ', but there\'s still a bug stuck in here from last time.',
        ', but I get all clammy inside the tent.',
        ', but I don\'t think Kaye Ballard\'s in the union.',
        ', but, the Rockettes? I mean, it\'s mostly girls, isn\'t it?',
        ', but pantyhose are so uncomfortable in the summertime.',
        ', but it\'s a miracle that this one grew back.',
        ', but first you\'d have to take that whole bridge apart, wouldn\'t you?',
        ', but \'apply North Pole\' to what?',
        ', but \'Snowball for Windows\'?',
        ', but... no, it\'s too stupid.',
        ', but, umm, why would Sophia Loren do a musical?',
        ', but what if the chicken won\'t wear the nylons?',
        ', but isn\'t that why they invented tube socks?',
        ', but what if we stick to the seat covers?',
        ', but if you replace the \'P\' with an \'O\', my name would be Oinky, wouldn\'t it?',
        ', but I think I\'d rather eat the Macarena.',
        ', but Kevin Costner with an English accent?',
        ', but don\'t you need a swimming pool to play Marco Polo?',
        ', but do I really need two tongues?',
        ', but we\'re already naked.',
        ', but if Jimmy cracks corn, and no one cares, why does he keep doing it?',
        ', but don\'t camels spit a lot?',
        ', but how will we get a pair of Abe Vigoda\'s pants?',
        ', but why would Peter Bogdanovich?',
        ', but isn\'t a cucumber that small called a gherkin?',
        ', but if we get Sam Spade, we\'ll never have any puppies.',
        ', but how can we get seven dwarves to shave their legs?',
        ', but calling it pu-pu platter? Huh, what were they thinking?',
        ', but how will we get the Spice Girls into the paella?',
        ', but if we give peas a chance, won\'t the lima beans feel left out?',
        ', but if we had a snowmobile, wouldn\'t it melt before summer?',
        ', but what kind of rides do they have in Fabioland?',
        ', but can the Gummi Worms really live in peace with the Marshmallow Chicks?',
        ', but wouldn\'t anything lose its flavor on the bedpost overnight?',
        ', but three round meals a day wouldn\'t be as hard to swallow.',
        ', but if the plural of mouse is mice, wouldn\'t the plural of spouse be spice?',
        ', but three men in a tub? Ooh, that\'s unsanitary!',
        ', but why does the chicken cross the road, huh, if not for love? I do not know.',
        ', but I prefer Space Jelly.',
        ', but if our knees bent the other way, how would we ride a bicycle?',
        ', but how will we get three pink flamingos into one pair of Capri pants?',
        '. Oh, I certainly hope so.',
        ', but Tuesday Weld isn\'t a complete sentence.',
        ', but why would anyone want to see Snow White and the Seven Samurai?',
        ', but then my name would be Thumby.',
        ', but she\'d never leave Mickey.',
        ', but I find scratching just makes it worse.',
        ', but shouldn\'t the bat boy be wearing a cape?',
        ', but why would anyone want a depressed tongue?',
        ', but why would anyone want to Pierce Brosnan?',
        ', but dost thou think Pete Rose by any other name would still smell as sweaty?',
        ', but wouldn\'t his movies be more suitable for children if he was named Jean-Claude van Darn?',
        ', but will they let the Cranberry Duchess stay in the Lincoln Bedroom?',
        ', but why does a forklift have to be so big if all it does is lift forks?',
        ', but if it was only supposed to be a three hour tour, why did the Howells bring all their money?',
        ', but Zero Mostel times anything will still give you Zero Mostel.',
        ', but if we have nothing to fear but fear itself, why does Eleanor Roosevelt wear that spooky mask?',
        ', but what if the hippopotamus won\'t wear the beach thong?',
        ', but instant karma\'s always so lumpy.',
        ', but a show about two talking lab mice? Hoo! It\'ll never get on the air.',
        ', but what if the Telechubbies don\'t fight fair?',
        '. But even if we found a tuxedo to fit a blowfish, who would marry it?',
        '. But, well, um, no, Cranky Mouseykin, not even in the story you made up.',
        ', but where is a fish?',
        '. But my feet taste better buttered.',
        '. But if Pinocchio were carved out of bacon it wouldn\'t be the same story, would it?',
        ', but wasn\'t Dicky Ducky released on his own reconnaissance?',
        '. But suppose we do the hokey pokey and turn ourselves around, is that what it\'s really all about?',
        ', but Pepper Ann makes me sneeze.',
        ', but Lederhosen won\'t stretch that far.',
        ', but I thought Madonna already had a steady bloke!',
        ', but what would goats be doing in red leather turbans?',
        '. But how would we ever determine Sandra Bullock\'s shoe size?',
        '. But how do we get Twiggy to pose with an electric goose?',
        '. But if I put on two tutu\'s, would I really be wearing a four-by-four?',
        '. Maybe it\'s all part of some huge, cosmic plot formula!',
        ', but wouldn\'t mustard make it sting?',
        ', but can you use the word \'asphalt\' in polite society?',
        '. (Sprays his breath)',
        '. But, er... then again, let\'s not let our enthusiasm overwhelm us!',
        ', but if the sun\'ll come out tomorrow, what\'s it doing right now?',
        ', but aren\'t we out of shaving cream?',
        '. Remind me to tape all our phone calls!',
        ', but Madonna\'s stock is sinking.',
        '. But does \'Chunk o\' Cheesy\'s\' deliver packing material?',
        ', but if we\'re Danish, where\'s the cream cheese? Narf!',
        ', but I don\'t think newspaper will fit in my underoos.',
        ', but after eating newspaper all day, do I really need the extra fiber?',
        '. But will anyone other than Eskimos buy blubber-flavored chewing gum?',
        ', but the ointment expired weeks ago!',
        '. But would the villains really have gotten away with it, if it weren\'t for those pesky kids and their dog?',
        ', but how are we gonna teach a goat to dance with flippers on?',
        '! But let\'s use safflower oil this time! It\'s ever so much healthier!',
        '. But Cream of Gorilla Soup well, we\'d have to sell it in awfully big cans, wouldn\'t we?',
        '. But if he left chocolate bullets instead of silver, they\'d get all runny and gooey!',
        ', but do nuts go with pudding?',
        ', but a codpiece made from a real fish would get smelly after a while, wouldn\'t it?',
        '. But I didn\'t know Annette used peanut butter in that way.',
        ', but do those roost in this neighborhood?',
        ', but is the world ready for angora bellbottoms? I mean I can see wearing them inside out, but that would--',
        '. But do we have time to grease the rockets?',
        '. But are these really the legs of a show girl?',
        '. But this time I get to play the dishwasher repairman!',
        '. But what if a sudden wind were to blow up my toga?',
        '. But Trojans won\'t arrive on the scene for another 300 years.',
        '. But where would a yak put PVC tubing?',
        ', but... but if Charlton Heston doesn\'t eat Soylent Green, what will he eat?',
        '. But where would you get a chicken, 20 yards of spandex and smelling salts at this hour?',
        ', but Ben Vereen never answered our proposition.',
        '! But isn\'t it cheating to use glue?',
        '! But if running shoes had little feet, wouldn\'t they need their own shoes?',
        '. But what if the Earl of Essex doesn\'t like burlap pantaloons?',
        ', but should we use dishwashing liquid or cooking oil?',
        ', but would Danish flies work just as well?',
        '! But dressing like twins is so tacky.',
        ', but practicing docking procedures with a goat at zero G\'s - it\'s never been done!',
        '! But shouldn\'t we let the silk worms finish the boxer shorts before we put them on?',
        '. You draw the bath and I\'ll fetch the alka-seltzers and candles!',
        '. But the real trick will be getting Demi Moore out of the creamed corn!',
        ', but if a ham can operate a radio, why can\'t a pig set a VCR?',
        ', you\'d think Lyndon Johnson would have left room for baby-kissing, wouldn\'t you?',
        '! But what\'s the use of having a heart-shaped tattoo if it\'s going to be covered by hair?',
        '! But I can\'t decide which is more exciting... Hand or foot pumps, narf!',
        ', but couldn\'t the constant use of a henna rinse lead to premature baldness?',
        '. Just make sure we don\'t swallow each other\'s bubbles!',
        '! But ruby-studded stockings would be mighty uncomfortable wouldn\'t they?',
        ', but if I have my portrait drawn, will we have time to make it to the lifeboats?',
        '! But is Chippendale\'s ready for \'The Full Pinky?\'',
        '! But do I have what it takes to be the \'Lord of the Dance\'?',
        '! How much deeper would the ocean be if there weren\'t sponges down there?',
        '! But doing a clog dance in actual clogs will give me awful blisters.',
        ', but nose rings are kinda passe by now.',
        ', but where are we going to get a trained octopus at this time of night?',
        '! But no more eels in jelly for me, thanks. I like my gelatin after lunch.',
        ', but I didn\'t know 90210 was a real zip code! Will Tori be there?',
        ', but just how will we get the weasel to hold still?',
        ', but how are we going to get the bacon flavoring into the pencils?',
        ', but I am running for mayor of Donkeytown and Tuesdays are booked.',
        ', but even with orthodontics, I don\'t think I\'m the leading man type.',
        ', but who could eat that much pimento loaf?',
        ', but if I had a dog, I\'d name it Desiree. Here, Desiree!',
        ', but if they were My Big Ponies, where would we keep them all?',
        ', but how do we teach a sardine to speak Russian?',
        ', but doesn\'t that reindeer have an exclusive contract with Santa?',
        ', it\'ll make great pancakes.',
        ', but how can you have a Duck Dynasty if none of the people are ducks?',
        '! We\'ll dress up like biker dudes and infiltrate the \'Hades Ladies.\' Then we\'ll convince them to hold a meeting inside the corn palace. Narf! The resulting carbon-monoxide buildup will allow you to complete your energy-making device and shortly after, you will rule the world!',
        ', but, oh, I\'d have to say the odds of that are terribly slim, honestly.  I mean, really, when have I ever been pondering what you\'ve been pondering?  Never. right? So, what are the chances that this time, I\'m pondering what you\'re pondering?  Next to nil. Right. Well, that\'s exactly what I\'m thinking, too.  Poit, I guess I _am_ pondering what you\'re pondering!'
    ]

    robot.hear /are you pondering what i/i, (res) ->  
        res.send 'I think so, Brain' + res.random PinkyResponse
