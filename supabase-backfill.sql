-- ================================================================
-- Supabase backfill — Augustus Holm personal site
-- Run once in the Supabase SQL Editor.
-- Safe to re-run: each section clears before inserting.
-- ================================================================


-- ================================================================
-- 1. APPS  (9 rows)
-- ================================================================
INSERT INTO apps (
  id, name, tagline,
  stat1_label, stat1_value, stat2_label, stat2_value, stat3_label, stat3_value,
  about, cta_label, cta_url,
  icon_svg, icon_gradient, display_order, visible
) VALUES

  -- CheckRx
  ('checkrx', 'CheckRx', 'A Medicare research lab simplifying Medicare for seniors',
   'Founded',        'January 2023',
   'Capital Raised', '$1.5M',
   'People Helped',  '20,000+ seniors',
   'CheckRx is a Medicare research lab focused on simplifying Medicare for seniors. We build market intelligence tools, conduct policy reform research, run field studies with seniors, and design software that makes Medicare easier to navigate — for health plans, agencies, seniors directly, and eventually government.',
   'Visit checkrx.com →', 'https://checkrx.com',
   '<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="7" width="20" height="10" rx="5"/><line x1="12" y1="7" x2="12" y2="17"/><polyline points="14 13 15.5 14.5 19 11"/></svg>',
   'app-checkrx', 1, true),

  -- Candor
  ('candor', 'Candor', 'An AI-native Medicare agency',
   'Stage',   'Pre-seed',
   'Founded', 'June 2026',
   'Launch',  'Q3 2026',
   'Candor is an AI-native Medicare agency built to strip out the fixed costs that keep traditional brick-and-mortar brokerages from scaling. Seniors enroll through AI agents or human agents — whichever they prefer — while every agent on the platform is equipped with a full suite of AI tools. The goal: a brokerage that serves seniors better at a fraction of the operational cost.',
   'Visit candorinsurance.us →', 'https://candorinsurance.us',
   '<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/><line x1="7" y1="9" x2="17" y2="9"/><line x1="7" y1="13" x2="17" y2="13"/><line x1="7" y1="17" x2="13" y2="17"/></svg>',
   'app-candor', 2, true),

  -- YPC
  ('ypc', 'Youth Philanthropy Council', 'Youth-led philanthropy at national scale',
   'Founded',        '2019',
   'Capital Raised', '$3.3M',
   'Lives Impacted', '40,000+',
   'YPC is a youth-led nonprofit empowering the next generation to lead philanthropy at scale. From a Guinness World Record shoe drive to building schools abroad to raising over $1M for community health clinics, YPC mobilizes 5,000 members across the country to turn youth energy into measurable impact.',
   'Visit ypc.care →', 'https://ypc.care',
   '<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="22" x2="12" y2="11"/><path d="M12 11 C10 9 7 7 7 4 C10 3 13 7 12 11"/><path d="M12 14 C14 12 17 10 20 11 C20 14 17 17 12 14"/></svg>',
   'app-ypc', 3, true),

  -- YPC Labs
  ('ypclabs', 'YPC Labs', 'The most equitable teenage entrepreneurship competition in the US',
   'Stage',      'Pre-launch',
   'Founded',    'May 2026',
   'Parent Org', 'YPC',
   'YPC Labs is building what aims to be the largest-by-prize-pool and most equitable teenage entrepreneurship competition in the United States. Too many teen competitions reward kids who already have the network, resources, and access that come with the top 10% of schools — overlooking founders with equal or stronger ideas but less polish. YPC Labs is built for them. An initiative of YPC.',
   'Visit ypclabs.org →', 'https://ypclabs.org',
   '<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M8 3h8M10 3v6L5 17a2 2 0 0 0 1.7 3h10.6a2 2 0 0 0 1.7-3L14 9V3"/><line x1="5.5" y1="15" x2="18.5" y2="15"/><line x1="12" y1="17" x2="12" y2="19"/><line x1="11" y1="18" x2="13" y2="18"/></svg>',
   'app-ypclabs', 4, true),

  -- The Holm Group
  ('holm', 'The Holm Group', 'Family-built operating company',
   null, null, null, null, null, null,
   E'Holm Group is a San Diego–based operating company I co-founded with my dad.\n\nIt runs a full-service practice across accounting, property management, data analytics, strategic tax planning, payroll & HR, and internal auditing — the unglamorous infrastructure businesses actually need to scale.\n\nIt''s one of the things I work on. The rest live elsewhere on this site.',
   'Operating services: holmgrp.com →', 'https://holmgrp.com',
   '<svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.5" stroke-linecap="round"><line x1="6" y1="4" x2="6" y2="20"/><line x1="18" y1="4" x2="18" y2="20"/><line x1="6" y1="12" x2="18" y2="12"/></svg>',
   'app-holm', 5, true),

  -- About Me
  ('about', 'About Me', 'Founder & builder, San Diego',
   null, null, null, null, null, null,
   null, null, null,
   '<svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/></svg>',
   'app-about', 6, true),

  -- Press
  ('press', 'Press', 'Selected coverage',
   null, null, null, null, null, null,
   null, null, null,
   '<svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M4 22h16a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v16a2 2 0 0 1-2 2Zm0 0a2 2 0 0 1-2-2v-9c0-1.1.9-2 2-2h2"/><line x1="10" y1="7" x2="18" y2="7"/><line x1="10" y1="11" x2="18" y2="11"/><line x1="10" y1="15" x2="14" y2="15"/></svg>',
   'app-press', 7, true),

  -- Contact
  ('contact', 'Contact', 'For ventures, partnerships, and press.',
   null, null, null, null, null, null,
   null, null, null,
   '<svg width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><line x1="22" y1="2" x2="11" y2="13"/><polygon points="22 2 15 22 11 13 2 9 22 2"/></svg>',
   'app-contact', 8, true),

  -- Terminal
  ('terminal', 'Terminal', null,
   null, null, null, null, null, null,
   null, null, null,
   null,
   'app-terminal', 9, true)

