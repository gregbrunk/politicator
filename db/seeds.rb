# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Policy.destroy_all

policies = Policy.create([
	{
	id: 1,	
    name: "College Tuition" ,
    left: "College should be free",
    right: "College should be paid for",
    trump_quote: "These student loans are probably one of the only things that the government shouldnt make money from and yet it does.",
    hillary_quote: "Let’s … make debt-free college available to everyone. ... And let’s liberate the millions of Americans who already have student debt.",
    trump_choice: "Middle",
    hillary_choice: "Left"
    },

    {
    id: 2,		
    name: "Illegal Immigration",
    left: "Anyone can move here immediately",
    right: "Become documented to move here",
    trump_quote: "If we don’t have borders, we don’t have a country. We need to BUILD A WALL that will keep illegal immigrants out.",
    hillary_quote: "The American people support comprehensive immigration reform not just because it’s the right thing to do—and it is—but because they know it strengthens families, strengthens our economy, and strengthens our country.",
    trump_choice: "Right",
    hillary_choice: "Middle"
    },

    {
    id: 3,		
    name: "Tax Policy",
    left: "If you earn more, others should benefit",
    right: "If you earn more, you should benefit",
    trump_quote: "It will be simple, it will be easy, it will be fair. By cutting loopholes used by the wealthy, It’s going to cost me a fortune.",
    hillary_quote: "It’s outrageous that multi-millionaires and billionaires are allowed to play by a different set of rules than hardworking families, especially when it comes to paying their fair share of taxes.",
    trump_choice: "Middle",
    hillary_choice: "Left"
    },

    {
    id: 4,	
    name: "Fair Trade",
    left: "We should trade with every country we can",
    right: "If countries play by the rules, we won't trade",
    trump_quote: "Our goal is not protectionism but accountability. America fully opened its markets to China but China has not reciprocated. Its Great Wall of Protectionism uses unlawful tariff and non-tariff barriers to keep American companies out of China and to tilt the playing field in their favor.",
    hillary_quote: "I have a very clear view. We have to trade with the rest of the world. We are 5 percent of the world's population. We have to trade with the other 95 percent. And trade has to be reciprocal.",
    trump_choice: "Middle",
    hillary_choice: "Middle"
    },

    {
    id: 5,	
    name: "Foriegn Policy",
    left: "Fight for safety for everyone in the world",
    right: "Fight for safety for American citizens",
    trump_quote: "We will never enter into any conflict unless it makes us safer as a nation.",
    hillary_quote: "“We and our allies must work hand in hand to dismantle the networks that move money and propaganda and arms and fighters across the world.",
	trump_choice: "Right",
    hillary_choice: "Left"
	},

	{
	id: 6,
	name: "Gun Control",
	left: "Guns should be strictly regulated",
	right: "Owning guns is a fundamental right",
	trump_quote: "The Second Amendment guarantees a fundamental right that belongs to all law-abiding Americans. The Constitution doesn’t create that right – it ensures that the government can’t take it away. Our Founding Fathers knew, and our Supreme Court has upheld, that the Second Amendment’s purpose is to guarantee our right to defend ourselves and our families. This is about self-defense, plain and simple.",
	hillary_quote: "I believe weapons of war have no place on our streets. We may have our disagreements on gun safety regulations, but we should all be able to agree on a few things. If the FBI is watching you for suspected terrorist links, you shouldn’t be able to just go buy a gun with no questions asked.",	
	trump_choice: "Right",
    hillary_choice: "Middle"
	},

	{
	id: 7,
	name: "Health Care",
	left: "The government should help you afford healthcare",
	right: "You should earn enough afford healthcare",
	trump_quote: "Since March of 2010, the American people have had to suffer under the incredible economic burden of the Affordable Care Act—Obamacare. This legislation, passed by totally partisan votes in the House and Senate and signed into law by the most divisive and partisan President in American history, has tragically but predictably resulted in runaway costs, websites that don’t work, greater rationing of care, higher premiums, less competition and fewer choices.",
	hillary_quote: "The Affordable Care Act made preventive care available and affordable for an estimated 39 million people with Medicare and saved more than 9 million people with Medicare thousands of dollars in prescription drug expenses",
	trump_choice: "Right",
    hillary_choice: "Left"
	},

	{
	id: 8,
	name: "Gay Marriage",
	left: "Americans deserve to marry whoever they love",
	right: "Marriage is defined as one man & one woman",	
	trump_quote: "They have ruled on it. I wish that it was done by the state. I dont like the way they ruled. I disagree with the Supreme Court from the standpoint they should have given the state -- it should be a states rights issue. And thats the way it should have been ruled on",
	hillary_quote: "I'll fight to ensure lesbian, gay, bisexual, and transgender Americans have full equality under the law, and to end discrimination in employment, housing, schools, and other aspects of our society.",
	trump_choice: "Middle",
    hillary_choice: "Left"
	},

	{
	id: 9,
	name: "Abortion",
	left: "Abortion should be legal",
	right: "Abortion should be illegal",
	trump_quote: "Planned Parenthood should absolutely be defunded. I am against abortion... and that is a tremendous amount of the work they do.",
	hillary_quote: "Politicians have no business interfering with women's personal health decisions. I will oppose efforts to roll back women's access to reproductive health care, including Republican efforts to defund Planned Parenthood. As president, I'll stand up for Planned Parenthood and women’s access to critical health services, including safe, legal abortion.",	
	trump_choice: "Right",
    hillary_choice: "Left"
	},

	{
	id: 10,
	name: "LGBTQ Social Rights",	
	left: "Gender is what you decide you are",
	right: "People are born a male or female",
	trump_quote: "People go, they use the bathroom they feel is appropriate, there has been so little trouble. I believe it should be states' rights and the state should make the decision. They're more capable of making the decision.",
	hillary_quote: "Hillary will work with Congress to pass the Equality Act, continue President Obama’s LGBT equality executive actions, and support efforts underway in the courts to protect people from discrimination on the basis of gender identity and sexual orientation in every aspect of public life.",
	trump_choice: "Middle",
    hillary_choice: "Left"
	},

	{
	id: 11,
	name: "Environmentalism",
	left: "Protecting the environment is most important",
	right: "Human needs are the most important",
	trump_quote: "The concept of global warming was created by and for the Chinese in order to make US manufacturing non-competitive.",
	hillary_quote: "I won’t let anyone take us backward, deny our economy the benefits of harnessing a clean energy future, or force our children to endure the catastrophe that would result from unchecked climate change.",	
	trump_choice: "Right",
    hillary_choice: "Left"
	},

	{
	id: 12,
	name: "Education Policy",
	left: "Education should be run federally",	
	right: "Education should be run locally",
	trump_quote: "I'm a tremendous believer in education, but education has to be at a local level. We cannot have the bureaucrats in Washington telling you how to manage your child's education",
	hillary_quote: "Teachers will be my partner in Washington in trying to figure out how we make elementary and secondary schools successful,",
	trump_choice: "Right",
    hillary_choice: "Left"
	},
])
