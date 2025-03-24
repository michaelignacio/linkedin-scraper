#!/bin/bash

# JSON array of objects
json='[
  {
    "name": "Lorelee Isbell",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Passionate about education in all forms, for all people, delivered in ways that can meet people where they are."
  },
  {
    "name": "Patricia Mooneyham, MSHROL, CELC",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQEdaa_X6Gmnrw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1654800423826?e=1748476800&v=beta&t=LyO2LuSwVyGifNrVQHs2aUlx68LbfSXqxGZ5k3fom28",
    "description": "Director Professional Development | Consultant/ Coach / Educator | Continuous Process Improvement"
  },
  {
    "name": "Paul G.",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Manager, Marketing and External Relations at uOttawa"
  },
  {
    "name": "Serge Blais",
    "photo": "https://media.licdn.com/dms/image/v2/C4E03AQGftQINjJUAfA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1587663668326?e=1748476800&v=beta&t=4QR6XfXynOyJiITlXegZx4qfmGMXmxHv82zmM0wjtWA",
    "description": "Executive Director, University of Ottawa Professional Development Institute M.Sc. McGill, ExecMBA Ottawa"
  },
  {
    "name": "Wanda Costen",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQG-Q3nMfeXwNA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1637546083411?e=1748476800&v=beta&t=TGXtacTgdmD1b8rvdl5MIBpbNsP1ryxVg2i4_8HfWYk",
    "description": "Provost, Dalhousie University"
  },
  {
    "name": "Jenny Baechler",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQHCPYq41bRFjA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516494263207?e=1748476800&v=beta&t=k0vKDgkXAWS5rc3YXuikryw2jGR8HPgHE0xYAm_vUVs",
    "description": "Faculty of Management, Dalhousie University"
  },
  {
    "name": "Michelle Hunter",
    "photo": "https://media.licdn.com/dms/image/v2/C4E03AQEsZ25oNdaLjg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516236170244?e=1748476800&v=beta&t=Win7z3ICFFOd-SENtzayGD3cOEi7TisNDyiP5Ue0Mrk",
    "description": "Associate Director, Dalhousie University"
  },
  {
    "name": "Mike Smit",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQFNHAoyn3xK-A/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516260757343?e=1748476800&v=beta&t=MM_jfQGsTB0uXNCIy_BiaJn_SKcI-YYZOFZsqmKuxLI",
    "description": "Professor at Dalhousie University"
  },
  {
    "name": "Wendy Cukier",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Academic Director, Diversity Institute; Women Entrepreneurship Knowledge Hub; Future Skills Centre"
  },
  {
    "name": "Meagan Trush",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Director, Research Partnerships at the Diversity Institute"
  },
  {
    "name": "Zoe MacLeod, PhD, ACC",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQEcJFnXqPN5_Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1713455612773?e=1748476800&v=beta&t=oJ2QCGtlZiWF8VnBV64QYZa-unpnSNM9ndMUH4Qf6KU",
    "description": "Associate Vice President at Royal Roads University"
  },
  {
    "name": "Calvin Roberts",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQFnES9nha9IJQ/profile-displayphoto-shrink_200_200/B56ZU6frk_HoAg-/0/1740443138688?e=1748476800&v=beta&t=rCtao3EQYwlfajTutzM6i2KqBj3XR_oZeFA1__PJ4FQ",
    "description": "Director, Workforce Development and Lifelong Learning | Strategic Program Developer & Partnership Champion | Driver of Innovation in Higher Education | Expert in Stakeholder Relations & Academic Alliance Building"
  },
  {
    "name": "David Chang",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQEYnpSx_p9qBg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516518801695?e=1748476800&v=beta&t=DQsrZetQYxTvbPBTSE9CWtJLxPlL303N9mDpFwnErXw",
    "description": "Director, Innovation & Partnerships | Entrepreneur, Mentor, and Innovation Champion"
  },
  {
    "name": "Darren Fast",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHPEQ8vmYB_1g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1687398764083?e=1748476800&v=beta&t=dLCHN3v4d5OjxJTBtoF6swrd6lKp1vbTs9ct48YKVh0",
    "description": "Connecting companies with inventions and expertise"
  },
  {
    "name": "Luigi A. Pecoraro, Ed. D.",
    "photo": "https://media.licdn.com/dms/image/v2/D5635AQHqUA7CY-sVgA/profile-framedphoto-shrink_200_200/profile-framedphoto-shrink_200_200/0/1737828878406?e=1743400800&v=beta&t=9dQHtPB1rAdQseM0OUTn8JFHso32FUPzQkpub4njfR4",
    "description": "Igniting Leadership Potential through Executive Education and Leadership Development, and as a Trusted Advisor, Coach and Strategist"
  },
  {
    "name": "Joe Carella",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQFoiy-y0kjv5g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1728480116421?e=1748476800&v=beta&t=c6jkTfK0ZwFgg24HELwmeBM31y9DL_OMdBxXWq3bSVE",
    "description": "Chief Learning Officer, University of Arizona | Faculty @ Rutgers Business School & University of Arizona | Strategy, Leadership Development & Executive Decision Making"
  },
  {
    "name": "Joe Carella",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQFoiy-y0kjv5g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1728480116421?e=1748476800&v=beta&t=c6jkTfK0ZwFgg24HELwmeBM31y9DL_OMdBxXWq3bSVE",
    "description": "Chief Learning Officer, University of Arizona | Faculty @ Rutgers Business School & University of Arizona | Strategy, Leadership Development & Executive Decision Making"
  },
  {
    "name": "Joseph Taylor",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQFBObCTlPPr0g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1630773641784?e=1748476800&v=beta&t=8YwYRgUXt0vJ85n-7tV3w17_ud50KlQpDGAwqNyoZyk",
    "description": "Department Chair, Information Systems and Business Analytics at California State University-Sacramento Associate Professor of Information Systems"
  },
  {
    "name": "Alexander \"Sasha\" Sidorkin",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHws0CYroG-qA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1709966503060?e=1748476800&v=beta&t=QfSb20t25NEfHAJ8UDopCe8ilqU2DSTvXf2S87d0I0k",
    "description": "Chief AI Officer at Sacramento State University"
  },
  {
    "name": "Lisa VanRaemdonck",
    "photo": "https://media.licdn.com/dms/image/v2/C4E03AQGSMX7tG8uRrQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1624906071382?e=1748476800&v=beta&t=gm9tQo_CRtakF_yqaMQMyrPh4g-Y-4rBUPNvJvxBvJk",
    "description": "Creating spaces for connection, growth, learning, new thinking and transformed ways of being."
  },
  {
    "name": "G. Brian Burke",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Managing Director at Center for Technology in Government, University at Albany"
  },
  {
    "name": "Dr. Frederic L.",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQFAC6bH7AX2UA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1645897721352?e=1748476800&v=beta&t=GhRZqavSVRNwlDgsiO0mY2Nh98itVztkt4Aj9IIeVgI",
    "description": "Intelligence | Cybersecurity | Disruptive Tech"
  },
  {
    "name": "Peter Aiken",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQGUWLEcBAt3Qw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1721740734451?e=1748476800&v=beta&t=yrwKTLIFnL1MmkqfUFcZiQdYhn0HxhX6s942fEV_x6Y",
    "description": "Associate Professor of Information Systems and Anything Awesome"
  },
  {
    "name": "Dorin Munteanu",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQHPWyjvKcflXg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1682340314692?e=1748476800&v=beta&t=QTM-0WrZmQK72is0qVXpQCzc4qMLg1hSDM_H7khj7bk",
    "description": "Co-Founder Intelligent Automation (IA) Initiative I Board Chair & President I Advisor I Research Fellow"
  },
  {
    "name": "David K. Rehr, PhD",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQHX8QTinMVFpg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516847402454?e=1748476800&v=beta&t=hcUXqVNA7S4YUpgE4XR-YiZLulbx0VnEdOMYjv1k66k",
    "description": "Professor and Director, The Center for Business Civic Engagement, GMU - Schar School of Policy and Government, Co-Founder, The Intelligent Automation Initiative, VA Academic Intelligent Automation Community of Practice"
  },
  {
    "name": "Carolyn Johns",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQEZ42kf6kdidQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1519307890016?e=1748476800&v=beta&t=Jy-OqGoOoBCYS7X0Ez9Ho8nAu5m5iDSefYYKPov9MLQ",
    "description": "Professor at Toronto Metropolitan University"
  },
  {
    "name": "Lisa M. Coleman, Ph.D. (she/hers)",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQHyrx07AtpBYA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516304398659?e=1748476800&v=beta&t=lWPIk9dKw42ytHTyw9Qs0evBprmXro3hzF-kj20tnXI",
    "description": "President - Adler University"
  },
  {
    "name": "Mila Gasco Hernandez",
    "photo": "https://media.licdn.com/dms/image/v2/C5103AQE3CuoE1cmNVQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1516308855856?e=1748476800&v=beta&t=DIY86wxraHvZxR2BgopstYhWKAWJrjy2HWYLl5s0H1s",
    "description": "Research Director at Center for Technology in Government - SUNY Albany"
  },
  {
    "name": "Robert Devries",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQGzrKOBcoCHwQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1697054263193?e=1748476800&v=beta&t=E-VU2UAeDUWEGHxiNjp0e5FPg6F3TgmPebdkuCOxy4g",
    "description": "Chief Information Officer, University of Guelph"
  },
  {
    "name": "Kayla Schwoerer, Ph.D.",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQFHwHlmpwx7Tg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1675624504913?e=1748476800&v=beta&t=1w9QofrPNt8KCLAvCIqqnue8QyfITCafbIxqnmUzN3k",
    "description": "Assistant Professor of Public Administration & Policy at University at Albany, SUNY & Director, GovDX Lab"
  },
  {
    "name": "Valerie Turner BA, MEBT",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Associate Vice-President (ITS) and CIO, Carleton University"
  },
  {
    "name": "Kelly Powell Logan",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQE_E4yj2AY7ng/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1517442974926?e=1748476800&v=beta&t=lR3rGRlRimxOIOkj6R5ohppY843WXbUAmqKRO-qBvik",
    "description": "at Harrisburg University of Science & Technology"
  },
  {
    "name": "Monroe France",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQFNDIAI_ILWVw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1679077840571?e=1748476800&v=beta&t=U0uhkZi_qrSu2X_z1XgNr-L7CubCJqONYIKfIutTAyE",
    "description": "Humanitarian. Senior university administrator and professor. Public speaker. Cross sector global thought leader and inclusive excellence strategist with a passion for innovation and collective impact."
  },
  {
    "name": "Yaprak Baltacioglu, C.M.",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHXCJzdCyw9Ow/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1693957474512?e=1748476800&v=beta&t=HAKZmp7co3oWpanC9X7-PnJ4d6KTPDHZQiJGaqk6gS8",
    "description": "Chancellor"
  },
  {
    "name": "Wency Lum",
    "photo": "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
    "description": "Associate Vice-President University Systems & Chief Information Officer at University of Victoria"
  },
  {
    "name": "Cynthia Holmes",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQEtTOzju5Hk6g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1690146358000?e=1748476800&v=beta&t=Sk1Kd0A7OTaB4PSq-vANWOVyWPi_eIYYizwSVIpSOrI",
    "description": "Dean, Ted Rogers School of Management, Toronto Metropolitan University"
  },
  {
    "name": "Scott Dolan",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHCX59A-yRrNw/profile-displayphoto-shrink_200_200/B56ZO3wW1VHIAY-/0/1733954728536?e=1748476800&v=beta&t=I77hj9YcVTTfvd3BlgbL063On_X0S2A8FpHdcFQto_0",
    "description": "Executive Dean at Excelsior University"
  },
  {
    "name": "Balakrishnan Prabhakaran",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHPn-MuXzLVhg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1727802440795?e=1748476800&v=beta&t=m44LPkW80-n7iQAtI_KXdKc3AFipUTJ1zoDQ-fYDoUs",
    "description": "Director, AI Plus Institute; Empire Innovation Professor, University at Albany - SUNY"
  },
  {
    "name": "Theresa Pardo",
    "photo": "https://media.licdn.com/dms/image/v2/C4D03AQFyiHeU2HKMmA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1614000720713?e=1748476800&v=beta&t=aj7MlW1PyZIScv1n_iYljoGTOgG3qJNm0ZRQWZEUPZQ",
    "description": "Associate Vice President for Research and Economic Development University at Albany, SUNY"
  },
  {
    "name": "Lester Godsey",
    "photo": "https://media.licdn.com/dms/image/v2/D5603AQHKh0BS7BILgg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1695487413397?e=1748476800&v=beta&t=Uz774NAOBdeoupaYuTrG-pkRbkfe3j1dL-hK5mKtff8",
    "description": "Chief Information Security Officer at Arizona State University"
  },
  {
    "name": "Kelly Otter",
    "photo": "https://media.licdn.com/dms/image/v2/D4E03AQEk8rF8tnHbYw/profile-displayphoto-shrink_200_200/B4EZQglTbgHEAY-/0/1735713442456?e=1748476800&v=beta&t=eD3YEDRvXUtHAI5_HEwJPDMul_NMqecfPPdThc1a2Zc",
    "description": "Dean, School of Continuing Studies at Georgetown University"
  },
  {
    "name": "Chuck Brooks",
    "photo": "https://media.licdn.com/dms/image/v2/C4E03AQFXfl5jA1_0Pg/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1662841068153?e=1748476800&v=beta&t=0keoGwKvALsx8s1Act7mAGqp29zMdjvC1lpt-QAF0RY",
    "description": "Named \"Top Tech Person To Follow\" by LinkedIn, Voted \"Cybersecurity Person of the Year\" Cited Top 10 Global Tech & Cyber Expert & Influencer, Georgetown U Prof, 2X Presidential Appointee, FORBES Writer, 123k LI Followers"
  },
  {
    "name": "Roozbeh Sadeghian",
    "photo": "https://media.licdn.com/dms/image/v2/C4E03AQGSVqvGbDCAxA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1619319218589?e=1748476800&v=beta&t=DhgU_XikYw39EzGAAnLSaoDOHxxSajigVrZC6yIU4jk",
    "description": "Director and Associate Professor of Data science at Harrisburg University of Science and Technology"
  },
  {
    "name": "Alex Jenkins",
    "photo": "https://media.licdn.com/dms/image/v2/C5603AQGSBQtv0eHX6Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1622803586184?e=1748476800&v=beta&t=6s3he5FuDN51Q8tovtWktH5gTliVUG_2j9hYjUZCacA",
    "description": "Director at WA Data Science Innovation Hub"
  }
]'

# Loop through the JSON array
echo "$json" | jq -c '.[]' | while read -r obj; do
  name=$(echo "$obj" | jq -r '.name')
  photo=$(echo "$obj" | jq -r '.photo')

  # Sluggify the name (convert to lowercase, replace spaces with dashes, remove special chars)
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g')

  # Download the image using curl
  curl -s -o "${slug}.jpg" "$photo"

  echo "Downloaded: ${slug}.jpg"
done