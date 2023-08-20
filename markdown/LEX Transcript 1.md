title: LEX Transcript 1

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)\*\*Transcript of (\d+_\d+)(.*?)(?=\*\*Q:)/
```

## Replace

```ruby
"#TEXT$1_interview\n\n\"
```

---

## Test string:

```text
**Transcript of 200917_2302_intTrans.mp3**

**Transcript started at \[00:00:00\]**

**Q:** \[00:00:01\] Alright, so we\'ll just start out. Who are some of the people in your life - family or friends - that you are able to turn to for support?

**A:** \[00:00:08\] My mother, my friend - say names? Okay, I have my mother, my friends, my cousins.

**Q:** \[00:00:22\] So, you feel supported?

**A:** \[00:00:24\] Yes, extremely.

**Q:** \[00:00:25\] Are there any relationships that you need distance from?

**A:** \[00:00:29\] None at this time.

**Q:** \[00:00:30\] What\'s one of your favorite childhood memories, or from any time in your life?

**A:** \[00:00:38\] Favorite childhood memory is when I was - my first screenplay, \[.uuu \[00:00:48\] \[Blocking Theater \[00:00:49\].ppp.

**Q:** \[00:00:51\] Why is that a favorite memory for you?

**A:** \[00:00:52\] It\'s a favorite memory now\... It was memorable at the time. I didn\'t know why. But now, I understand why it\'s embedded in my memory. It\'s just a symbolization that anything I ever said I wanted to do, my family made it happen. So, I told them one day, \"I want to be an actress,\" and they enrolled me into the play.

**Q:** \[00:01:16\] And are you from \[Omaha, Nebraska \[00:01:18\].ppp?

**A:** \[00:01:18\] I am.

**Q:** \[00:01:19\] Born and raised?

**A:** \[00:01:23\] Yes.

**Q:** \[00:01:24\] Okay. What part of \[Omaha \[00:01:31\].ppp are you in now?

**A:** \[00:01:31\] \[North Omaha \[00:01:34\].ppp.

**Q:** \[00:01:33\] Have you always lived in \[North Omaha \[00:01:34\].ppp?

**A:** \[00:01:34\] For a brief period of time, I was in \[Northwest and West \[00:01:38\].ppp, but majority of my life, \[North \[00:01:41\].ppp.

**Q:** \[00:01:43\] Was your experience living in \[West Omaha \[00:01:44\].ppp different from living in \[North Omaha \[00:01:45\].ppp?

**A:** \[00:01:47\] Absolutely.

**Q:** \[00:01:47\] In what ways?

**A:** \[00:01:49\] Resources were available. I felt like, when I lived in \[West Omaha \[00:01:56\].ppp, I didn\'t have to go to \[North Omaha \[00:01:57\].ppp for anything. Everything was available to me. It was cleaner. I even feel like, almost, the air was cleaner. But in \[North Omaha \[00:02:10\].ppp, you got to drive several miles, or several blocks to get a local \[McDonalds \[00:02:16\].ppp or something. It\'s just different.

**Q:** \[00:02:19\] What would be your earliest memory of a police officer? So, like, the first time that you really remember either seeing the police, or interacting with the police, or seeing someone else interact with the police?

**A:** \[00:02:38\] My first memory is when I was having an interaction - like, a real interaction, like a \[.uuu talk to \[00:02:45\], I was 13, and we were shoplifting from \[Shopco \[00:02:50\].ppp.

**Q:** \[00:02:51\] And what happened? Can you kind of walk me through that memory?

**A:** \[00:02:53\] Mm-hmm. It was right after my 13th birthday, and my cousin \[Candace \[00:02:59\].ppp and I were - we had, like, a fingernail obsession, and we were - she stole\... So, I had a pocketful of money. It was right after my birthday, so I had money in my pocket. That\'s why my mom was so disappointed. But I had a pocketful of money, and we stole some shorts\... I stuffed some fingernails in my short pocket. When we were leaving out the door - and it\'s primarily because I seen her do it, so it was a little bit of peer pressure. When we were leaving out the door, the officer grabbed her - or, I guess, probably was a security cop, as I know now. It\'s lost \[.uuu \[00:03:37\] but it was the first that I seen of a cop. And he grabbed her and grabbed me, put us in the back, and asked us our information, called my mom, etcetera, etcetera. So, that was the first interaction.

**Q:** \[00:03:48\] Did they put you in handcuffs?

**A:** \[00:03:49\] They did not put us in handcuffs, no.

**Q:** \[00:03:51\] What emotions were you feeling with that interaction?

**A:** \[00:03:54\] I was scared and terrified.

**Q:** \[00:03:58\] And how did your mom react when you called - when they called her?

**A:** \[00:04:01\] She was angry, disappointed.

**Q:** \[00:04:04\] How did it make you feel, knowing that her feelings came as a result of your actions?

**A:** \[00:04:11\] It made me sad.

**Q:** \[00:04:13\] Have you ever been in handcuffs?

**A:** \[00:04:16\] Yes, I have.

**Q:** \[00:04:18\] When\'s the earliest memory of you being in handcuffs?

**A:** \[00:04:22\] First time I was arrested?

**Q:** \[00:04:25\] Mm-hmm.

**A:** \[00:04:26\] First time I was arrested, I was\... About ten years ago. Wow. Okay. So, I got arrested, because, like, ten years ago, it was my friend and I. We had went - well, first of all, my car, I had a very expensive car at the time. Ten years ago, I was 23, 24. I had an expensive car, and I couldn\'t afford the plates in a timely manner in \[Omaha \[00:04:53\].ppp. So, I was riding around with fictitious plates from my previous car. I had got pulled over with no proof of insurance. Got in front of the judge\... So, no plates, and no proof of insurance, or something, I think, to that extent. Got in front of a judge, and the judge suspended my license for, like\... I can\'t remember how long, but a brief period of time, I had a suspended driver\'s license. So, we were traveling out of town to the NBA all-star game in February, in \[Dallas, Texas \[00:05:24\].ppp. On the way back - this is before \[Google Maps \[00:05:30\].ppp. This was before maps on your phone. You had to print out the instructions, and it was where you would need - it was before \[.uuu \[00:05:35\]. So, I was following someone. I was following someone who was familiar with the route. And I followed him back. He was speeding more like 100 miles per hour. So, I was probably going, like, 95. I was scared. I never drove that fast. And I never drove out of town like that. So, it was all new for me. Got pulled over, and because I was speeding with a suspended license, I went to jail in \[Kansas \[00:06:04\].ppp.

**Q:** \[00:06:05\] Then, what were the feelings that you felt, being placed in handcuffs? If you think back on that moment?

**A:** \[00:06:12\] I was scared. I was surprised. I was honestly expecting a ticket, or something. I didn\'t - I know now, at the time, \[.uuu \[00:06:24\] that was illegal. I \[.uuu didn\'t\] break the law by not paying, essentially, the fees that I needed to pay. So, I didn\'t think that that was something, necessarily, going to jail. I was flabbergasted, especially from the outcome.

**Q:** \[00:06:41\] And how long were you in jail?

**A:** \[00:06:45\] So, I don\'t know where these questions are leading, so I don\'t want to jump forward with the story.

**Q:** \[00:06:52\] No, you\'re fine. Feel free to -

**A:** \[00:06:54\] Okay. Thank you. So, the first time\... I was in jail twice for this situation. So, the first time, he handcuffed me, put me in jail, it was a super duper small town in \[Kansas \[00:07:11\].ppp. I can\'t remember the names - or, \[.uuu \[00:07:13\] that I forgot it. It was five and a half hours away. He handcuffed me, he put me in jail. The jail was like a teepee. It was so small, you could see everybody in the same room, and it was just like me, and maybe a local. And I\'m like, \"Alright. What will it cost to get out? Whatever it costs, I got it.\" There was no bond that I could - you have to get a - and when you\'re out of town, you have to have a bails bondsman. The state of \[Nebraska\'s \[00:07:44\].ppp one of the only states where you don\'t have to have one. So, we had to find a bails bondsman who wanted to work for somebody who was out of town, and pay him. I think my friends paid him like, \$600 to get me out of jail for speeding. This is so\... I remember, my mom, they were calling my mom, and it was just horrific. It was scary, cause I\'m like, \"Dang, I\'m really not about to get out of here.\" Like, \"Dang!\" And then, later on, down the line\... And then, what resulted from that, is that bails bondsman - cause, again, I\'d never been to jail, and I\'m from Omaha, and I don\'t know how this works. So, cause we don\'t have that, and I\'m not familiar with that.

**Q:** \[00:08:27\] Right.

**A:** \[00:08:27\] So, the bails - essentially, I missed my court date in \[Kansas \[00:08:31\].ppp. The bail bondsman hired a skip tracer, came to my mama\'s house. I end up jumping off the cliff, running out of our backyard, cause I was terrified, cause I didn\'t know what they were going to do. And then, later on, down the line, I ended up meeting with one of them. They had a black guy \[.uuu call me \[00:08:46\]. They played me. The first skip tracer was a white guy. The second one was a black guy. And he was like, \"Oh, yeah, you ain\'t going to go.\" I\'m like, \"Look. This is crazy. I don\'t want to go to jail.\" Like, \"You ain\'t going to go to jail.\" And he actually tricked me, and I was in jail on Easter that year. And then, I was in jail here in \[Nebraska \[00:09:04\].ppp for skipping out on the bond from the drive-in with the \[.uuu suspension \[00:09:06\], right? This is crazy.

\[00:09:08\] So, I was in jail in \[Omaha, Nebraska \[00:09:12\].ppp, and the charge that they charged me with is Felony Flee Fugitive.

**Q:** \[00:09:19\] Flight to Avoid Arrest?

**A:** \[00:09:20\] Yep - Felony Fleet Fugitive charge, with a \$25,000 bond. And that\'s my first\... You know, I\'ve never had no problems before. Never been in jail or anything. I was in jail for five days.

**Q:** \[00:09:36\] What is your experience with\... Can you tell me your experience with other individuals indirectly for you, in the system?

**A:** \[00:09:46\] Yes. My first experience - does this have to be one person that we focus on, or just an overall?

**Q:** \[00:09:58\] No, just overall.

**A:** \[00:10:00\] Okay. My very first experience, \[.uuu just remembering when my Uncle Corrin \[00:10:02\].ppp went to jail. He\'s my mom\'s baby brother, so he is the closest to a first cousin that I have. He went to jail, and he had to do, like - I was 9 years old. My grandma had died when I was 7. He went to jail when I was 9. I was in the 4th grade, and I almost remember what I had on, going to court. He had got indicted on selling dope, and he had 7 years. And I was really like, \"Damn, you ain\'t going to see me graduate high school.\" I was really hurt by it. I was really hurt when he went to jail. That was the first instance. After that, a lot of the times\... The period of my life when my dad wasn\'t in my life, I would hear that he was in and out of jail, and I remember my mom getting mad at my aunt when I was four years old, for taking me to the jail to see my dad without permission.

**Q:** \[00:11:07\] Why was she so upset?

**A:** \[00:11:08\] She didn\'t want me to see my dad in jail.

**Q:** \[00:11:11\] How was that experience for you, if you think about 4-year-old - as much as you can remember?

**A:** \[00:11:16\] I don\'t remember seeing him in jail. I remember the fight between my mom and aunt afterwards. I don\'t remember the jail experience. Not that one. I was afraid, because I was scared. Like, did I do something wrong? I remember being afraid.

**Q:** \[00:11:38\] And what about your son\'s father?

**A:** \[00:11:39\] My son\'s father went, and then, my uncle - my \[Uncle Brandon \[00:11:42\].ppp went to jail, which was super close. Me and my uncles - my \[Uncle Brandon \[00:11:48\].ppp went to jail for 10 years at 18 years old. He got sentenced for 10 years, robbing banks. I remember sitting in the courtroom, and \[.uuu \[00:11:57\] got, like\... And it was like, six of them. And they only got \$80,000 total. And I\'m like - I was thinking, \"Damn. that\'s cra\" - he had to do 10 years. And I\'m still - his life is impacted by it right now, today. He been out for five years.

\[00:12:12\] My son\'s father - my first son - my 14-year-old son\'s father went to jail when my son was 3 months old. He went to jail while I was pregnant, and he was out\... Like, I remember doing everything to get him out. We went and talked to these lawyers, and we\'re 19 years old, so we\'re 19 years old, and we\'re like, and I\'m talking\... Now, \[.uuu \[00:12:40\].ppp had a good-paying job, so I\'m like, how much is it going to cost to get him out? I remember selling products and everything. His fine was \$50,000. It was a robbery, or whatever. Alleged robbery that he did, that I don\'t think he did to this day, or if he did, I don\'t know. But alleged robbery. And first offense, he didn\'t have no priors or anything. He wasn\'t gang-related. Not on their books. It was a first armed robbery. He allegedly jacked somebody for \[.uuu \[00:13:14\] rims, and they gave him a \$50,000 bond. It was \$5,000. We didn\'t have it. So, I had like, \$1,000 on it. His current \[.uuu \[00:13:25\] ended up mortgaging his house to get him out of jail. And then, when he went back to trial, when our son was 3 months old, he went to jail. He was in jail for four years. The first four years of my son\'s life.

**Q:** \[00:13:38\] How was that like for you, raising a child without the other primary parent, if you can think back? Or, how was it for your son, not having his father?

**A:** \[00:13:51\] It was extremely difficult on both ends, for myself, and for my father - for my son, with the absence of his father. It was difficult for me, because at the time, we got pregnant, and we had the baby. Again, we\'re 18 years old when I got pregnant. We\'re young, but he\'s with me every step of the way. He went and got a job. He had never had a job before. He went and got a job at UPS, and he put me on his benefits. We wasn\'t even married. He really was all about this new baby. And he didn\'t miss a doctor\'s appointment. He didn\'t miss a beat. Baby showers, back when men weren\'t going to baby showers, you know, he was - before that was a thing, he was there. He didn\'t miss a beat. And then, he went to trial, and got convicted and charged, and had to do the four years in jail. My baby - we told my baby he was in college the entire time.

**Q:** \[00:14:54\] Really? So, you didn\'t take him to see him, or anything?

**A:** \[00:14:57\] I didn\'t take him to see him. Not one time.

**Q:** \[00:15:00\] He never questioned?

**A:** \[00:15:00\] He didn\'t. \"Your daddy\'s in college.\"

**Q:** \[00:15:05\] When you think about your individuals that you love in the system - either your child\'s father, your uncle, your dad, can you tell me about a time where someone in the system may have tried to help them and it worked? Caseworker, lawyer, correctional officer, anything?

**A:** \[00:15:24\] No. No. I haven\'t seen it worked as, like, changed them. No, their life is going to be for - everybody\'s life has been forever impacted. My uncle who went to jail when I was 7, that was damn near 30 years ago. If you sit down with him long enough, he going to tell you, \"When I was in the joint.\" He\'s still talking about when he was in the joint 30 years ago. My son\'s dad \[.uuu had ricocheted \[00:15:52\]. You know how, it\'s this cycle. You go to jail. You come out. As soon as you come out after being gone for however much time, you\'re expected to have your life all the way on track, a job with no job history, probably damn near no education from when you went in. And you\'re supposed to come out, and go work, and pay bills, and pay the halfway house. It\'s the whole system designed for them to fail, even if you have to jump out and get right in the groove of normal day life that you sat out of for years, or you going right back to jail. So, then, they always violated. My \[Uncle Brandon \[00:16:32\].ppp been violating. He went to jail from 18 to 28. We\'re still 34. He been to jail probably three, four times since then. It\'s so easy to violate.

**Q:** \[00:16:45\] If you could shine a bright flashlight on just one part of the system so that everybody could see it, what part would that be?

**A:** \[00:16:51\] It would be, if I could comment on one part, the one part, the flashlight I want everyone to know that the majority of the prison population are black men, black males. And they have an abundance of time where other people - other nationalities don\'t have it. And jail is full of black men. I want them to look at that, pay attention to that, learn that, and receive that, when they want to talk about how black - if how, as soon as \[Jonathan \[00:17:30\].ppp gets in trouble, they want to talk about \[Jonathan\'s \[00:17:32\].ppp daddy. Well, \[Jonathan\'s \[00:17:33\].ppp daddy\'s been in jail on a petty drug charge for seven years. So, that\'s all. I want them to look at that.

**Q:** \[00:17:41\] If you could snap your fingers and make one thing about the system change immediately, what would that be?

**A:** \[00:17:50\] That would be\... I want it to be equal, across the board, or like, really equal. Not like they say it\'s equal. I would like everything to be treated equal. I want race, background, family, parents, to come as a factor, or if it does, I don\'t want any race to be in a hierarchy than others. I want it to be really equal. I want a justice system. I believe in an equal justice system.

**Q:** \[00:18:18\] And when you think back on individuals like your uncle or your child\'s father, have you been around them within the days or weeks after their release by the system?

**A:** \[00:18:30\] My child\'s father, yeah. My uncle, for sure, as it\'s on this period of time. I remember, this is when I was 17 years old, and he was in \[Council Bluffs \[00:18:41\].ppp. I remember, he missed my graduation - my high school graduation. I was really hurt about that. And then\... But I knew - but I was able to go visit him by myself. I had to have my mom go, or anybody go with me, because I was 17. But in \[Nebraska \[00:18:59\].ppp, I think you got to be 18 or 19 to go to at the prison by yourself. But I was 17, so got to go visit him all the time. What was the question? Oh. So, and then, I remember dropping him off in \[Council Bluffs \[00:19:10\].ppp, and picking him up at the halfway house. I did that for my \[Uncle Brandon \[00:19:16\].ppp. My son\'s dad, we used to go to the \[OCC \[00:19:17\].ppp, like, \[East Omaha \[00:19:20\].ppp, and visit him on the way. We visited him when he was about to come home, and in the halfway house.

**Q:** \[00:19:23\] Did they seem different to you?

**A:** \[00:19:26\] Absolutely different.

**Q:** \[00:19:28\] In a better way, or not?

**A:** \[00:19:30\] At first. At first, everybody - I think that when every inmate comes home from prison, and they come home, I think that their mind is at the point where they feel like it\'s like robotic. It\'s like, put this program\... Like, \"I\'m about to come out, I\'m about to leave all that alone. I\'m done with all that. I\'m not going to do anything illegal. I\'m not going back to jail,\" for the first couple period of times. And then, that euphoria goes away.

**Q:** \[00:19:59\] And was there anything that they needed?

**A:** \[00:20:00\] They needed everything. They had nothing.

**Q:** \[00:20:03\] Is there something that you wished you could have done for them but didn\'t, or just wasn\'t able to?

**A:** \[00:20:09\] I wasn\'t able to provide them with decent jobs. When you\'re 30 years old, or 28, or, you know, you don\'t want to go work at \[Burger King \[00:20:24\].ppp. But \[Burger King \[00:20:24\].ppp is the only people who are going to hire you with no experience. You was locked up since your high school diploma. You have no experience for ten years. What employer is not looking at you like, \"What\... What you been doing, sir?\" So, you got to get the very starter jobs, and you gotta work with kids - like, 14-year-olds, and people who \[.uuu \[00:20:44\] respect, you got to come back in, and you is competing with them for a position. So, if I could provide opportunities as far as, and like, not just a financial, as well as a mindset program, that would be \[.uuu cool \[00:21:03\].

**Q:** \[00:21:04\] What have you learned from - like, what have seeing other individuals that you love and are close to experience the system, what has that taught you?

**A:** \[00:21:14\] I think the system, I don\'t think it\'s fair. I don\'t think it\'s equal. I think that it\'s completely biased, and the bias and the black people, black men especially, black children, young black boys - even black women\...

**Q:** \[00:21:32\] Well, you have children, right?

**A:** \[00:21:33\] Yep.

**Q:** \[00:21:34\] Has it changed the way that you parent, or impacted the way that you decided to parent your children?

**A:** \[00:21:42\] Absolutely. I\'m scared that my son, my 14-year-old son, I pray to God he don\'t go to jail every day. That\'s part of my daily prayer. Every time he walks to the store, I count it, because we live in an urban neighborhood, \[North Omaha \[00:21:56\].ppp neighborhood that is high profile for gang violence, I have to tell him, \"No, you can\'t wear red when you go to the store. Go put on something else.\" \"Take your hat off. You can\'t wear it to the \[.uuu \[00:22:08\].\" Cause I don\'t even know \[.uuu \[00:22:10\] anymore. So, if my son is not back in 20 minutes, cause I don\'t want to be racially profiled, then I count it. I\'m coming to get him. And he knows it. So, sometimes, I\'ll drive past, and be like, \"Hey, Mom, I\'m right here,\" because he knows that if he\'s not back at a certain time, I\'m coming, cause I don\'t want \[.uuu \[00:22:30\] about the other gang members, or any other people in the neighborhood \[.uuu \[00:22:34\] the police get him, cause they\'re going - I know as soon as the police be like, \"What you doing?\" He going to be like, \"What you mean?\"

**Q:** \[00:22:43\] Is there anything that I haven\'t asked you that you want to talk about?

**A:** \[00:22:46\] No.

**Q:** \[00:22:47\] Is it okay for me to stop the recording?

**A:** \[00:22:49\] Yes.

**Transcript ended at \[00:22:51\]**

```