ON CONFLICT (id) DO UPDATE SET
  name          = EXCLUDED.name,
  tagline       = EXCLUDED.tagline,
  stat1_label   = EXCLUDED.stat1_label,
  stat1_value   = EXCLUDED.stat1_value,
  stat2_label   = EXCLUDED.stat2_label,
  stat2_value   = EXCLUDED.stat2_value,
  stat3_label   = EXCLUDED.stat3_label,
  stat3_value   = EXCLUDED.stat3_value,
  about         = EXCLUDED.about,
  cta_label     = EXCLUDED.cta_label,
  cta_url       = EXCLUDED.cta_url,
  icon_svg      = EXCLUDED.icon_svg,
  icon_gradient = EXCLUDED.icon_gradient,
  display_order = EXCLUDED.display_order,
  visible       = EXCLUDED.visible,
  updated_at    = now();


-- ================================================================
-- 2. ACHIEVEMENTS  (5 rows for YPC)
-- ================================================================
DELETE FROM achievements WHERE app_id = 'ypc';

INSERT INTO achievements (app_id, icon, title, subtitle, display_order) VALUES
  ('ypc', '🏆', 'Guinness World Record',                'Most shoes donated in 24 hours',  1),
  ('ypc', '🏛️',  'Outstanding Philanthropic Institution', 'AFP, 2024',                       2),
  ('ypc', '🏫', '3 schools built',                      'Global Classroom Initiative',      3),
  ('ypc', '🎗️',  '$1M+ raised',                          'SYH 55th Anniversary Gala',        4),
  ('ypc', '👥', '5,000 members nationwide',              null,                              5);


-- ================================================================
-- 3. PRESS  (37 rows — truncate first for idempotency)
-- ================================================================
TRUNCATE press RESTART IDENTITY;

