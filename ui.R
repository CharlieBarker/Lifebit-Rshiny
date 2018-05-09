fluidPage(


  navbarPage(
    "Anonymous' Personalised Genome Report",
    tabPanel("Overview",
    	tags$h3("Here is your personalised genome report"),
    	br(),
		p("We have sequenced and analysed your genome to give you the best lifestyle and nutritional advice for your body"),
		tags$h4("The key to healthy living lies in understanding your DNA."),
		p("A person's genome is inextricably linked to their health and well-being in a complex inter-play of lifestyle, DNA sequence and environment. Hence, understanding both the nature of this interaction and the individuals exact DNA sequence can inform upon how we live in-order to maximise our longevity, health and happiness."),
		img(src="dna-2316536_960_720.png"),
		p("Your DNA was sequenced and analysed inorder to understand exactly what makes your body tick, and how you can adapt your lifestyle to suit its needs."),
		p("Specific details on sequencing and analysis can be found on the two 'Metrics' tabs for an indepth summary. These tabs contain some genetic jargon, so for a more concise and less technical summary, skip to the Life-style adivce tab.")
    ),
    tabPanel("Sequencing Metrics",
		p("Below is a run-down of the metrics associated with the sequencing of your genome."),
		h3("Sequencing Coverage"),
		"Sequencing coverage for the full",
		tags$a(href="https://en.wikipedia.org/wiki/Genome", "genome,"),
		tags$a(href="https://en.wikipedia.org/wiki/Genes", "genes,"),
		tags$a(href="https://en.wikipedia.org/wiki/Exons", "exons,"),
		"and",
		tags$a(href="https://en.wikipedia.org/wiki/Coding_region", "protein coding parts,"),
		" of your DNA. Click the names if you require clarification of the definition of these terms.",
		img(src="coverage.png"),
		h3("Variation Counts"),
		"Summary of the different types of variants found with their corresponding frequency.",
		DTOutput('tbl')
    ),
    tabPanel("Phenotypic Metrics",
		fluidRow(
			column(5, 
				h3("Phenotype Summary"),
				"Summary of the",
				tags$a(href="https://en.wikipedia.org/wiki/Phenotype", "phenotypic"),
				"information extracted from the variation data found in your genome.",
				br(),
				br(),
				p(tags$h4("42,032 variations known to affect a trait were assessed.")), 
				br(),
				p(tags$h4("2,820 of these variations were identified in your genome.")),
				br(),
				p(tags$h4("168 traits affected by were analysed.")),
				br()
			),
			column(2,
				br(),
				div(img(src="variation.png"), style="text-align: right;"),
				br()
			)
		),
		h3("Clinical Classification"),
		"These genetic traits were then split into their effect on the body, shown below.",
		DTOutput('tbl1')
    ),
    tabPanel("Life-style advice",
		"The differences in trait identified in your genome were then used to make informed suggestions on your required nutritional intake.",
		h3("Vitamins and Minerals"),
		strong(h4("Potassium")),
		"Your body has an increased need for",
		tags$a(href="https://patient.info/health/dietary-potassium", "potassium. "),
		"Potassium is one of the seven essential macrominerals. The human body requires at least 100 milligrams of potassium daily to support key processes. Beet greens, white beans, soy beans, and lima beans are the foods highest in potassium.",
		strong(h4("Choline")),
		"Your body has an increased need for ",
		tags$a(href="https://ods.od.nih.gov/factsheets/Choline-HealthProfessional/", "choline."),
		"Choline is a vitamin-like essential nutrient required for the metabolism and transport of lipids. The recommended adequate intake (AI) of choline is set at 425 milligrams (mg)/day for women and 550 mg/day for men. Eggs, liver, and peanuts, are especially rich in choline.",
		strong(h4("Lecithin")),
		"Your body has an increased need for ",
		tags$a(href="https://www.webmd.com/vitamins/ai/ingredientmono-966/lecithin", "lecithin."),
		"Lecithin is a type of molecule used to make up the membranes of the bodies cells. 425 to 550 milligrams per day is the recomended daily intake for an adult. Seafood, dairy, and eggs are especially rich in lecithin.",
		strong(h4("Vitamin B2")),
		"Your body has an increased need for vitamin B2 (also known as  ",
		tags$a(href="https://ods.od.nih.gov/factsheets/Riboflavin-HealthProfessional/", "riboflavin"),
		"). Vitamin B2 is a type of molecule required for cellular respiration. It is nearly always well tolerated by the body. Food and beverages that provide riboflavin without fortification are milk, cheese, eggs, leaf vegetables, liver, kidneys, legumes, mushrooms, and almonds.",
		strong(h4("Vitamin B12")),
		"Your body has an increased need for ",
		tags$a(href="https://www.webmd.boots.com/healthy-eating/guide/vitamin-b12-deficiency", "vitamin B12."),
		"Vitamin B12 is a type of molecule required for the normal functioning of the nervous system. Recomended daily intake is around 2 micro grams per day. B12 is contained in meat, liver, eggs and milk.",
		strong(h4("Vitamin B9")),
		"Your body has an increased need for vitamin B9 ( ",
		tags$a(href="https://www.nutri-facts.org/en_US/nutrients/vitamins/b9.html", "vitamin B9"),
		"). Vitamin B9 is a type of molecule required for the production of new cells. The recommended daily intake of B9 in the US is 400 micrograms from foods or dietary supplements. Avocado, beetroot, spinach, liver, yeast, asparagus, kale, and Brussels sprouts are among the foods with the highest levels of Vitamin B9",
		h3("General dietary advice"),
		"Your genome suggests a heightened risk to hypertension (blood pressure). Consequently you should avoid trans-fatty acids, reduce added sugar intake (like fructose corn syrup, table sugar and honey. Try to consume more fiber and polyunsaturated fat.",
		br(),
		br(),
		h6("Always consult a Doctor before making big lifestyle changes. This data is from your DNA and can not reflect the current state of your lifestyle and environmental factors that also affect your health.")
		
		
    )

  )
)

