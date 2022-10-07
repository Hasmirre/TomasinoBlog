-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 07, 2022 at 05:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tomasinoblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `COM_ID` int(11) NOT NULL,
  `COM_AUTHOR` varchar(70) CHARACTER SET utf8 NOT NULL,
  `COM_DATE` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `COM_CONTENT` longtext CHARACTER SET utf8 NOT NULL,
  `POST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`COM_ID`, `COM_AUTHOR`, `COM_DATE`, `COM_CONTENT`, `POST_ID`) VALUES
(22, 'Marites', '2022-10-07 21:02:06', 'They are acting not normal… they are showing signs of ambivalence.', 4),
(23, 'Marites', '2022-10-07 21:02:19', 'this is also what I observed', 4),
(24, 'Marites', '2022-10-07 21:02:32', 'Are you also a nurse?', 4),
(25, 'Marites', '2022-10-07 21:02:48', 'Yes… I’m a nurse… I’m teaching before psychiatric', 4),
(27, 'Princess Rhaenyra Targaryen', '2022-10-07 22:19:06', 'Everyone says Targaryens are closer to gods than to men, but they say that because of our dragons. Without them, we are just like everyone else.', 6),
(28, 'King Viserys Targaryen', '2022-10-07 22:19:43', 'Even I do not exist without tradition and duty, Rhaenyra.', 6),
(29, 'Ser Joffrey Lonmouth', '2022-10-07 22:20:00', 'She has a paramour of her own.', 6),
(30, 'Ser Criston Cole', '2022-10-07 22:20:14', 'If there were another path, one that led to freedom, would you tread it?', 6),
(31, 'Alicent Hightower', '2022-10-07 22:20:26', 'You are the challenge, Aegon. Simply by living and breathing', 6),
(32, 'Morpheus', '2022-10-07 22:22:30', 'When a human is at the center of the Dreaming, is it not to remind us that we exist because humans dream, not the other way around? The miracle of humanity itself should always be more vivid to us than any marvels of power.', 8),
(33, 'Death', '2022-10-07 22:23:27', 'When the first living thing existed I was there. When the last living thing dies, I will put the chairs on the table, turn out the lights, and lock the universe behind me when I am done.', 8),
(35, 'Fiddler\'s Green', '2022-10-07 22:48:14', 'What fascinates me about humanity is that so many people are looking for reasons to be unhappy. It\'s only when they\'re mired in their self-made misery that they\'re truly content.', 8),
(36, 'Hood', '2022-10-07 22:52:55', 'I am a senator, you must respect me', 7),
(37, 'Bato', '2022-10-07 22:55:19', 'I think that I will have to disagree with that number', 7),
(38, 'Roberto', '2022-10-07 22:55:55', 'hm?', 5),
(39, 'Dolphin', '2022-10-07 22:57:20', 'While there\'s a typhoon in Manila, the sun is so hot in Daan Bantayan, Cebu! At Kandaya Resort', 5),
(40, 'Nug', '2022-10-07 23:02:05', 'Wow! Thank you very much! You know I love Chicken Alfredo Pasta!', 5),
(41, 'Gets', '2022-10-07 23:01:47', 'I am so hungry!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `POST_ID` int(11) NOT NULL,
  `POST_TITLE` varchar(255) CHARACTER SET utf8 NOT NULL,
  `POST_AUTHOR` varchar(70) CHARACTER SET utf8 NOT NULL,
  `POST_DATE` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `POST_CONTENT` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`POST_ID`, `POST_TITLE`, `POST_AUTHOR`, `POST_DATE`, `POST_CONTENT`) VALUES
(4, 'Smoking increases the risk of illness and viral infection, including type of coronavirus', 'Davis Health', '2022-10-07 00:44:32', 'A new study led by UC Davis Comprehensive Cancer Center researchers shows that current smokers have a 12% increased risk of a laboratory-confirmed viral infection and a 48% increased risk of being diagnosed with respiratory illnesses. These results did not vary by type of virus, including a coronavirus.\r\n\r\nIn combination with past findings, the current findings published today in the Nicotine and Tobacco Research journal support urgent recommendations to increase tobacco control efforts for countering COVID-19.\r\n\r\n\"Past research has shown that smoking increases the risk of COVID-19 disease severity, but the risk of infection had been less clear,\" said UC Davis tobacco researcher and lead author of the study Melanie Dove. \"Our study findings show smokers have an increased risk of viral infection, including a coronavirus and respiratory illness.\"\r\n\r\nStudy results\r\nThe researchersre-analyzed data from the British Cold Study (BCS), a 1986-1989 challenge study that exposed 399 healthy adults to 1 of 5 \"common cold\" viruses. This included a type of common coronavirus (coronavirus 229E) that existed prior to the novel coronavirus (SARS-CoV-2 virus), which causes COVID-19 disease. Data from the British Cold Study is available on the Carnegie Mellon University The Common Cold Project website\r\n\r\nThe UC Davis researchers calculated overall and coronavirus-specific unadjusted and adjusted relative risks for current smokers and each outcome (infection and illness), testing whether each association was modified by type of respiratory virus.\r\n\r\nThe data showed that current smokers had an increased risk of respiratory viral infection and illness, with no significant difference across the types of viruses. The increased associations for only the coronavirus 229E did not reach statistical significance. This was likely due to the small sample size with only 55 participants, of whom 20 were smokers.\r\n\r\nThese findings are consistent with known harms caused by smoking to immune and respiratory defenses and some observational evidence of increased COVID-19 infection and disease progression in current smokers.\r\n\r\n\"Besides examining associations by type of virus, a key reason we re-analyzed the original British Cold Study is to report a risk ratio instead of an odds ratio,\" Dove explained. \"Odds ratios may overestimate the strength of an association if an event is not rare (>10%), so our results are a little lower (1.48 compared with 2.1 in the BCS). The relative risks from this study can provide an estimate of the strength of associations that can be used to guide tobacco control decisions.\"\r\n\r\nCompared to other study designs, the BCS is considered a high-quality study because of its randomized trial design, little missing data, clear smoking status definitions, and laboratory-confirmed data. Observational studies have limitations. These include current smokers being more likely to get tested due to increased symptoms and smoking status being under-reported in electronic health records. Additionally., infected individuals who stop smoking immediately prior to testing or hospitalization are often recorded as a non-smoker or former smoker.\r\n\r\nOne of the main limitations of this study is that the mild common coronavirus 229E may have different biological and health effects than other coronaviruses, including SARS-CoV-2. In other words, the findings may not be generalizable to other coronaviruses.\r\n\r\n\"These findings may have implications for addressing tobacco use at the population level as a strategy for preventing COVID-19 infection,\" said Elisa Tong, senior author and UC Davis Department of Internal Medicine professor. \"A quarter of the U.S. population currently smokes or has high levels of cotinine, a nicotine metabolite, and there is no safe level of smoke exposure for nonsmokers. Global tobacco control is urgently important too, as many countries have even higher smoking prevalence rates.\"\r\n\r\nOther UC Davis researchers who participated in the study included Bruce Leistikow and Nossin Khan from the Department of Public Health Sciences.\r\n\r\nDove was supported by the National Center for Advancing Translational Sciences, National Institutes of Health, through grant number UL1 TR001860 and linked award KL2 TR001859.'),
(5, 'Cooking Recipe: Making the Perfect Chicken Alfredo Pasta', 'Leni Abraham', '2022-10-07 20:38:17', 'Oh, chicken alfredo: It\'s the classic pseudo-Italian pasta we just can\'t seem to get enough of. Of course there are tons of jarred pasta sauces you can buy, but making alfredo sauce from scratch is actually so easy. \n\nThis is a great base recipe for all your one-pot pasta needs. Consider the following revisions when you feel like mixing it up, plus tips to help avoid common mistakes.\n\n1. If you\'re looking for a thicker, richer sauce, substitute heavy cream or half and half for the milk—never a bad move.\n\n2. Big fan of dark meat? Swap in thighs for breasts! Just make sure you give them ample cooking time. Thighs take much longer in the pan, and actually cook best with a quick trip to the oven. Our garlic butter baked chicken thighs utilize this technique, and they\'re BOMB. If you want to change the protein all together, check out our recipe for shrimp fettuccine alfredo.\n\n3.Get experimental with the noodles: fettuccini is a classic, but angel hair or spaghetti would work just fine! Just make sure whatever pasta you choose can be completely submerged in your cooking liquid.\n\n4. Feel like you need some veg? After the pasta is cooked, stir in a couple of big handfuls of spinach and some halved grape tomatoes.\n\n5. If you\'re missing crunch, toast up some panko bread crumbs in a skillet with butter and garnish with a handful. This trick works for any pasta, the added texture really takes it over the top.\n\n6. Need some heat? Sprinkle in some red pepper flakes or Cajun seasoning.\n\n7. Avoid grainy sauce! Using freshly grated (not shredded) parm will help turn your sauce into a luscious, creamy dream. Pre-shredded cheeses are usually dusted with anti-coagulants that will prevent the cheese from getting smooth and melty.\n\nAnd of course, no pasta dish is complete without a crunchy green salad on the side, tossed in red wine vinaigrette. If you have any leftovers, store them in the refrigerator in an airtight container for up to 5 days or freeze for up to 3 months.\n\nINGREDIENTS\n2 tbsp. extra-virgin olive oil\n2 boneless skinless chicken breasts\nKosher salt\nFreshly ground black pepper\n1 1/2 c. whole milk\n1 1/2 c. low-sodium chicken broth\n2 cloves garlic, minced\n8 oz. fetuccini\n1/2 c. heavy cream\n1 c. freshly grated Parmesan\nFreshly chopped parsley, for garnish\n\nDIRECTIONS\n1. In a large skillet over medium-high heat, heat oil. Add chicken and season with salt and pepper. Cook until golden and cooked through, 8 minutes per side. Let rest 10 minutes, then slice. \n\n2. Add milk, broth, and garlic to skillet. Season with salt and pepper and bring to a simmer. Add fettuccine, stirring frequently for about 3 minutes. Let cook until al dente, 8 minutes more. \n\n3. Stir in heavy cream and Parmesan until combined. Simmer until sauce thickens. \n\n4. Remove from heat and stir in sliced chicken. Garnish with parsley.'),
(6, 'House of the Dragon Series-Premiere Recap: A Song of Ice and Fire', 'Hillary Kelly', '2022-10-07 20:35:32', 'Welcome back to the little dragon show.\n\nFirst, a warning. Game of Thrones is famously unfinished: Theories and speculation flourished across ye internet throughout the show’s run because beyond seasons four and five, its future was (is) as murky as the swamps of the Neck. Just last week George R.R. Martin told the New York Times that his ending for books six and seven — The Winds of Winter and A Dream of Spring, respectively — will substantially differ from Dave Benioff and D.B. Weiss’s tragic(ally bad) finale. House of the Dragon has no such protections in place. This is Westerosi history, as told in the last third of Martin’s Fire & Blood, one of those tales of knights and maidens fair that Shireen Baratheon huddled over in her sad little princess cell, an entirely finished story. Google searches on characters or plot points will return spoilers. Research at your own risk.\n\nThis series premiere wants to provide glimpses of the Westeros universe we remember and spin the perspective just enough to make House of the Dragon distinct. The angles on King’s Landing are all different — until we soar over the balconied cloister where Cersei painted her map of the Westeros she thought she would rule. When Princess Rhaenyra lands her golden-scaled dragon Syrax and slides off his back, for a brief moment she’s an uncanny doppelgänger of Daenerys — until she spins around. The spot of dusty ground she lands on is a site from season eight put to a new (old) use — this is the dragon pit where the remaining lords met to hash out their plan for Bran the Broken to take the throne. Over 172 years earlier, when House of the Dragon is set, it’s being used for its original purpose. House of the Dragon is unabashedly for Game of Thrones fans.\n\nThis first episode is well-acted, violent, revolting, CGI’d to the hilt, and more than a little horny — a typical Game of Thrones stew. There’s a pile of sliced-off testicles, a severed head, and one moment where a couple in the act of copulation have to freeze, underneath a spotlight, and hold the position while a main character gives a speech about a dead baby. It’s not TV, it’s HBO!\n\nThe two biggest distinctions for this series are its hyper-focus on one family, titular dragon-folk the Targaryens; and its setting in a Westerosi golden age, a time with its own Colosseum-like stadium for tourneys and Renaissance-esque fashions. So far the series feels expansive enough not to get bogged down in a Succession-like teeter-totter, where the balance of power swings back and forth to the point of nausea. The news Lord Corlys drops about anarchy brewing down on The Stepstones (islands off Sunspear), and the introduction of strangers like Ser Criston Cole, a joust-master of Dornish descent, promise a universe broad enough to braid in disparate but connected storylines. And starting at a dynasty’s peak means that it can only turn to ashes in their mouths — just what devoted fans love to see. Still, House of the Dragon will never have GoT’s scope, and it’s best to recognize that early on. This is the Reader’s Digest condensed version.\n\nWith that said, this is a Targaryen enterprise, and when a preponderance of main characters have waist-length white-blonde Legolas hair, first meetings can feel confusing. Let’s break things down with a family tree.\n\nThe scraggly-haired king seated in the burnt-out shell of Harrenhal when the episode opens is Jaehaerys I, the fourth king of House Targaryen’s Westerosi dynasty. (Martin explains in Fire & Blood that Harrenhal hosted, despite its 1-star appearance, because it was the only castle large enough for such a gathering.) To his left, his granddaughter Rhaenys (eldest daughter of his eldest son) and her husband Lord Corlys Valeryon, with his glorious white dreads. To his right stands his grandson Viserys (eldest son of his second son) and pregnant Aemma. The line of succession is unclear, and in a piece of rather awkward monarchical theater, they all await word from a council of lords on who will take over after Jaehaerys’ death. Both his sons died before they could inherit the throne, and as the eldest child of the eldest heir, Rhaenys has a claim, but her sex renders her a less-than-ideal candidate for the lords of Westeros. Viserys isn’t next in line — he’s more of an Archie Mountbatten Windsor than a Prince George — but his testicles win out for him in the end. Another man will take the Iron Throne.\n\nNine years into Viserys’s reign, and 172 years before the birth of Daenerys (a fact that the showrunners proclaim in big bold letters), another silver-haired dragon-rider swoops into frame. We meet Princess Rhaenyra (a very capable Milly Alcock) gliding through the clouds on Syrax; she’s the kind of girl who reeks of dragon, might tell her Septa to fuck off, but also gigglingly attends tourneys and dutifully stands as her father’s cupbearer. She is also Viserys’ only living child, a teenage girl who adores her father but rightfully begrudges that he’s spent his life waiting for a son.\n\nInstead Viserys has a brother, Daemon (Matt Smith, who snarls well), a black sheep who practically collapses into laughter when he overhears the notion that he might not want the crown. Daemon was Master of Laws, but didn’t believe they applied to him, and Master of Coin, but was happier spending than counting, so he’s been made Commander of the City Watch, where he turns “dogs” into men, provides them with the gold cloaks that will inspire their moniker, and lets them loose on King’s Landing to carve up the rapists and murderers, and really anybody else who happened to be on the street that evening. Like Rhaenys (Eve Best, who needs more to do, please!) and Viserys before them, Rhaenyra and Daemon are two imperfectly qualified candidates for the Iron Throne (which is pricklier than we’re used to — it takes a few notches out of Viserys). But much depends upon a babe in the womb.\n\nThis first episode is divided into women’s realms and men’s realms, and the two rarely overlap. There are at least three Small Council meetings, where Viserys (Paddy Considine, the glue holding this all together) hashes out matters of state with his sometimes-bumbling advisors. Otto Hightower (Rhys Ifans, with an impeccable moneyed Charles Dance accent) is Hand of the King, loyal and true, wise and cautious, absolutely enraged at the mere sight of Daemon’s face. Lord Lyman Beesbury (Bill Paterson, whom you will best remember as the stuttering dad from Fleabag) is Master of Coin, and a man who hedges his bets. Lord Corlys Velaryon (Steve Toussaint, with just the right amount of swagger) is Master of Ships, a fitting role for a man known as the Sea Snake. Grand Maester Mellos (David Horovitch) and Lord Lyonel Strong, the Master of Laws (Gavin Spokes), round out the group, which spends its time debating when to hold the tourney in honor of the unborn maybe-son currently in Aemma’s belly agonizing over Daemon.\n\nDaemon is a hulking pile of overbred masculinity, except for one small thing — he can’t seem to keep it up in the bedroom. His favorite haunts are the streets, where he lops off heads with none of the judicious consideration of Ned Stark or Jon Snow, and the brothel, where his favorite girl, Mysaria (Sonoya Mizuno, who is too brilliant to be relegating to just stroking … ego), insists his cock’s failure doesn’t change the fact that he is the irreplaceable Dragon Prince. Is it self-hatred or psychopathy that inspires him to mock his dead baby nephew late in the episode? That is, we expect, one of the major questions House of the Dragon will explore.\n\nMeanwhile, the women of the Targaryen clan (and their allies) are ensconced in traditional roles. The show’s creators have insisted that House of the Dragon will largely avoid using sexual violence as a convenient plot point, the way GoT did. But that doesn’t mean that their female characters will escape the fates of so many women of earlier ages (and let’s be honest, so many women of our own age). The series’s first lengthy conversation between two women is a harbinger of uterine doom. “This discomfort is how we serve the realm,” Queen Aemma explains to Rhaenyra from a divan, where she writhes and sweats in the fullest bloom of pregnancy. The two have “royal wombs,” she explains, and “the childbed is our battlefield.” Not the most reassuring motherly advice, but perhaps the most honest. Some cranky viewers will complain that it’s reductive to cast female characters in these molds, but the reality is that before the advent of modern medicine women’s lives and fears and hopes often did revolve around childbirth. They died in those beds, surrounded by their own blood, while other women coached them and cleaned their limbs and shook their heads at another sister lost. Aemma, unlike her counterparts, has a partner who hears her when she claims that this will be her last child, that the five dead babes before this one have destroyed too much of her. Unfortunately, she’s right.\n\nThe intertwining sequence of the tourney and Aemma’s brutal childbirth is this episode at its most vicious and its best. While the men choose blood and gore for sport, a woman is held down and sliced into without any say. (Sian Brooke, who isn’t even listed in the show’s IMDB cast list, is phenomenal in her exhausted terror.) Most onlookers, including Rhaenyra and her dear friend Alicent Hightower (Emily Carey), who gleefully toss their garlands to jaunty jousters, accept both forms of bodily mauling as necessary and inevitable. The death rankles — Princess Rhaenys drily notes that it is rather ill-fitting to welcome a child to the world with face-smashing — but not enough to stop anyone, Viserys included, from carrying on.\n\nThis first episode covers a little more ground than I would have liked. Had it ended with Baelon’s tiny choking sound, there might have been a better narrative pause. As it is, Viserys resolves his succession (for the moment), sending Daemon back to his wife (apparently so ugly that the sheep near Runestone are more fuckable?) in a fiery, sword-twirling speech, and ceremonially anointing Rhaenyra his heir apparent in a solemn Great Hall ceremony.\n\nRhaenyra and Daemon’s moments together are some of the most charged and exciting — their conversations in Valyrian edge them closer to dragon than human, and that little trill of desire when Daemon clasps a necklace around Rhaenyra’s throat has some big incest energy. They are certainly lining up as rivals, so let’s hope that the show’s writers keep them in close contact, and don’t develop the itch for journeys across the Narrow Sea that so hobbled later seasons of GoT.\n\nThe action of those later seasons is where, oddly, this first episode of House of the Dragon ends up. Down in the tombs, under the watchful eye of a massive dragon who escaped the Doom of Valyria, Viserys lets Rhaenyra in on a secret that is only passed from king to heir. When he came to Westeros, Aegon had a dream: He foresaw the end of the world of men. “It is to begin with a terrible winter, gusting out of the distant North. Aegon saw absolute darkness riding on those winds, and whatever dwells within will destroy the house of the living. When this great winter comes, all of Westeros must stand against it.” A Targaryen must be seated on the throne to unite the realm, he continues. “Aegon called his dream ‘The Song of Ice and Fire.’ This secret has been passed from king to heir since Aegon’s time, and now you must promise to carry it and protect it.”\n\nHere is the thread that loops us back to Daenerys, to Jon, to the world of Westeros we’ve already known. But how much does the future mean for the past?'),
(7, 'No, YouTube, I will not subscribe to Premium', 'Adamya Sharma', '2022-10-07 20:44:14', 'I am a working mom with an 11-month-old baby. What sort of picture does that paint for you? That of an individual who has little to no time to spare? Well, you’re right. I am neck-deep in it right now, and I’m sure there are many other folks, parents or not, who can empathize with an absolute dearth of leisurely time. You know what I’m talking about — those precious few minutes in the day to just lay back and watch a YouTube video or two. Thanks to Google’s aggressive YouTube Premium push, those moments no longer exist for me, and I am not alone.\n\nFor me, YouTube has always been more of a resource than a habit.\n\nWhere I live, YouTube Premium launched back in 2019. While the prospect of paying to watch YouTube videos without ads was an enticing one for many around me, the subscription service failed to win me over. It wasn’t for the lack of good quality content to watch on YouTube; it’s just that I was never an avid tuber in the first place.\n\nFor me, the platform has always been more of a resource than a habit. I only go to it for specific content and nothing more. Unlike die-hard YouTube consumers, I don’t subscribe to multiple channels and follow each and every video they put up. So paying to remove ads, watch YouTube in the background, or use the multiple other features a YouTube Premium subscription offers didn’t really make much sense to me. Little did I know YouTube wasn’t going to leave me be.\n\nFast forward to 2022, and I cannot open YouTube without having an annoying pop-up urging me to subscribe to Premium. Before I even start my five minutes of streaming, I am constantly badgered to enroll in the free one-month Premium trial. I hit skip and start watching a video. God forbid I switch apps midway, and there it is again, another pop-up asking me to go Premium if I wish to continue watching the video in the background.\n\nNo, YouTube, I’ll never sign-up for Premium. I wish that were an option I could tap on the pop-up. Because even after dismissing the thing hundreds of times, YouTube clearly hasn’t gotten the message.\n\nI\'d rather take my video-watching business elsewhere.\n\nThe persistent, naggy YouTube Premium pop-up is unlikely to be a bug or an algorithm snag. Google surely wants to push its paid products over its free ones. Over the past year or so, the company has increased prices for most of its services, including Google Cloud, YouTube TV, Workspace, and more. I get that it’s Google’s prerogative to do so. After all, it’s a business, and price hikes can be influenced by several factors, including rising inflation and the need to remain competitive. But there’s no excuse for YouTube’s repeated hounding to go Premium. Not only is it self-destructive, given many like me promptly shut the app after seeing a pop-up for the millionth time, but it’s also anti-consumer.\n\nIf being a free YouTube user means I have to put up with this aggressive pop-up, I’d rather take my video-watching business elsewhere. That said, the pop-up isn’t my only issue with YouTube right now. It’s also the burgeoning number of ads free users are forced to watch.\n\n‘Ad’ding to the trouble\nI’m sure I’m not the only one who noticed that YouTube has progressively shown more and more ads to free users. I’ve seen up to five or six unskippable ads on videos that are just a few minutes long. Other users report they’ve had to endure as many as 11 ads before a video! That’s quite a price to pay for a free service.\n\nAt this point, YouTube might as well be cable television. While the company clarified that these clubbed ads were part of some “small” global experiment (from hell) and that it has now concluded this whiplash, It’s unclear how much better the experience will be going forward.\n\nMultiple unskippable ads in a row are not the only problem. Many folks have taken to Reddit to post about YouTube’s belligerent ad approach. Ad breaks have become longer and more frequent, and we are forced to watch the same ads over and over again during the same video.\n\nThis isn\'t cable TV. We shouldn\'t have five, six, or eleven unskippable ads before one short video.\n\nYes, creators usually have to allow ad breaks in their videos, but in 2020, YouTube changed its terms of service to introduce something known as the “Right to Monetize.” This enabled the company to display ads on all YouTube videos, not just those from members of the YouTube Partner Program (YPP).\n\nSo essentially, free YouTube users ended up seeing more ads everywhere, even on videos that aren’t monetized. At the same time, non-YPP creators realized they have no control over the ads that are displayed on their content. Two years later, this policy shift may as well be the reason we’re seeing so many more ads on YouTube than ever before.\n\nThe TikTok threat\nIf the last few years are proof, Google’s monopoly in the video streaming market is fast fading. Last year, TikTok reportedly overtook YouTube in average watch times in the US and UK. Google still has the larger platform, with almost double the users of the Chinese streamer. However, people are apparently spending more time watching TikTok videos than content on YouTube. That’s saying something for a platform that sprang up just six years ago as opposed to YouTube’s 17-year-long run.\n\nYouTube\'s aggressive strategy is hurling people towards its competition.\n\nWhile there’s still time for a formal change of guard as far as the YouTube vs TikTok competition is concerned, the strategy YouTube is using to push free users towards Premium subscriptions may just drive more people to its competition. I know I have drastically reduced the time I spend watching YouTube videos.\n\nWhat’s your take? Have more ads and incessant subscription pop-ups pushed you to pay for YouTube premium? Have they in any way affected your use of the service? Let us know your thoughts in the comments section below.'),
(8, 'The Sandman review – Neil Gaiman has created 2022’s single greatest hour of TV drama', 'Rebecca Nicholson', '2022-10-07 20:47:17', 'This dark, engrossing comic book adaptation is utterly lavish, and features an emotional depth that’s almost unheard of in fantasy epics. It should delight fans and newcomers alike\n\nIt has taken 30 years for an adaptation of The Sandman (Netflix), Neil Gaiman’s celebrated comic-book series, to make it to the screen, and little wonder. It is a big, bold story of gods and demons, so deep and rich that the idea of cramming its wonders into 10 episodes seems borderline ludicrous. Yet this is the era of megabudget fantasy television, with the imminent arrival of a small-screen Lord of the Rings and the return of the Game of Thrones universe in House of the Dragon. With its debut season, The Sandman can stand proudly among them, albeit as their moody goth older brother.\n\nThe first couple of episodes exist firmly in the realm of fantasy. The notes I took when watching include “Patton Oswalt is crow?”. It’s that kind of show, and it immerses you in its world immediately, setting the Sandman off on his journey of discovery. It begins in 1916, when Lord Morpheus, or Dream, or the Sandman, or Lord Morpheus, Dream of the Endless, to give him his pedigree name (a sinewy Robert Smith type, played with breathy sulkiness by Tom Sturridge), is mistakenly captured by Charles Dance’s sinister – and Dance is very good at sinister – magus.\n\nThe magus wants to harness Death’s power to indulge in a spot of necromancy and revive his favourite son, who was killed in wartime. Instead, he ends up with Dream, and traps him naked in a glass sphere in his basement. For a while, the period setting feels a bit dark Downton Abbey, but it soon becomes clear that this is far too expansive to stick to one era or genre. Throughout the series, time flies, and slows, and we leap through different periods and cities and realms. It all feels like rather a lot, but it works well.\n\nPartly, that is because the pace is meditative, not frantic. Once the scene-setting and world-building has been done, it has the confidence to take its time over the big stuff. I am sure plenty of viewers will love its more fantastical elements, from a battle of imaginations with Lucifer (Gwendoline Christie) to a cute mythical creature called Gregory, but I found its finest moments in the more human, conversational, emotional strands. Jenna Coleman is strong as the messy, tough Johanna Constantine, a contraction of John and Johanna into one character (or two), whose nightmares are matched only by her exorcist duties.\n\nThe big cast is largely excellent, with an impressive ability to deliver lines that could have sounded overly literary or convoluted, or both, in ways that sound neither woolly nor unnatural. Vivienne Acheampong as Dream’s right-hand man Lucienne, Boyd Holbrook as the gruesome walking nightmare Corinthian, and Kirby Howell-Baptiste as an empathic, big-hearted Death, are all fantastic. I spent some time mildly irritated at the idea that Joely Richardson, 57, could be cast as the mother of David Thewlis, 59, until I was reminded that in this world where teeth can replace eyeballs and getting sand in your eyes is far more troublesome than your typical trip to the beach, something as trivial as age is bound to be explained eventually. It is, and my outrage retreated.\n\n‘I can’t do superheroes, but I can do gods’: Neil Gaiman on comics, diversity and casting Death - Neil Gaiman\n\nThewlis is brilliant as John Dee, naive and cruel and earnest and cynical, and he gets to lead the best episode of the lot. After an eerie car journey that plays out like a film of its own, Dee spends a day and night in a diner, experimenting on its staff and patrons by nudging them towards a policy of being honest. Each person’s feelings are teased to the surface, and it is horrible and mesmerising and thrilling, with an uncanny, Twin Peaks-ish feel. This is surely a contender for best episode of the year, of any TV drama, and the point at which The Sandman really finds its feet.\n\nYet it is engrossing from the start. It is transportive, playful at times, and certainly grand. But above all, it is dark. Bodies explode, limbs are severed, and demons crawl out of the mouths of professional footballers, fist-first. Nestled in among its more grotesque spectacles, though, is an emotional depth that elevates this far beyond the usual “let’s see what we can blow the CGI budget on” fantasy fodder. Given the source material, that’s no wonder. For fans, it may well turn out to have been worth the long wait, but for newcomers to the Sandman’s world, there is plenty to discover.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`COM_ID`),
  ADD KEY `Comment` (`POST_ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`POST_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `COM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `POST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment` FOREIGN KEY (`POST_ID`) REFERENCES `post` (`POST_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