INSERT INTO press (outlet, headline, url, date_published, is_featured, display_order, wordmark_style) VALUES

  -- ── FEATURED (is_featured = true, display_order = featured position 1–8) ──

  ('Entrepreneur',
   'CheckRx Is Making Medicare Manageable for Seniors',
   'https://www.entrepreneur.com/entrepreneurs/checkrx-is-making-medicare-manageable-for-seniors',
   '2026-05-01', true, 1, 'sans'),

  ('The Guardian',
   'Augustus Holm San Diego shoe drive world record',
   'https://www.theguardian.com/us-news/2024/dec/24/augustus-holm-san-diego-shoe-drive-world-record',
   '2024-12-01', true, 2, 'serif'),

  ('Guinness World Records',
   'Most shoes donated to charity in 24 hours',
   'https://www.guinnessworldrecords.com/world-records/109959-most-shoes-donated-to-charity-in-24-hours',
   '2024-12-01', true, 3, 'sans'),

  ('San Diego Union-Tribune',
   'Someone San Diego Should Know: Augustus Holm',
   'https://www.sandiegouniontribune.com/2024/07/24/someone-san-diego-should-know-augustus-holm/',
   '2024-07-01', true, 4, 'serif'),

  ('Forbes',
   'Gen Z Founders Writing a New Playbook for Business',
   'https://www.forbes.com/sites/pklein/2025/08/15/gen-z-founders-writing-a-new-playbook-for-business/',
   '2025-08-01', true, 5, 'serif'),

  ('Wharton / Penn Global Youth',
   'Kicking Off a Gap Year With a World Record and an Angel Investor',
   'https://globalyouth.wharton.upenn.edu/articles/future-of-the-business-world-podcast/kicking-off-a-gap-year-with-a-world-record-and-an-angel-investor/',
   '2024-12-01', true, 6, 'sans'),

  ('CBS News LA',
   'App Founder Explains Why and How He Started the Senior Medicare Healthcare Assistance Program',
   'https://www.cbsnews.com/losangeles/video/app-founder-explains-why-and-how-he-started-the-senior-medicare-healthcare-assistance-program/',
   '2025-10-01', true, 7, 'sans'),

  ('Scholastic Upfront',
   'Q&A Corner: Giving Away 21,000 Pairs of Shoes',
   'https://upfront.scholastic.com/issues/2024-25/031025/q-a-corner-giving-away-21000-pairs-of-shoes.html?language=english',
   '2025-03-01', true, 8, 'sans'),

  -- ── NON-FEATURED (is_featured = false, display_order = reverse-chron rank) ──

  ('San Diego BJ',
   'Power 20 2026',
   'https://www.sdbj.com/wp-content/uploads/2026/03/SDBJ-Power-20-2026.pdf',
   '2026-04-01', false, 1, null),

  ('Patch',
   'EO San Diego Announces Winner of 2025 GSEA Competition',
   'https://patch.com/california/san-diego/classifieds/announcements/510588/eo-san-diego-announces-winner-of-the-2025-global-student-entrepreneur-awards-gsea-competition',
   '2025-10-01', false, 2, null),

  ('SD Union-Tribune',
   'La Jolla News Nuggets',
   'https://www.sandiegouniontribune.com/2025/02/18/la-jolla-news-nuggets-appeal-postponed-50-years-at-salk-prozac-study-gillispie-blood-drive-more/',
   '2025-02-01', false, 3, null),

  ('Univ. of San Diego',
   'USD News Feature',
   'https://www.sandiego.edu/news/detail.php?_focus=95499',
   '2025-10-01', false, 4, null),

  ('San Diego Metro',
   '40 Under 40 (Youngest Nominee)',
   'https://www.sandiegometro.com/wp-content/uploads/2025/05/proof-SD-METRO-NO-3-VOL-40.pdf',
   '2025-05-01', false, 5, null),

  ('ABC10 News',
   'Youth Philanthropy Council Raises Millions Since 2019',
   'https://www.10news.com/lifestyle/leadership/youth-philanthropy-council-raises-millions-for-those-in-need-since-2019',
   '2025-03-01', false, 6, null),

  ('SD Union-Tribune',
   'Teens Break World Record Giving Away Shoes',
   'https://www.sandiegouniontribune.com/2025/01/06/teens-break-world-record-giving-away-shoes-to-kids-in-need-in-san-diego/',
   '2025-01-01', false, 7, null),

  ('SD Union-Tribune',
   'La Jolla App Valued at Over $8M Set to Expand in 2025',
   'https://www.sandiegouniontribune.com/2024/12/28/la-jolla-developed-app-valued-at-over-8m-is-set-to-expand-in-2025/',
   '2024-12-01', false, 8, null),

  ('Times of San Diego',
   'YPC to Launch Nation''s Largest 19-and-Under Entrepreneurship Competition',
   'https://timesofsandiego.com/business/2024/12/15/san-diegos-ypc-to-launch-nations-largest-19-and-under-entrepreneurship-competition/',
   '2024-12-01', false, 9, null),

  ('Times of San Diego',
   'Youth Council Aims for Guinness World Record at Kearny Mesa Event',
   'https://timesofsandiego.com/life/2024/12/01/youth-council-aims-for-guinness-world-record-at-kearny-mesa-event/',
   '2024-12-01', false, 10, null),

  ('San Diego BJ',
   'Startup Fills Prescription Needs',
   'https://www.sdbj.com/technology/startup-fills-prescription-needs/',
   '2024-12-01', false, 11, null),

  ('PR Newswire',
   'San Diego Teens Shatter Guinness World Record With 21,000 Shoes',
   'https://www.prnewswire.com/news-releases/san-diego-teens-shatter-guinness-world-record-with-21-000-shoes-for-underserved-women-and-children-302318911.html',
   '2024-11-01', false, 12, null),

  ('ThinkAdvisor',
   'App Uses Pill Bottles to Look Up Medicare Drug Prices',
   'https://www.thinkadvisor.com/2024/11/12/app-uses-pill-bottles-to-look-up-medicare-drug-prices/',
   '2024-11-01', false, 13, null),

  ('San Diego BJ',
   '17-Year-Old Launches Tool for Medicare Beneficiaries',
   'https://www.sdbj.com/technology/software/17-year-old-launches-tool-for-medicare-beneficiaries/',
   '2024-11-01', false, 14, null),

  ('The Star News',
   'Volunteers Needed to Break World Record Holiday Drive',
   'https://www.thestarnews.com/volunteers-needed-to-break-world-record-holiday-drive/',
   '2024-11-01', false, 15, null),

  ('Coronado Times',
   'Youth Philanthropy Council to Host St. Nick''s Kicks',
   'https://coronadotimes.com/news/2024/11/26/youth-philanthropy-council-to-host-st-nicks-kicks-dec-7-coronado-teens-welcome-to-volunteer/img_0006-4/',
   '2024-11-01', false, 16, null),

  ('MediaPost',
   'Checking In With Medicare Apps: Teenage Developer',
   'https://www.mediapost.com/publications/article/400336/checking-in-with-medicare-apps-teenage-developer.html',
   '2024-10-01', false, 17, null),

  ('GB San Diego',
   'Kids Helping Kids: YPC and San Ysidro Health Unite for Care',
   'https://gbsan.com/kids-helping-kids-ypc-and-san-ysidro-health-unite-for-care/',
   '2024-10-01', false, 18, null),

  ('AI in Healthcare',
   'AI Healthcare Industry Digest',
   'https://aiin.healthcare/topics/artificial-intelligence/artificial-intelligence-healthcare-industry-digest-blog',
   '2024-10-01', false, 19, null),

  ('Coronado Times',
   'Age Is But a Number: Kid-Run Nonprofit Defies Impossibility',
   'https://coronadotimes.com/news/2024/09/01/age-is-but-a-number-kid-run-nonprofit-youth-philanthropy-council-defies-impossibility/',
   '2024-09-01', false, 20, null),

  ('SD Voyager',
   'Exploring Life & Business With Augustus Holm of YPC',
   'https://sdvoyager.com/interview/exploring-life-business-with-augustus-holm-of-youth-philanthropy-council',
   '2024-09-01', false, 21, null),

  ('Umbrex',
   'An Introduction to Leading Latinx Startup Founders',
   'https://umbrex.com/news-articles/an-introduction-to-leading-latinx-startup-founders/',
   '2024-08-01', false, 22, null),

  ('Fabulous California',
   'Nonprofit of the Month: Youth Philanthropy Council',
   'https://fabulouscalifornia.com/philanthropy/nonprofit-of-the-month/nonprofit-of-the-month-youth-philanthropy-council/',
   '2024-08-01', false, 23, null),

  ('GB Magazine',
   'Cover Feature, May 2024',
   'https://gbsan.com/may-2024/',
   '2024-05-01', false, 24, null),

  ('SD Union-Tribune',
   'La Jolla Student Develops App to Help Streamline Finding a Medicare Plan',
   'https://www.sandiegouniontribune.com/2023/10/26/la-jolla-student-develops-app-to-help-streamline-finding-a-medicare-plan/',
   '2023-10-01', false, 25, null),

  ('GB San Diego',
   'Augustus Holm Feature',
   'https://gbsan.com/augustus-holm/',
   '2023-10-01', false, 26, null),

  ('Mission Fed / AFP',
   'National Philanthropy Day Award',
   'https://www.missionfed.com/news-stories/2020-national-philanthropy-day/',
   '2022-10-01', false, 27, null),

  ('Fox 5 San Diego',
   'St. Nick''s Kicks Shoes Given to Families in Need',
   'https://fox5sandiego.com/news/local-news/st-nicks-kicks-shoes-given-to-families-in-need-at-event/',
   '2021-12-01', false, 28, null),

  ('SD Union-Tribune',
   'A 50th Anniversary Fiesta',
   'https://www.sandiegouniontribune.com/2019/08/29/a-50th-anniversary-fiesta/',
   '2019-08-29', false, 29, null);


-- ================================================================
-- 4. CONTACT  (single row, id=1 enforced by CHECK constraint)
-- ================================================================
INSERT INTO contact (id, email, phone, linkedin) VALUES
  (1,
   'augustus.holm@checkrx.com',
   '+1 (858) 221-2772',
   'https://www.linkedin.com/in/augustus-holm/')
ON CONFLICT (id) DO UPDATE SET
  email    = EXCLUDED.email,
  phone    = EXCLUDED.phone,
  linkedin = EXCLUDED.linkedin;


-- ================================================================
-- 5. ABOUT  (single row, id=1 enforced by CHECK constraint)
-- ================================================================
INSERT INTO about (id, paragraphs, pullquote) VALUES
  (1,
   '[
     "I''m 20, born and raised in San Diego.",
     "I started in healthcare because I grew up in it. My grandparents and parents worked in it, and I saw what it was capable of when it ran right and what it cost people when it didn''t. The first time I really understood the problem I''m now spending my life on, I was 13, sitting at the kitchen table next to my grandmother — a Medicare agent — watching her work a 500-page prescription binder to figure out which plan was right for one of her clients. That image never left me.",
     "YPC came first, started at 13. It''s a youth-led nonprofit focused on healthcare and educational equity — originally just in San Diego, now globally. CheckRx came at 17. It focuses on seniors. Both start local and spread out from there, because everything I do has to be centered around one thing first: making San Diego a little bit better. I''ve lived here my whole life. If I''m going to live somewhere, I might as well try to leave it slightly better than I found it.",
     "Much more to come.",
     "When I''m not working I''m a stereotypical San Diegan. Burritos, surfing, hiking."
   ]'::jsonb,
   'The reason I do what I do is because I can, and it helps. I don''t need more reason than that.')
ON CONFLICT (id) DO UPDATE SET
  paragraphs = EXCLUDED.paragraphs,
  pullquote  = EXCLUDED.pullquote;
