# Categories
pregnancy = Category.find_by(title: "Pregnancy")
postpartum = Category.find_by(title: "Postpartum")
beyond = Category.find_by(title: "Beyond")
nutrition = Category.find_by(title: "Nutrition")
health_wellbeing = Category.find_by(title: "Health & Wellbeing")

# Admin
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Posts
post_1 = Post.find_or_initialize_by(title: "Breastfeeding Advice with Lactation Consultant")
post_1.category = postpartum
post_1.user = michelle
post_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/breastfeeding-advice-and-tips.jpg"),
  filename: "breastfeeding-advice-and-tips.jpg",
  content_type: "image/jpeg"
)
post_1.promoted = true
post_1.excerpt = "Whether you decide to breastfeed or bottle feed is a personal choice, and should be respected at all times. In the UK 81% of mums initiate breastfeeding, but less than 24% are exclusively breastfeeding at 6 weeks*. Common reasons for stopping breastfeeding earlier..."
post_1.body ='
<div class="mb-4">
  <p class="mb-2">Whether you decide to breastfeed or bottle feed is a personal choice, and should be respected at all times. In the UK 81% of mums initiate breastfeeding, but less than 24% are exclusively breastfeeding at 6 weeks*. Common reasons for stopping breastfeeding earlier than planned are: baby not gaining weight well; concerns about low milk supply and painful feeds. Finding empathic, experienced and knowledgeable support will often resolve all of these issues and more, making a huge difference to your breastfeeding outcomes. The information provided in this blog is from <a href="https://www.breastfeedingherts.com/" target="_blank" rel="noopener">Heidi Hembry</a> an International Board Certified Lactation Consultant and Mother Fit Expert. Heidi is an IBCLC with over 12 years experience supporting families to overcome breastfeeding difficulties.</p>
  <p class="mb-2">In this blog she aims to answer some of your questions and concerns, to make your breastfeeding journey as easy as possible. No two journeys are the same and you may benefit from individual, tailored support in your home.</p>
  <p class="mb-0">Breastfeeding is a skill that you and your baby learn together, and this can take time. It is natural, but not like breathing, more like learning to walk, and some of us will experience more challenges, take more time and need more support than others. Historically we would have learned to breastfeed by watching our mothers, aunts, cousins, sisters and friends as we grew up, giving us 2 decades of visual learning surrounded by confident women who understood how it all worked. In our modern lives we have lost all of this learning period and are now learning on the job, alone, with our first babies. Be gentle on yourself. Learning a new skill while stressed and sleep deprived is not always easy, and you wouldn’t expect to be an expert immediately in anything else that you were trying for the first time – and we would almost certainly seek guidance and support from someone more experienced.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Skin to Skin</h3>
  <p class="mb-2">Whether you have the birth you dreamed of, or all of the interventions that you had hoped to avoid, skin to skin as soon as possible is the most important thing you can do to help establish bonding and breastfeeding. In fact skin to skin is great for you and baby whether you are breast or bottle feeding. It performs an amazing array of functions for you both, and the more you have of it, the better.</p>
  <p class="fw-bold mb-2">The benefits of skin to skin contact:</p>
  <ul class="mb-2">
    <li>Regulation of your baby’s:</li>
      <ul>
        <li>Body temperature</li>
        <li>Breathing</li>
        <li>Heartbeat</li>
        <li>Blood glucose</li>
      </ul>
    <li>Inoculating baby with your natural microbiome**</li>
    <li>Reduction of stress for you and baby</li>
    <li>Increasing bonding</li>
    <li>Increasing breastfeeding instincts in mum and baby</li>
    <li>Stimulating oxytocin, one of the two main breastfeeding hormones</li>
    <li>It can also:</li>
      <ul>
        <li>Calm an upset baby and get them ready to feed</li>
        <li>Soothe a baby to sleep</li>
        <li>Rouse a sleepy baby for feeding</li>
      </ul>
  </ul>
  <p class="fst-italic mb-2">**your microbiome is the array or normal and beneficial bacteria, viruses and other microbiota that reside on and in your body, performing beneficial and essential roles as far reaching as aiding digestion, promoting healthy organ function as well as emotional and mental wellbeing</p>
  <p class="mb-2">Baby and you may be exhausted after your labour; skin to skin will help you both rest and recover and get ready for breastfeeding. It’s much easier for mum and baby to instigate frequent feeding from skin to skin, than with baby in a bedside crib, wrapped and separated away from mum. Though most hospitals support skin to skin immediately after birth, it remains an important aspect of breastfeeding and bonding in the following days and weeks. You can’t overdo skin to skin!</p>
  <p class="mb-0">Feeding your baby during this first golden hour of skin to skin after birth is ideal. They are born ready to learn and breastfeeding during this time can imprint excellent skills that are built on in subsequent feeds. Of course, there are exceptional circumstances when skin to skin can’t happen immediately, however, establishing this beautiful practice as soon as possible will be hugely beneficial to mum and baby, regardless of feeding choices.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How often should I breastfeed my baby?</h3>
  <p class="mb-2">All babies in their first few weeks of life should feed at LEAST every 3 hours (from the start of one feed to the start of the next) or a minimum of 8 times in 24hrs, though 10-14 is more normal initially. This can sound like a lot, but when you take into account how often we, as adults, feed and nourish ourselves across the day with meals, snacks, hot drinks & biscuits or sips of water, we can see that our babies really aren’t asking for anything different. Plus, they have been fed and hydrated 24/7 via the umbilical cord for around 9 months, so even an hour without food or drink can be a big change for them.</p>
  <p class="mb-0">Responsive feeding according to baby’s needs (often called demand feeding) is also vital for building your milk supply in the first couple of weeks to meet your baby’s growing needs.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">First 24 hours</h3>
  <p class="mb-0">Some babies are born raring to go and want to feed often, straight away. Go with this – it can be tiring, but it will send all the right signals to your body to begin making lots of milk. Other babies are born exhausted and overwhelmed and need lots of skin to skin time, resting and sleeping before being ready to feed. This is great for you both, however, you should aim to rouse and wake your baby at least every 3 hours to offer them an opportunity to feed, hand expressing your colostrum each time if they are not yet feeding well. Without intake of colostrum, baby’s energy levels and blood glucose levels can dip, making it even harder to wake for an effective feed next time. If your colostrum isn’t being taken regularly by either your baby or hand expressing, your body doesn’t get all the signals it needs to make a great milk supply</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Hand expression vs pumping</h3>
  <p class="mb-0">If baby is struggling to feed in the first few days, then hand expressing is an essential skill to learn. Your colostrum is thick and sticky, a bit like clear honey, and it is made in small volumes for the first 3-5 days until your mature milk begins to be made. Electric pumps are not very effective at removing this sticky substance, and even when they do, the small volumes are often impossible to get out of the comparatively huge bottle they are being pumped into. Hand expressing is a skill – it’s tricky at first, but the more you practice it the better you get. You should be able to get great support in your hospital to help you learn how to hand express, collect your colostrum in a small flat ended syringe, and safely feed it to your baby.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Breastfeeding patterns in the first few days</h3>
  <p class="mb-2">Frequent feeds continue and it is this frequency, along with effective feeding or expressing, that tells your body to make more and more milk. The more frequently your baby feeds, the more prolactin is stimulated. Prolactin is one of the essential hormones for milk supply and is produced at higher levels overnight. This is one of the reasons that frequent night feeds are especially important in the early weeks.</p>
  <p class="mb-0">If baby is not feeding well, although waiting a long time between feeds to allow your breasts to get full may <span class="fst-italic">feel</span> like a sensible step, it can be counterproductive. The longer your breasts are left with no milk removal, the less prolactin you stimulate. At the same time, a full breast left for a while will begin to send feedback to your body that baby doesn’t need the milk it has made, signalling a decline in production – the opposite of what you need in these first few weeks.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How do I know if feeding is going well?</h3>
  <p class="mb-2">What goes in has got to some out! So if you are seeing the right amount of wet and dirty nappies in the first few days and beyond, it’s a good indicator that baby is getting enough milk.</p>
  <ul class="list-unstyled mb-2">
    <li>Day 1 – one wet nappy and 1 black meconium stool</li>
    <li>Day 2 – two wet nappies and 2 dark stools</li>
    <li>Day 3 – three wet nappies and 2 transitional light brown/green stools</li>
    <li>Day 4 – four wet nappies and 2 yellow/orange/tan stools</li>
    <li>Day 5 and beyond – five wet nappies and 2 yellow/orange/tan stools</li>
  </ul>
  <p class="mb-2">If your baby is doing the above as a minimum (more is even better) then they are usually having an adequate intake of milk. After the first day, 12-24 hrs without a wet nappy, 24 hrs without a stool or black/dark stools beyond day 3, are a sign that baby is not getting quite enough milk and some changes are needed. You don’t immediately need to supplement with a bottle though. Here are some things you could look at improving/changing:</p>
  <ul class="mb-0">
    <li>Feed baby more often – every 2 hrs is not uncommon at first.</li>
    <li>Ensure baby takes both breasts at most feeds, not just one.</li>
    <li>Watch for swallows and gently compress your breasts or tickle baby to encourage more active feeding.</li>
    <li>Express after feeds if baby is too sleepy or not feeding well. This will improve your supply and give you some of your own milk for supplements if needed.</li>
    <li>Get support to change the latch if you are in pain.</li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">What if baby needs supplemental feeds?</h3>
  <p class="mb-2">If you and baby are struggling to establish effective breastfeeding, then supplementing your baby may be essential. The first choice of supplement is always your own expressed colostrum or milk if available. If you are unable to provide your milk, donor milk may be an option too, especially if your baby is in SCBU or NICU. First Infant Formula is a perfectly adequate choice if your own milk or donated milk are not available.</p>
  <p class="mb-2">Keep in mind that volumes are best kept small and frequent in the first few days (just like a newborn’s natural feeding patterns), especially if you are planning a return to breastfeeding. Baby tummies are very small at birth, and though they are designed to grow rapidly (see graphic below) larger supplements early on can grow their tummy at a more rapid pace than your natural milk production would do. This can lead to baby becoming frustrated with your supply and you to lose confidence… so more regular supplementation is introduced and the cycle continues. E.g a 30ml supplement on day one will grow baby’s 5ml tummy to 30ml, however you are still making 5-10ml of colostrum, which will now not fill baby’s larger capacity. In addition, the large volume will take a long time for baby to digest and so regular stimulation of the breast is less likely.</p>
  <p class="mb-2">10mls every 2 hours will give you and baby better opportunities to work on breastfeeding than 30ml every 3-4hrs.</p>
  <p class="mb-0">Supplements (expressed or formula) will help baby to be well nourished and gain weight, though they may do little to improve breastfeeding. If you are supplementing your baby and you plan to drop these top ups, it is essential that you express often and reach out for experienced support to help overcome the difficulties that you and/or baby are having.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Best way to hold a baby</h3>
  <p class="mb-0">Feeding can become stressful for you and baby if they are struggling to take your milk. Remember, skin to skin remains a great tool to calm and soothe baby, as well as increase their breastfeeding instincts.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How to get a deep and comfy latch</h3>
  <p class="mb-2">Remembering the acronym CHIN  can be very helpful to achieve a deep and comfy latch</p>
  <ul class="list-unstyled mb-0">
    <li class="mb-2"><span class="fw-bold">C</span>lose</li>
    <li class="mb-2"><span class="fw-bold">H</span>ead free</li>
    <li class="mb-2"><span class="fw-bold">I</span>n line</li>
    <li><span class="fw-bold">N</span>ipple to nose</li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Close</h3>
  <p class="mb-0">Holding your baby in close to you helps them to feel safe and secure, putting more focus on feeding. A baby feeling unsupported may be too worried and uncomfortable to feed well. Holding your baby close also means they can access the breast more easily – ideally your baby should be close enough to you that it feels as if they could be in skin to skin if clothes were removed.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Head Free</h3>
  <p class="mb-0">A free range of movement from the head allows baby to get a nice wide mouth for latching. Something as little as one finger on the back of the head is not advised. This stops baby from tilting their head backwards and leads to them arching their back. Make sure to add support by the back of the neck and shoulders. Newborns have very unstable heads and we want to completely avoid any flopping movement. As soon as we support the neck and shoulders, the head is stabilized. Gentle support around the neck and shoulders is all you need.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Inline</h3>
  <p class="mb-0">In line refers to baby’s ear, shoulder and hips all being aligned. A different way to think about this is that baby needs to be facing forwards in relation to their own body – just like you face forwards to take a drink, rather than turning your head over shoulder, or rotating at your waist. It’s just not comfy. If you notice baby is lying on their back, tuning over their shoulder to reach your breast, try rolling baby in so they are ‘tummy to mummy’ and nicely aligned for comfort and better latching.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Nose to nipple</h3>
  <p class="mb-2">Lining your nipple up to baby’s nose gives you both the best opportunity to get a deep latch. In this position, baby will now raise their head to reach towards your nipple with their mouth, lifting their chin from their chest in the process. This starting position also lines the bottom lip up with the areola, keeping the tongue far away from the nipple, nipple going in high in the mouth by the upper gum. This off-centred latch means that baby’s tongue works on your areola breast tissue to massage and extract milk, instead of compressing and pinching your nipple – which hurts!</p>
  <p class="mb-0">Remembering the acronym CHIN will be helpful. The chin itself is also important in breastfeeding. Touching baby’s chin to your breast often triggers a wide gaping reflex that will allow you to get a deep latch. And when baby is on and feeding with a deep latch, you will see their chin deeply embedded into your breast, with their nose slightly free. If instead, you are seeing baby’s nose touching your breast and a small space between baby’s chin and your breast, this can be an indicator that the latch needs a bit of adjustment.</p>
</section>
<section>
  <h3 class="h4 mb-2">What if breastfeeding hurts?</h3>
  <p class="mb-2">Pain is usually your body’s indication that something isn’t quite right, and the same is true with breastfeeding. Nipples don’t “toughen up”. Mum’s and babies learn together to get a better, comfier latch in the first few days. Even if a latch “looks good”, if you are in pain it’s usually not effective or sustainable for you or your baby. Pain is most often caused when baby’s tongue is too close to your nipple, compressing it against the hard palate and gums. For your baby, this is like trying to drink through a squashed straw – they have to work very hard, but they can’t get a lot of milk volume. Feeding this way can become exhausting for baby, or last for hours without them being able to get a full feed and settle well.</p>
  <p class="mb-0">For you, painful nipples means feeding is unpleasant and stressful, exacerbated if baby struggles to gain weight. If feeding is painful it is vitally important that you get support to change the way you and baby are latching. Midwives and Health Visitors can sometimes give excellent support, however, if they have not been able to help you make effective change, consider seeking out more experienced support from an IBCLC, qualified Breastfeeding Counsellor or Peer Supporter.</p>
</section>'
post_1.created_at = "18/01/2022"
post_1.save!

post_2 = Post.find_or_initialize_by(title: "C section scar pains: How to help c section scar heal")
post_2.category = postpartum
post_2.user = michelle
post_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/c-section-scar-pains.jpg"),
  filename: "c-section-scar-pains.jpg",
  content_type: "image/jpeg"
)
post_2.excerpt = "No woman should be suffering from c section scar pains long-term, whether it be 5, 10, 15 years on from the procedure. I find so many women just put up with the pain they may be going through and don't tend to do anything about it. Long term or chronic c section pain..."
post_2.body ='
<div class="mb-4">
  <p class="mb-2">No woman should be suffering from c section scar pains long-term, whether it be 5, 10, 15 years on from the procedure. I find so many women just put up with the pain they may be going through and don’t tend to do anything about it. Long term or chronic c section pain should not be part of everyday life. If you’re experiencing c section scar pains such as pulling, tightness, inflammation or even bladder leakage, there are plenty of methods we can do to help your c section recovery, please don’t suffer in silence!</p>
  <p class="mb-2">I recently spoke with <a href="https://hlp-therapy.co.uk/" target="_blank" rel="noopener">Hannah Poulton from HLP Therapy</a> who is a Women’s health practitioner and scar therapist who advised me a on range of tips and techniques to help relieve c section scar pains.</p>
  <p class="mb-2">We discuss all the best recovery methods including:</p>
  <ul class="mb-0">
    <li>c section scar healing cream</li>
    <li>massage techniques</li>
    <li>c section recovery belt</li>
  </ul>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Cesarean recovery</h3>
  <p class="mb-2">The right awareness and guidance must be given to those who have just had a c section procedure and to those who are still suffering years later. Look up pelvic healthy physios, women’s health physios and scar therapists in your local area to help guide you through this period. They offer much more insight than your local GP.</p>
  <p class="mb-0">For those who have just had their procedure, you come away from the hospital with your head in a blur. You have to look after a new baby while still in so much pain from the operation. You subsequently feel lost as to how to care for yourself. C-sections are the most performed surgical procedures in the world. It’s also the only surgery where you are given a human to care for afterwards, with little to no post-procedure advice.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">C section wound care tips</h3>
  <h4 class="h6 mb-2">Keep A Pillow</h4>
  <p class="mb-2">24 to 48 hours after your surgery, keep a pillow on you throughout the day to hold against your tummy to assist the incision whenever you move from a sitting to standing position and vice versa. Pillows work as a wonderful aid in helping protect your scare for when you need to cough, sneeze or laugh. Keep it compressed over your tummy to help support your recovery, not too tight, just firmly enough to where it’s comfortable.</p>
  <h4 class="h6 mb-2">Lay on your side</h4>
  <p class="mb-2">Whenever you lay down, make sure to lay on your side and not your back. This avoids recruiting your abdominal muscles for when you need to stand up. These muscles will be weak and need to be rested as much as possible. When you need to stand from a position of laying on your side, roll onto your weaker side, then swing your legs over the bed or sofa and push yourself up into a seated position.</p>
  <h4 class="h6 mb-2">Lifting your baby</h4>
  <p class="mb-2">If you have to lift your newborn at some point, get as close as your can to them, bring the baby towards you, keep your knees bent and maintain a compact, tight lift. By bending over, elongating your arms and flexing your spine, you place unwanted pressure on your lower back and this could set you back in your recovery.</p>
  <h4 class="h6 mb-2">Walking after c section: Slip-on shoes</h4>
  <p class="mb-2">When you start to walk again, whether in the hospital or at home, wear slip-ons, flip flops or sliders. This avoids having to bend down which subsequently recruits the use of the abdominal muscles. It also avoids having to tie laces for trainers and messing about putting them on. Plus, they are super comfy! Also, try shuffling instead of walking. Having to continuously lift your feet after surgery can be tough.</p>
  <h4 class="h6 mb-2">Take your time</h4>
  <p class="mb-2">When nature calls and you feel the urge to wee, take your time!
  A catheter would have been inserted during your operation to drain your bladder. When the doctors take it out, it can sometimes cause the bladder to go into a light spasm. So take your time when you wee. Shuffle over to the toilet, sit down and keep your knees above your hips. Be on your toes whilst you sit on the toilet. This helps to tilt your pelvis and opens up your back passage which allows you to go to the toilet much easier.</p>
  <h4 class="h6 mb-2">Deep breating</h4>
  <p class="mb-2">Take long, deep breaths. Completely fill your lungs with air and slowly exhale through your mouth. By taking time to slow down your breathing, you’ll connect with your scare and aid your c section wound care.</p>
  <h4 class="h6 mb-2">Drink plenty of water</h4>
  <p class="mb-2">Stay hydrated! You would have had an epidural in your back or some anaesthetic. It’s vital to supply your body with plenty of  fluid to detox your system post-op.</p>
  <h4 class="h6 mb-2">Avoid the stairs</h4>
  <p class="mb-2">By climbing stairs, it causes to over engage the pelvis where the incision has been made. Limit using the stairs as much as you can. Spend the majority of your recovery upstairs and ask someone for help to move everything downstairs when the time comes.</p>
  <h4 class="h6 mb-2">Do not disturb</h4>
  <p class="mb-2">Put a sign on the door asking couriers and postal workers to not ring/knock on the door. Avoid having to continuously move from a laying to a standing position as much as you can.</p>
  <p class="mb-0">These are all great tips to help with your recovery, especially when on your own.</p>
</section>
<section>
  <h3 class="h4 mb-2">How to look after c section scars</h3>
  <h4 class="h6 mb-2">2-4 weeks</h4>
  <p class="mb-2">Let as much air as possible get to the scar. Wear loose clothing with cotton breathable fabric. Gently massage around the scar but don’t massage over it. You don’t want to disturb your bodies natural healing response.</p>
  <h4 class="h6 mb-2">C section scar cream</h4>
  <p class="mb-2">For early stage c section scars, you can use <a href="https://hlp-therapy.co.uk/hlptherapyproducts" target="_blank" rel="noopener">NAQI Scar Repair Oil</a> from 2-4 weeks after surgery. The oil has both a rosehip oil and linoleic acid that help with the cellular production for healing the c section scar.</p>
  <h4 class="h6 mb-2">6-8 weeks</h4>
  <p class="mb-2">Around this period is when you can start to lightly massage the scar itself. By this time, you would have had your check-up by your GP. If given the green light, start to massage over the wound.</p>
  <h4 class="h6 mb-2">What type of scar do I have?</h4>
  <p class="mb-2">Dependent on the type of scar you have, you should use different techniques to help with the recovery. If you have a raised red scar that is a slug shape, use a variety of circular, slide and guide motions to help with the blood flow and recovery of the area. Perform this with skin optimising oil to nourish and deepen the tissue. If you have darker skin and have a keloid scar, you should do more of a compression massage.</p>
  <p class="mb-0">Try to implement all the above techniques to help alleviate pain relief after c section.</p>
</section>
'
post_2.slug = "c-section-scar-pains"
post_2.created_at = "12/01/2022"
post_2.save!

post_3 = Post.find_or_initialize_by(title: "First Trimester Yoga: Is Prenatal Yoga Safe?")
post_3.category = pregnancy
post_3.user = michelle
post_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/yoga-during-pregnancy.jpg"),
  filename: "yoga-during-pregnancy.jpg",
  content_type: "image/jpeg"
)
post_3.excerpt = "Performing yoga within the first trimester is completely safe and has a host of benefits to both yourself and your little one. The combination of it being a low impact, gentle exercise provides benefits for both your physical and mental health. Continue on to learn..."
post_3.body ='
<div class="mb-4">
  <p class="mb-2">Performing yoga within the first trimester is completely safe and has a host of benefits to both yourself and your little one. The combination of it being a low impact, gentle exercise provides benefits for both your physical and mental health. Continue on to learn about the many benefits of prenatal yoga and the best poses to perform within your first trimester.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Can I do yoga in first trimester?</h3>
  <p class="mb-0"><span class="fw-bold">Yes.</span> Performing yoga within the first trimester would be my go-to choice of exercise when looking to relieve stress, anxiety and build on flexibility. The majority of yoga poses will be safe to perform for women in their first trimester, however, caution must still be taken and there is a select few of exercises to avoid. Your body will be going through major changes in the early stages of pregnancy. It’s essential to listen out to any signals your body gives off indicating when it may be best to rest or perform a lighter yoga routine.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">What are the benefits of yoga in early pregnancy?</h3>
  <ul class="list-unstyled mb-0">
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Keeps you fit</span> – Yoga is a fantastic exercise for staying in shape and should be a part of everyone’s fitness routine, both men and women. This is even more specific to mums in the early stages of pregnancy. I would advise combining yoga with cardio exercises such as walking, light jogging etc to keep you toned and flexible.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Pain Relief</span> – Performing prenatal yoga is proven to help relieve pain in the lower back and joints. It can also help ease common pregnancy symptoms such as morning sickness, nausea and headaches. The combination of gentle movement and acupressure is a natural remedy to help cure morning sickness.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Prepares you for labour</span> – Yoga teaches you deep breathing techniques helping you to relax and ease stress. This is vital when going into labour and maintaining calm in stressful situations. Ujjayi is the technique that focuses on you slowly inhaling through your nose and filling your lungs with as much air as possible while expanding your belly. When this technique is mastered, you’ll notice your ability to stay calm.</p>
    </li>
    <li>
      <p class="mb-0"><span class="fw-bold">Protects your little one</span> – Studies have shown that performing yoga in early pregnancy and throughout each trimester lowers the risk of pregnancy complications and difficulties. This is due to the overall reduction of stress levels from maintaining a healthy lifestyle and yoga routine.</p>
    </li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">What yoga poses to avoid during pregnancy?</h3>
  <p class="mb-0">As a rule of thumb for pregnant women, I would suggest avoiding the majority of inversion poses. Regardless of which trimester stage you may be in. This is due to the emphasis on blood circulation being away from the uterus – the opposite of what we want. Inversion poses can also cause dizziness, especially for women in the later stages of their trimester. Poses that place pressure on the abdomen should also be avoided.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Pregnancy yoga: The best first trimester poses</h3>
  <h4 class="h5 mb-2">Easy pose</h4>
  <p class="mb-2">Find your most comfortable seated position, close your eyes and rest your hands on-top of one another. As you take a deep inhale, imagine you’re creating a special home inside your belly for your baby. Filled with lots of space and comfort. As you exhale “sigh”, draw your baby in towards yourself and imagine you’re providing them with a warm abdominal hug.</p>
  <h4 class="h5 mb-2">Cat/Cow</h4>
  <p class="mb-2">A fantastic exercise that allows to gently work the core and relieve stress. Try this exercise for 5-10 breaths or whatever you feel most comfortable with. It’s important not to over exaggerate the cow part of the pose as this may cause lower back pain in extreme circumstances. Focus on a steady neutral spine to help with mobility and finding your calm.</p>
  <h4 class="h5 mb-2">Kneeling triangle</h4>
  <p class="mb-2">This pose allows you to open your groin muscles without placing too much strain on the hamstrings. The triangle pose also supports your lower back and is a great exercise to help prepare your hips for labour. As your body changes through the trimesters, you will notice how your centre of gravity also changes. The triangle pose is a fantastic pose at helping your body to adapt to these physical changes and improve balance.</p>
  <h4 class="h5 mb-2">Deep squat into light twist</h4>
  <p class="mb-2">Lift your chest and maintain a comfortable breathing flow. A great pose for strengthening the legs and core and help prep you for labour. The squat pose also aids in hip mobility and improves all-round blood circulation.</p>
  <h4 class="h5 mb-0">Warrior Pose</h4>
  <p>A great pose for building joint strength and confidence. Remember to press your weight through the heels of your feet with a bend on the right knee. Envisage strength and power as you raise up through your arms and repeat on the other side.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">First trimester yoga tips</h3>
  <ol class="list-unstyled mb-0">
    <li class="mb-2">
      <p class="mb-0">1. <span class="fw-bold">Use props</span> – Always have cushions, chairs and a yoga ball available for added balance and stability whenever you feel certain poses are becoming too hard. Remember, yoga should be done at your own pace, there is no need to rush through any exercise/pose. Modify poses where you feel necessary and what makes them work for you.</p>
   </li>
    <li class="mb-2">
      <p class="mb-0">2. <span class="fw-bold">Avoid overstretching</span> – Any movement which is too vigorous or causes compression to the abdominals and uterus should be completely avoided. In particular, any form of backbends, inversions and closed twists.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0">3. <span class="fw-bold">Take your time</span> – Yoga is your time and space to completely focus on yourself. Take as long as you live to completely relax at the end of a routine/class. The final phase of a class is the perfect time for you to focus on your breathing and completely clear your mind of any stress.</p>
    </li>
    <li>
      <p class="mb-0">4. <span class="fw-bold">Trust your own instincts</span> – Performing prenatal yoga is to help you find your empowerment within your body. Listen to how your body is changing over time and begin to slightly modify exercises as your baby grows. By performing yoga regularly and building upon your strength, it will play a vital role further down the line when it’s time to give birth.</p>
    </li>
  </ol>
</section>
<section>
  <h3 class="h4 mb-2">The Mother Fit Pregnancy Yoga Series</h3>
  <p class="mb-0">Mother Fit is here to support you on your mental and physical journey throughout every stage of your pregnancy. With a holistic approach to motherhood, looking after your mind, body and soul, placing an emphasis on all-round wellbeing, with the end result being a happier, healthier and more active you. The Pregnancy Yoga series is designed to keep you and your baby safe during pregnancy. Watch the video below for your first trimester routine.</p>
</section>
'
post_3.slug = "first-trimester-yoga"
post_3.created_at = "16/12/2021"
post_3.save!

post_4 = Post.find_or_initialize_by(title: "Divarication Of Recti: What Is It & How To Recover")
post_4.category = postpartum
post_4.user = michelle
post_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/blogfeaturedimge.jpg"),
  filename: "blogfeaturedimge.jpg",
  content_type: "image/jpeg"
)
post_4.excerpt = "The 2 sides of the abdominal wall are connected in the middle on a line called the linea alba. We have 3 layers of abdominals: External obliques, internal obliques, and transverse abdominis. Divarication of the recti or more commonly known as diastasis recti, is the..."
post_4.body ='
<div class="mb-4">
  <p class="mb-2">The 2 sides of the abdominal wall are connected in the middle on a line called the linea alba. We have 3 layers of abdominals: External obliques, internal obliques, and transverse abdominis.</p>
  <p class="mb-0">Divarication of the recti or more commonly known as diastasis recti, is the thinning of the linea alba, the separation of the rectus abdominis muscle (6-pack muscles) that occurs during pregnancy, which is completely normal and only becomes a problem if the muscles do not return to their correct alignment 4-8 weeks post-childbirth. It can lead to chronic lower back pain due to poor spine protection from the core, urinary incontinence, constipation, pain during sex, and pelvic or hip pain.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">How To Know If I Have Diastasis Recti?</h3>
  <p class="mb-0">It is measured by checking the width and depth between the two rectus muscle bellies when barely lifting the head. Technically, anything over 2.5 finger widths. It should feel like a trampoline, the finger shouldn’t sink in. As well as feeling the divarication, also look for any bulging, doming, or coning of the rectus (linea alba). If you have any of these symptoms it may be that you are not generating the right pressure to protect the spine.  You should see a physiotherapist/women’s health specialist to verify.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How To Heal Diastasis Recti</h3>
  <p class="mb-2">In conjunction with a recovery plan put in place by either your physiotherapist or women’s physician, a daily exercise and deep breathing routine should be performed. Exercises that recruit the pelvic floor, good quality breathing and core muscles to help give both the pelvis and spine more stability.</p>
  <ol class="mb-0">
    <li>Fix breathing, which improves the natural function of the pelvic floor and core.</li>
    <li>Contract the pelvic floor on the exhale and learn to release on the inhale of breath.</li>
    <li>Work on posture and zone of alignment – These can do wonders for your recovery.</li>
  </ol>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">5 Facts About Diastasis Recti</h3>
  <p class="mb-2">From pelvic health physio and GGS Academy Curriculum Developer <a href="https://carriepagliano.com/" target="_blank" rel="noopener">Dr. Carrie Pagliano</a></p>
  <ol class="list-unstyled mb-0">
    <li class="mb-2">
      <h4 class="text-primary mb-2">1.</h4>
      <p class="mb-0">Almost 100% of pregnant women develop DR by trimester 3, and nearly all women have a diastastis of at least 16mm by weeks 35-39 of pregnancy.</p>
    </li>
    <li class="mb-2">
      <h4 class="text-primary mb-2">2.</h4>
      <p class="mb-0">DR has been historically defined by “the gap” or the distance between the two sides of the rectus abdominis. However, recent research shows closing the gap is not as important as regaining tension in the lib alba (the connective tissue that’s in between)</p>
    </li>
    <li class="mb-2">
      <h4 class="text-primary mb-2">3.</h4>
      <p class="mb-0">DR research is still limited compared to other concerns, but research is growing, and the quality is improving.</p>
    </li>
    <li class="mb-2">
      <h4 class="text-primary mb-2">4.</h4>
      <p class="mb-0">As research and evidence progress, there are fewer limitations on the types of exercise women with DR can do – meaning on average, women can do MORE than previously thought without worsening symptoms. Yay!</p>
    </li>
    <li>
      <h4 class="text-primary mb-2">5.</h4>
      <p class="mb-0">Every woman’s postpartum healing is different. Some women’s DR will “heal” with no intervention (assuming no additional stress or aggravation of the DR exists). More than half still have a wide separation 8 weeks post-delivery, and although some “recover” by 6 months, many haven’t “recovered” at 1 year.</p>
    </li>
  </ol>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">EXERCISE 1 – Pelvic Tilt</h3>
  <p class="mb-0">Performing pelvic tilts will help you become aware of your posture and <span class="fw-bold">help strengthen your pelvic floor, abdominal muscles</span>, and stretch the muscles in your lower back.  Focus on fixing your pelvic floor and then move on to your abdominals.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">EXERCISE 2 – Pelvic Tilt With Leg Lift</h3>
  <p class="mb-0">To advance the previous exercise, a leg lift is added to really get abdominal muscles firing! You should notice this as you bring the leg down. Again, this helps tremendously with overall recovery, posture and breathing.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">EXERCISE 3 – Side Plank Thigh Ball Squeeze</h3>
  <p class="mb-0">The side plank with ball squeeze allows multiple muscle groups to be trained at once and should not be performed unless you’ve mastered the basic of pelvic floor and core engagement.</p>
</section>
<section class="mb-4">
  <p class="h4 mb-2">EXERCISE 4 – Reverse Leg Slides</p>
  <p class="mb-0">I love this exercise because it really makes me focus on my mind to muscle connection.  Keeping good and even balance, pelvis neutral and adding movement can be challenging.</p>
</section>
<section>
  <p class="h4 mb-2">Diastasis Recti: Exercises to Avoid</p>
  <ul class="mb-2">
    <li>Sit-ups</li>
    <li>Crunches</li>
    <li>Burpees</li>
  </ul>
  <p class="mb-2">These exercises should be completely avoided due to the stress that is placed on the midline of the abdominals. By continuously performing sit-ups or any of these exercises over a long duration can worsen diastasis recti separation. They also focus on intraabdominal pressure which is a big no-no for mums with any form of diastasis recti.</p>
  <p class="mb-0">As a safe alternative, implement some gentle yoga poses such as cat-cow to help improve blood flow without placing too much stress on your lower back and midline.</p>
</section>
'
post_4.slug = "divarication-recti"
post_4.created_at = "23/11/2021"
post_4.save!

post_5 = Post.find_or_initialize_by(title: "Restore Your Core: Postpartum Exercise")
post_5.category = postpartum
post_5.user = michelle
post_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/rebuildyourcore2.jpg"),
  filename: "rebuildyourcore2.jpg",
  content_type: "image/jpeg"
)
post_5.excerpt = "Restore Your Core – A SAFE Return To ExerciseRestore Your Core – A SAFE Return To ExerciseIn my experience as a personal trainer and a mother of 2, both being 18 months apart, believe me when I say that endless reps of abdominal crunches and kegel exercises are not..."
post_5.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Restore Your Core – A SAFE Return To Exercise</h3>
  <p class="mb-2">In my experience as a personal trainer and a mother of 2, both being 18 months apart, believe me when I say that endless reps of abdominal crunches and kegel exercises are not needed to restore your core. Before we move into intense exercise, we must first focus on reawakening our body after the changes from pregnancy and childbirth.</p>
  <p class="mb-2">Your core is the foundation of your body, and as the saying goes <span class="fst-italic">“you shouldn’t build a house on a weak foundation“</span>. When looking to restore your core, we focus on the diaphragm, abdomen, lower back and the all-important pelvic floor.</p>
  <p class="mb-0">As postpartum mums, we may experience the occasional accidental leakage when we cough, sneeze or run. This can be an embarrassing accident when out in public, especially when running for the bus! It’s common for us not to raise our hand when we experience these intimate issues and accept that it’s the norm, however, this should not be the case.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">A Step By Step Guide To Restore Your Core</h3>
  <p class="mb-2">The Mother Fit <span class="fw-bold">Rebuild Your Core</span> program allows you to recover after childbirth, focussing on your Mind, Body & Soul.</p>
  <p class="mb-0">The priority is your overall well-being as a mother, not just your physical appearance.  Featuring progressive home workouts, nutritional and professional expert advice from a midwife and doula. You’ll have access to hundreds of wonderful recipes to nourish you through your recovery.</p>
</section>
<section>
  <h3 class="h4 mb-2">How To Restore Your Core Postpartum?</h3>
  <p class="mb-2">We must first prioritise our pelvic floor strength before moving forward into any intense abdominal work. You can start performing your pelvic floor exercises whenever you feel comfortable to do so post-childbirth.</p>
  <p class="mb-0">You may not feel up to it right now or it’s the last thing on your mind, but the overall benefits will help you so much in day to day life. It’s perfectly safe to start exercising your pelvic floor as soon as you can. You use the muscles every time you cough and sneeze so there’s no harm in you starting a solid exercise plan to strengthen the muscle, if you feel comfortable doing so.</p>
</section>
'
post_5.slug = "restore-your-core-postpartum-exercise"
post_5.created_at = "17/11/2021"
post_5.save!

post_6 = Post.find_or_initialize_by(title: "Postpartum Self Care Checklist")
post_6.category = postpartum
post_6.user = michelle
post_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/mum-exercising-with-baby.jpg"),
  filename: "mum-exercising-with-baby.jpg",
  content_type: "image/jpeg"
)
post_6.promoted = true
post_6.excerpt = "You've just had your baby, your body is sore, you're extremely tired and drained both emotionally and physically. All you can think about is caring for the new little beautiful life you've bought into the world. However, we must..."
post_6.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Postpartum Recovery</h3>
  <p class="mb-2">You’ve just had your baby, your body is sore, you’re extremely tired and drained both emotionally and physically. All you can think about is caring for the new little beautiful life you’ve bought into the world. However, we must not forget caring for another special person. YOU! Your body has gone through a life-changing experience and still needs to heal from 9 months of pregnancy. I can’t emphasise this enough, caring for you and your body is just as important as caring for your new baby. Be kind to yourself in the postpartum period, this will help the recovery stage and give you more time, patience and strength to care for your child.</p>
  <p class="mb-0">The postpartum phase can be different for mums, but one emotion we will all most likely experience is the overwhelming sensation of care and protection for our baby. With so much attention focused on caring for your new little family member begs the question….</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How Can I Care for Myself While Caring For my Baby?</h3>
  <p class="mb-2">Here are some of my top tips I found that helped me after having my two girls. Add these tips into a selfcare checklist as part of a routine to help you stay calm and content post childbirth.</p>
  <ol class="list-unstyled mb-0">
    <li class="mb-2">
      <h4 class="h5mb-2">1. Limit Visitors</h4>
      <p class="mb-0">You need your rest. The last thing you should be doing is constantly getting in and out of bed to open the door to endless friends and family members. I would give it a good few days before any visitors.</p>
    </li>
    <li class="mb-2">
      <h4 class="h5mb-2">2. Make Sure To Shower/Bath</h4>
      <p class="mb-0">Even if it’s just a quick shower, you’ll always feel better. You become so busy with being a mum that you neglect your own hygiene and will find yourself exhausted and say “I’ve not even had time to take a shower today”. This is a mental block. There is always time, even when it feels impossible. Treat yourself to some luxurious shower gel and focus on some “me” time. Plan out your day and pick a time as to when you can have a shower/bath. This one is a <span class="fw-bold">must</span> on your postpartum self care checklist.</p>
    </li>
    <li class="mb-2">
      <h4 class="h5mb-2">3. Eat Healthy</h4>
      <p class="mb-0">Lots of fruits, vegetables, and nuts. Get a solid serving of protein per meal, 20-30 grams worth. When you eat better, you feel better, it’s that simple. Your body needs protein to help recover and rebuild muscle tissue after childbirth. A nutritious postpartum eating plan helps promote milk production and supply your iron stores. See the video for 2 of my go-to postpartum meals I ate throughout my recovery. Watch the video to see 2 of my staple meals I ate throughout my own recovery.</p>
    </li>
    <li class="mb-2">
      <h4 class="h5mb-2">4. Accept Help</h4>
      <p class="mb-0">Don’t give the standard response of “Don’t be silly, I’m fine!” There’s no shame in accepting help from loved ones. Even if they are not doing things exactly as you would. Mums, especially new mums will go through periods of anxiety and worry at the fear of something happening to their baby. These feelings are then further amplified while expericing reduced sleep from a new baby. Accept help from your partner, friends and family, take time to reset and recharge.</p>
    </li>
    <li class="mb-2">
      <h4 class="h5mb-2">5. Be Kind To Yourself</h4>
      <p class="mb-0">Your social media timeline may be covered with celebs showing off their postpartum bodies and you question why your body hasn’t magically snapped back into shape like theirs. It’s completely normal to become frustrated with your body post childbirth, especially when comparing it with unrealistic, photoshopped, airbrushed celebs you see on Instagram. Focus on you and be realistic with your goals. Your body has gone through major changes over the past 9 months. Getting back to your pre-pregnant body takes its time, a long time. You should lose some weight naturally within the first 6-8 weeks postpartum. It’s then totally normal to have an extra 15lbs or so to lose in the following months of recovery. I also find it helps to not go on social media so much and try a little instagram detox if you find yourself constantly comparing to others. You and your baby are the only people to focus on right now.</p>
    </li>
    <li class="mb-2">
      <h4 class="h5mb-2">6. Postnatal Workout Plan</h4>
      <p class="mb-2">A 9 week workout plan can help you recover gently when you feel ready. This allows you to awaken the body before moving forward onto restoring some strength and cardiovascular fitness. You can then add more intensity towards the end of the 9 weeks. Your core went through an awful lot when you were pregnant and then gave birth. Core strengthening has so many benefits for postnatal mums.</p>
      <p class="mb-2">If you had a fairly straightforward birthing experience, you can start any form of gentle exercise when you feel ready to do so. This can include walking, gentle stretches, pelvic floor and core exercises, meditation and breathing. If you’re looking to add any form of high-impact exercise (running, weights, aerobics etc), then I would make this a part of your postpartum self care checklist <span class="fw-bold">after your 6-week postnatal check</span>.</p>
      <p class="mb-0">A postnatal workout plan can help with posture, breathing, aid with daily tasks like lifting heavy prams and car seats. A lot of workout plans are baby friendly so you can perform exercises with baby by your side. You can try the Mother Fit postnatal programs to ensure you exercise safely throughout your postpartum recovery. Meditation, stretching, breathing relaxation exercises and nutrition are all part of the program and can help with the recovery of both your physical and mental wellbeing.</p>
    </li>
    <li>
      <h4 class="h5mb-2">7. Go For Walks & Connect With Nature</h4>
      <p class="mb-0">I would advise to start with short walks and then build up the duration. This can help greatly with your postpartum recovery. Focus on your breathing, listen to nature and clear your mind. Walking has so many benefits including reducing stress, anxiety, and health issues. Walking can also be used as a great starting point to test yourself when wanting to get back into physical activity with very little risk of injury, you can always walk with your new little one which they love. You can always throw on a podcast, audiobook or some guided audio meditation to help you relax.</p>
    </li>
  </ol>
</section>
<section class="mb-4">
  <p class="fw-bold text-primary mb-0">The above tips should all be part of an overall routine to help with your recovery, either daily or when you can.</p>
</section>
<table class="tabel mb-2">
<thead class="border-2">
  <tr>
    <th class="h4">POSTPARTUM SELF CARE CHECKLIST</th>
  </tr>
</thead>
<tbody class="border-2">
  <tr class="mb-2">
    <td>Use the following list as a guide to promise yourself that you will make time to complete the points as part of a daily routine.</td>
  </tr>
  <tr>
    <td>
      <ol class="mb-2">
        <li><p class="fw-bold mb-0">Go for a walk – either with or without baby	&#128694;</p></li>
        <li><p class="fw-bold mb-0">Drink 2 to 3 cups of water per hour&#129380;</p></li>
        <li><p class="fw-bold mb-0">Talk to trusted friends and family</p></li>
        <li><p class="fw-bold mb-0">Go to the bathroom alone (or at least once alone if you cant more)</p></li>
        <li><p class="fw-bold mb-0">Don’t skip meals – eat breakfast, lunch and dinner and everything in between 	&#127869;</p></li>
        <li><p class="fw-bold mb-0">Cry if you feel like it</p></li>
        <li><p class="fw-bold mb-0">Meditate &#129496;</p></li>
        <li><p class="fw-bold mb-0">Exercise – even if its only 10 minutes, something is better than nothing</p></li>
        <li><p class="fw-bold mb-0">Eat a solid serving on fruits and veggies &#127820; &#127821; &#127822;</p></li>
        <li><p class="fw-bold mb-0">Have a shower or bath &#128703;</p></li>
        <li><p class="fw-bold mb-0">Wear fresh clothes &#128085;</p></li>
      </ol>
    </td>
  </tr>
</tbody>
</table>
<p class="mb-0">I hope the tips above can help you with your postpartum recovery. Implement them into a postpartum self care checklist to aid your overall wellbeing. Mother Fit Live has a team of experts, to guide you through the early days after your baby is born. I’m also here to keep you safe in exercise and advise you on nutrition. Let me give you what I never had with my pregnancies.</p>
'
post_6.created_at = "08/11/2021"
post_6.save!

post_7 = Post.find_or_initialize_by(title: "Core Exercises for Women That Every Mum Needs")
post_7.category = beyond
post_7.user = michelle
post_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/corestrenghtforwomen.jpg"),
  filename: "corestrenghtforwomen.jpg",
  content_type: "image/jpeg"
)
post_7.excerpt = "Core Exercises for Mums,Focus on your Pelvic Floor Core Exercises for Mums,Focus on your Pelvic Floor Before we begin, I must stress that ab and core workouts for women, especially mums, have to be approached with caution. Numerous changes happen to our body over our..."
post_7.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Core Exercises for Mums, Focus on your Pelvic Floor</h3>
  <p class="mb-0">Before we begin, I must stress that ab and core workouts for women, especially mums, have to be approached with caution. Numerous changes happen to our body over our lives and several factors must be taken into account. If you suffer from any pelvic floor or diastasis recti issues, I would first focus on building your pelvic floor muscles, before starting any sort of core workout routine.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Why’s it so Important for Women to Have a Strong Core</h3>
  <p class="mb-2">A strong core affects our overall health and helps add stability to our entire body. Women that suffer from a weak core will be more prone to everyday wear and tear from their basic routine. By embedding a consistent core routine into your current exercise regime, you’ll feel, breathe and look better, while also improving your posture and balance. It also makes moving around in general much easier!</p>
  <p class="mb-0">A toned midsection is obviously a wonderful perk from performing a regular core workout, but there are so many more overall benefits that are so much more important to us as women.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Help Improve Your Posture</h3>
  <p class="mb-0">It’s rare to find anyone with the absolute perfect posture, but people that are close to perfection will have a strong core. You want to place as little compression possible on your back to help support your spine. By performing core exercises and strengthen your midsection, it will aid you to stand tall and help align your spine and limbs.As humans, we were not made to sit down on a regular day-to-day basis, and the way we do this plays a huge factor in developing bad posture. By being hunched over a desk for long hours, our pelvic will gradually begin to tilt forward over time which then causes our spines to curve. We can correct this by building a strong core. A solid core exercise routine should work all the muscles of the torso which helps with even weight distribution throughout the body.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">My Top Exercises to Help Build a Strong Core with a Resistance Band</h3>
  <p class="mb-2">Adding a resistance band takes things to a whole new level when it comes to REBUILDING YOUR CORE! These are my favourite because they really do challenge you in mind and body! Let’s do these with a light resistance band for 30 seconds and repeat for 3 rounds.</p>
</section>
<section class="text-center mb-4">
  <h3 class="h4 mb-2">Core Workout For Women</h3>
  <section class="mb-4">
    <h4 class="h5 mb-2">Pallof to Knee, (right and left sides)</h4>
    <p class="mb-0">When you inhale, focus on expanding the chest and ribs while pushing down the diaphragm. Exhale and deflate ribs, bracing core & pelvic floor to perform the exercise.</p>
  </section>
  <section class="mb-4">
    <h4 class="h5 mb-2">Overhead Band March</h4>
    <p class="mb-0">This works the upper and lower ups, by keeping your ribs down and resisting the tension from the band pulling you backwards, you’re constantly working your core. Exhale with each “march”. The exhale will help support each march of your legs.</p>
  </section>
  <section class="mb-4">
    <h4 class="h5 mb-2">Hinge with Pull Overs</h4>
    <p class="mb-0">Focus on the exhale and bracing your core as you bring the band down towards you. Try to lift from your pelvic floor.</p>
  </section>
  <section>
    <h4 class="h5 mb-2">Squat With Row</h4>
    <p class="mb-0">Get into a slight squat position, not too deep, the focus is on our abs still, not our thighs. Inhale as your arms come up, big exhale as you pull the band down. Make sure to relax your stomach as you reach the band up, then as you pull the band down, lift from the pelvic floor on up into your core.</p>
  </section>
</section>
<section>
  <h3 class="h4 mb-2">How Regularly Should I Do my Core Exercises?</h3>
  <p class="mb-0">Start slowly with one workout per week, then gradually increase to challenge yourself. Start by doing the above exercises as part of a circuit or break it down in 2/3 sets per exercise. When you start to feel the circuit become much easier, go for another round and incorporate a few more exercises.</p>
</section>
'
post_7.slug = "core-exercises-for-women-that-every-mum-needs"
post_7.created_at = "20/10/2021"
post_7.save!

post_8 = Post.find_or_initialize_by(title: "Pelvic floor exercises in pregnancy & beyond")
post_8.category = health_wellbeing
post_8.user = michelle
post_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/pelvic-floor-exercises-header.jpg"),
  filename: "pelvic-floor-exercises-header.jpg",
  content_type: "image/jpeg"
)
post_8.excerpt = "Performing pelvic floor exercises in pregnancy can help prevent any mishaps such as accidental leakage when you feel the urge to cough or strain. Try to embed a solid pelvic floor exercise plan into your daily routine to help control any unfortunate accidents. Pelvic..."
post_8.body ='
<div class="mb-4">
  <p class="mb-0">Performing pelvic floor exercises in pregnancy can help prevent any mishaps such as accidental leakage when you feel the urge to cough or strain. Try to embed a solid pelvic floor exercise plan into your daily routine to help control any unfortunate accidents. Pelvic floor exercises are also beneficial for both pre & postnatal mums. Building a strong pelvic floor will help in easing the delivery of your baby during childbirth, speed up the recovery process postpartum, help urinary incontinence, treat pelvic organ prolapse, and make sex better too. Everyone can benefit from doing pelvic floor exercises.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">When can I start doing my pelvic floor exercises after childbirth?</h3>
  <p class="mb-2">You can start performing your pelvic floor exercises whenever you feel comfortable to do so post-childbirth. You may not feel up to it right now or it’s the last thing on your mind, but the overall benefits will help you so much in day to day life.</p>
  <p class="mb-2">It’s perfectly safe to start exercising your pelvic floor as soon as you can. You use the muscles every time you cough and sneeze so there’s no harm in you starting a solid exercise plan to strengthen the muscle, if you feel comfortable doing so.</p>
  <p class="mb-2">It can be hard to feel your pelvic floor at first, especially after going through the stresses of childbirth, which would have taken its toll on the nerves in that area as you pushed out your baby. But, even if you can’t feel too much happening, you’ll most definitely be doing your mind, body and soul some good long-term.</p>
  <p class="mb-0">If you’re only just starting out doing your exercises, then don’t worry, you’ll still reap endless benefits of strengthening the pelvic area if your start today, just really try and keep at it.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Where are the pelvic floor muscles?</h3>
  <p class="mb-0">So, to start off, we should be laying down on our back. Now, this is going to sound weird but trust me, I want you to imagine you really need a wee and squeeze your pelvic muscles IN as much as you can to hold. You can also do the same when trying to hold in any wind. Really concentrate on drawing these muscles inwards and as tight as possible. Doing so will give you an idea of where these muscles are located and why the pelvic floor muscles are there. Another good and more practical method is to try and stop your flow of wee the next time you’re on the toilet. Try to hold this for at least a couple of seconds. If you can do this successfully then you’re using the correct muscles!</p>
</section>
<section class="bg-light p-3 mb-4">
  <h3 class="h4 mb-2">Side Note</h3>
  <p class="mb-0">I would NOT recommend doing this method as part of a regular exercise routine as it could cause bladder issues. It’s main purpose is to help you identify where and what muscles you need to exercise regularly to get stronger.</p>
</section>
<section class="mb-4">
  #<h3 class="h4 mb-2">How to do pelvic floor exercises during pregnancy & beyond?</h3>
  <p class="mb-2">Before we begin, if you ever find yourself in any sort of pain when doing these exercises then make sure to stop, you should not feel any discomfort to yourself or your baby, but if you do ever come across any discomfort, stop immediately. Right, let’s workout…</p>
  <h4 class="h5 mb-2">Pelvic Bridge</h4>
  <p class="mb-2">Make sure to only perform this exercise if you are able to lie directly on your back without any discomfort.Lie on the back and bend the knees, with the feet flat on the floor about hip-width apart. Keep the arms by the sides with the palms facing down. Contract the buttocks and pelvic floor muscles, and lift the buttocks several inches off the ground. Relax the buttocks and pelvic floor muscles, and lower the buttocks to the ground.
  Repeat this up to 10 times per set. Rest, then perform up to two additional sets.</p>
  <h4 class="h5 mb-2">Beginners Cat-Cow</h4>
  <p class="mb-2">This is more of a basic approach to the exercise which focuses more on your breathing and the action of expanding your stomach on the inhale, to then tucking your tailbone under to really activate your pelvic floor as you exhale. When this movement is mastered, you can then move onto the more advanced cat-cow.</h1>
  <h4 class="h5 mb-2">Advanced Cat-Cow</h4>
  <p class="mb-0">A great exercise for not only your entire spine but also your pelvic floor. When we flex/round our spine, our tailbone tucks in thus shortening our pelvic floor muscles. Then when we extend and lengthen in the second part of the movement, our tailbone extends, which stretches our pelvic floor muscles. Really focus on the motion of the pelvic floor as you flow through the up and down motion of the movement, but also try to connect your breathing. I know it sounds like a complex exercise, but it’s such a calming, mental release when you have it mastered, while also strengthen that all-important pelvic floor.</p>
</section>
<section class="mb-4">
  <h4 class="h5 mb-2">Glute Bridge with Squeeze</h4>
  <p class="mb-0">You can up the demand by adding some “squeezing” with a pillow, pad or ball. This will help you work your upper abs and allowing you to connect to the entire abdominal system. The act of pressing is going to help you connect with that deep core while doing a “task.” It might seem simple, but remember we are re-training our brain, and when we start adding some layers to our task at-hand, we are asking a little more of our brain. The ball gives an excellent and subtle push back, firing up your deep abdominals. Be sure not to bear down when you push, but rather lift the pelvic floor as you push into the ball.</p>
</section>
<section class="mb-4">
  <h4 class="h5 mb-2">Kneeling Band Pull Apart</h4>
  <p class="mb-2">Coming up off the floor and using a pulling technique will once again engage the upper abs and hit the delts too, challenging you to keep working harder. Once again, Be sure not to bear down when you pull, but rather lift the pelvic floor as you pull the resistance band.</p>
  <p class="mb-0">Ensure you exercise <span class="fw-bold">safely</span> through pregnancy and beyond by joining the Mother Fit Pre & Postnatal Programs.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How regularly should I do my pelvic floor exercises?</h3>
  <p class="mb-0">If you’re having any leaking mishaps, then I would recommend doing a set from one of the above pelvic floor exercises at least three times a day. Try to stick to doing this every day over a 3-4 month period. The pelvic floor is a stubborn muscle to strengthen, so the overall process does take its time. When you have overcome any leaking issues, I would then suggest doing a comfortable set of pelvic floor muscle exercises once a day, every day. Nothing too challenging, just make sure you’re keeping the muscle as strong as you can, just make sure to stay on top of it and not to stop completely. Otherwise, whenever you feel a bad sneeze or cough coming on, your symptoms will come back.</p>
</section>
<section>
  <h3 class="h4 mb-2">When should I receive help from a healthcare professional with my pelvic floor?</h3>
  <p class="mb-2">If you’re still having trouble with engaging your pelvic floor or experiencing any sort of issues after your postnatal check I would highly advise seeking attention from a healthcare professional.</p>
  <p class="mb-2">Issues Include:</p>
  <ul class="mb-2">
    <li>Pain in the perineum</li>
    <li>Issues with defecating</li>
    <li>Leaking urine</li>
    <li>Continuously feeling downbeat and sullen</li>
  </ul>
  <p class="mb-2">Seeking help from a women’s health physiotherapist will be able to give you a better understanding of your pelvic floor by them performing a thorough assessment of the area, while guiding you on how to perform the above exercises properly from an in-person tutorial and help treat any other problems.</p>
  <p class="mb-0">Work the above exercises into a regular, daily exercise regime and let me know how you get on. For those of you who are pregnant, I would highly recommend <a href="https://latched.uk/" target="_blank" rel="noopener">Latched Clothing</a> , activewear designed for pregnant women – feel free to use code MOTHERFIT for a discount.</p>
</section>
'
post_8.slug = "pelvic-floor-exercises-in-pregnancy-postnatal"
post_8.created_at = "20/10/2021"
post_8.save!

post_9 = Post.find_or_initialize_by(title: "World Breastfeeding Week: 👶 Supporting Mums🤱")
post_9.category = postpartum
post_9.user = michelle
post_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/world-breastfeeding-week.jpg"),
  filename: "world-breastfeeding-week.jpg",
  content_type: "image/jpeg"
)

post_9.excerpt = "What a wonderful campaign world breastfeeding week is! We must celebrate the lovely mothers who choose to breastfeed. It’s crucial that new mothers receive support from their partners, friends and wider family when breastfeeding. Talking from my own experience, I..."
post_9.body ='
<div class="mb-4">
  <p class="mb-2">What a wonderful campaign world breastfeeding week is! We must celebrate the lovely mothers who choose to breastfeed. It’s crucial that new mothers receive support from their partners, friends and wider family when breastfeeding.</p>
  <p class="mb-2">Talking from my own experience, I really struggled when breastfeeding both my daughters. However, I did perceive for as long as I could but I was just not producing enough milk to keep up with their demand. After my experience, I connected with <a href="https://www.breastfeedingherts.com/" taregt="_blank" rel="noopener">Breastfeeding Herts</a> who truly opened my eyes to the level of support I could have received. This changed my view and understanding of breastfeeding completely!⁣</p>
  <p class="mb-2">It’s vital that a mother knows she has a safety net from her family. The reassurance plays an important role in the breastfeeding journey and will strengthen the bond between mum and baby.</p>
  <p class="mb-2"><a href=“https://www.who.int/health-topics/breastfeeding#tab=tab_1” taregt=“_blank” rel=“noopener”>WHO</a> acknowledges that breastfeeding is a natural process and outline the multiple benefits.</p>
  <p class="mb-2">Benefits Include</p>
  <ul class="mb-2">
    <li>Health</li>
    <li>Nutritional</li>
    <li>Emotional support to both child and mother</li>
  </ul>
  <p class="mb-2">World breastfeeding week is an opportunity for mothers, partners, families and healthcare professionals to share what works to support breastfeeding.</p>
  <p class="mb-2">Breastfeeding is not always this beautiful journey between mum and newborn. It can be painful and extremely draining. Any form of pain is usually down to sore nipples. Normally a few days post-childbirth when your milk comes in. The problem will also get worse when your baby starts to feed every 2 hours, which can lead to blistered nipples.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Solutions for Breastfeeding Pain:</h3>
  <ul class="mb-0">
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Incorrect Latching</span> – One of the most common reasons for feeding pain can be down to your baby not correctly latching. The next time your baby is wanting to feed, make sure to have the lower portion of your nipple in babies mouth. The roof of your babies mouth should be pressed against the tip of your nipple. You should feel your babies tongue gently support underneath.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Different positions</span> – Try a variety of breastfeeding positions if your baby is struggling to latch in the standard seated position. Try completely laying back or perhaps a cross-cradle hold.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">Get professional advice</span> – A lactation consultant will provide you with the correct guidance to assure your baby’s mouth and body positioning are at the perfect alignment. They will be able to solve any latching issues while being able to determine if there are any physical problems inside your baby’s mouth. A lot of lactation consultants will also be able to provide a plan for you to follow to help overcome any further issues.</p>
    </li>
    <li>
      <p class="mb-0"><span class="fw-bold">Protect those nips ladies!</span> – By wearing breast shields underneath your bra, you’ll be able to stop any rubbing that may occur that will do further damage.</p>
    </li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Family & Friends: How To Support Mum</h3>
  <p class="mb-2">As well as being physically demanding on your body, breastfeeding also takes its toll emotionally. Here are some methods and tips that hubby, partner and family can do to help aid in your breastfeeding journey:</p>
  <ul class="mb-2">
    <li>Provide emotional support and practical help. Whether that be doing the food shop, cleaning the house or cooking. Anything we can do to help mum get her rest.</li>
    <li>Listen and be supportive. Boost mum’s confidence in the breastfeeding experience.</li>
    <li>Bring mum her snacks. A general recommendation for new mums is that they eat an extra 500kcals a day than they did before pregnancy. Make sure it’s packed with healthy nutrients and something she can eat with one hand!</li>
    <li>If the little one needs a nappy change, queue your time to shine!</li>
    <li>Learn and research the process of breastfeeding. Become a breastfeeding mastermind during mums pregnancy by studying up on the pump manual, how to help ease nipple pain and everything breastfeeding related. Anything you can do to help relieve any stress from mums life.</li>
  </ul>
  <p class="mb-0">As well as celebrating mothers who breastfeed, we need to also acknowledge those who struggle to produce milk and the emotional burden this can bring. A member of the Mother Fit Community has been kind enough to share her struggles. I hope the experiences shared can help other women when dealing with any feeding issues and the emotional strain it can take, you’re not alone.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Mother Fit Community Member: My Breastfeeding Story</h3>
  <blockquote class="fst-italic mb-0">
    <p class="mb-2">During my first pregnancy with my beautiful daughter, I knew there was only one way I was going and that was breastfed and cotton nappies. I read everything there was and took all the advice given. Heidi was born a healthy 7lb 14oz on a Sunday and latched on beautifully. The midwives were so pleased they got to tick the box for the Unicef award they wanted that another baby had left the hospital on the breast. There was a routine very quickly. However, I hadn’t felt a "let down" experience as I had read in all the books. I mentioned this to the midwife who said "don’t worry look how settled and calm she is" I also asked the health care assistant who visited if I should maybe give her a little water as her lips were dry. I was told "absolutely not. Look how settled she is."</p>
    <p class="mb-2">On Friday morning, she woke with a sunken head. I called the midwife and she was there in half an hour. She popped her on the scales and my baby now weighed 6lb 2oz without saying anything to us the midwife called A&E and said there was a baby on the way with severe dehydration. She was rushed straight to neonatal and we watched staff battle to stabilise my 6-day old baby. The consultant told me that she had turned the corner and now slowly had to rehydrate her to prevent her brain from swelling. She was in there for four days and once being fed, she started to thrive. I was put on machines etc to help but no milk came.</p>
    <p class="mb-2">As a mother, I had failed at the most natural thing you do and that stayed with me for a very long time. Sadly this is more common than they let on.</p>
    <p class="mb-2">My firstborn, now almost 17, is a beautiful, healthy, slim, strong clever girl. She has never had asthma, ear conditions, eczema and all the other things they tell you breastfeeding prevent. And we have an incredible bond!!</p>
    <p class="mb-2">When I was feeding her with a bottle I didn’t have a hand free to look at my phone like you see people doing. The whole time I looked into her eyes. It was a time we had to sit down together and couldn’t do anything else as I needed both hands. I saw a lady the other day in Sainsbury’s with a newborn latched on as she walked around doing her shopping! Good for her some might say. That is not bonding in my opinion.</p>
    <p class="mb-2">I have now made my peace and know I wasn’t a failure. Fed is best.</p>
    <p class="mb-2">When I had my second 8 years later, I tried again, my experience didn’t put me off but I mixed. Did have a let down this time but didn’t have the confidence to carry on and I do not regret it.</p>
    <p class="mb-2">I had two beautiful natural labours with no pain relief. I hypnobirthed Lara in water. I would never dream of saying that natural birth is better than a section or not supporting a mum who couldn’t deliver naturally so why is there the need to make mums who can’t or don’t BF feel less of a mum.</p>
    <p class="mb-2">It’s a beautiful thing if you can but makes you no less of a mum if you can’t.</p>
    <p class="mb-0">I absolutely support this campaign and I do believe there is more help out there now. I just wish there was more support and understanding for the mums that can’t.</p>
  </blockquote>
</section>
<section>
  <h3 class="h4 mb-2">Share Your World Breastfeeding Week Story</h3>
  <p class="mb-2">I feel so emotionally invested in this celebration of breastfeeding journeys and I hope many of you will join me in raising awareness of World breastfeeding week by sharing your breastfeeding story. Feel free to join the Mother Fit community and <a href="https://www.facebook.com/groups/840584283018084/" target="_blank" rel="noopener">share your story here</a>.</p>
  <p class="mb-0">Love Michelle x</p>
<section>
'
post_9.slug = "world-breastfeeding-week"
post_9.created_at = "11/08/2021"
post_9.save!

post_10 = Post.find_or_initialize_by(title: "The Importance of Sports for Children")
post_10.category = beyond
post_10.user = michelle
post_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/get-kids-into-sport.jpg"),
  filename: "get-kids-into-sport.jpg",
  content_type: "image/jpeg"
)
post_10.promoted = true
post_10.excerpt = "Sports teach children valuable life lessons while providing a foundation to build physical and mental health The start of the long-overdue Olympic Games in Tokyo has given my family and me Olympics fever. After watching the women’s weight lifting finals together and..."
post_10.body = '
<section class="mb-4">
  <h3 class="h4 mb-2">Sports teach children valuable life lessons while providing a foundation to build physical and mental health</h3>
  <p class="mb-2">The start of the long-overdue Olympic Games in Tokyo has given my family and me Olympics fever. After watching the women’s weight lifting finals together and seeing how amazing the female athletes are at such young ages, further cemented how incredible Olympians are as role models for our children. A special mention to young Sky Brown, 13, Olympic medalist! What an amazing young woman. To perform at the highest stage with the world watching! A true inspiration to all young daughters. Seeing so many young athletes in a wide variety of sports at the very top level has reminded me of the importance of sports for children.</p>
  <p class="mb-2">I can’t stress enough the importance of taking part in physical activity, no matter the age or activity. Remember, age is nothing but a number 😉.</p>
  <p class="mb-2">Don’t worry if your child isn’t a natural athlete. The simplicity of just having them involved in a sport is a great start to promoting exercise and to get them moving!</p>
  <p class="mb-0">Knowing how to get kids into sport can lay the foundations of a lifetime of meaningful physical activity and a healthy lifestyle. In addition, there are so many positive human traits sport can have on child development. Traits including increased confidence, building leadership qualities and new friendships, to name a few.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">So, how can we get our little ones into a sport they will grow to love?</h3>
  <h3 class="h4 mb-2">Get Kids into Sports EARLY</h3>
  <p class="mb-2">As parents, we must first lead by example when it comes to knowing how to get kids into sport and focus on encouraging a variety of different sporting disciplines, instead of forcing them onto our children. We can encourage sports from the early stages by doing them together and gradually incorporate exercise into their life by keeping it fun before the competitive edge starts to kick in.</p>
  <p class="mb-0">The famous saying <span class="fw-bold">‘children’s brains are like sponges’</span> has never been truer in the scenario of them learning through our actions when it comes to sport and physical health. Showing them how sports can create such a positive impact on their life in a variety of ways will birth a new feeling of motivation. Therefore, giving them the kick they might need to partake in a team-based sport.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Why Team Sports?</h3>
  <p class="mb-2">Your child’s mental and physical wellbeing are positively affected by team sports. The confidence they build will impact their self-image and mentality as they grow into their teenage years. Team sports will also allow them to feel pride and develop new skills while dealing with the concept of losing.</p>
  <h4 class="h5 mb-2">Developing Moral Principles</h4>
  <p class="mb-2">Sportsmanship and moral ethics such as <span class="fw-bold">fairness, integrity, responsibility, and respect</span> are key factors within any sport. Children must follow rules and guidelines within their respective sport which then builds an understanding of not simply to win, but to pursue victory with pride by giving their best effort.</p>
  <h4 class="h5 mb-2">Friendships & Diversity</h4>
  <p class="mb-2">Children will create friendships from sport that remain intact both on and off the field which often last for many years. Friendships built with teammates from a range of different backgrounds helps children understand diversity and how sport brings people together regardless of nationality, religion or skin colour.</p>
  <h4 class="h5 mb-2">A Setting to Learn</h4>
  <p class="mb-2">Numerous studies have shown that students which are part of a sporting background tend to perform better at school. The boost in confidence from performing in front of peers, crowds and coaches regularly can transition across into the classroom. Children will be more confident to answer questions in front of the class, raise their hand and answer questions with authority.</p>
  <h4 class="h5 mb-2">Keep it fun at first</h4>
  <p class="mb-0">The concept of sport from the early years of our children’s life should be a fun one. Participation should be thoroughly enjoyable and never seen as a chore. Children first start to develop this fun perspective by watching us play them, with a smile and with humour.</p>
</section>
<section>
  <h3 class="h4 mb-2">Some Great Ways to Make Sport More fun:</h3>
  <h4 class="h5 mb-2">Stay Positive</h4>
  <p class="mb-2">Always keep a positive mindset when it comes to sport and let no signs of disappointment show. Smile frequently and always stay upbeat. We don’t want to put any unwanted pressure on our children as this has the potential to leave a negative memory for a very long time. No child wants to ever disappoint their parents, so we must always talk about sports from an enjoyable point of view. Small positive comments create a positive association towards sport and how the field/track/court is a place of relief to express one’s self.</p>
  <h4 class="h5 mb-2">Get Creative</h4>
  <p class="mb-2">If your son or daughter shows an interest in simply kicking a ball, create a mini-game out of it by measuring the distance of each kick. Constantly reassuring how well they are doing. Or perhaps something as simple as throwing beanbags into a hoop. Then slowly progress that into a ball.
  Anything you can do that helps strengthen the perception of sport being something to look forward to and how the end goal is to enjoy themselves as much as they can.</p>
  <h4 class="h5 mb-2">Do sports together or as a family</h4>
  <p class="mb-2">The memory of passing a football between mum or dad is one we should all grow up with. Along with teaching our little ones how to ride a bike, being with them during the times they fall off, reassuring it’s part of the process, to the day they no longer need stabilisers! The underlying benefits of these wonderful moments together go so deep for both our child’s memory and their perception of exercise. I would highly recommend investing in a basketball hoop for your little ones to understand the basics of aiming, throwing and making a shot. Of course, your child may not show any signs of interest in your favourite sport, which is totally fine. Introduce them to a variety of different options and see if there is one, in particular, they gravitate towards. The end goal however is for it to always be fun.</p>
  <p class="mb-2">Check out the <a href="https://www.nhs.uk/live-well/exercise/physical-activity-guidelines-children-and-young-people/" target="_blank" rel="noopener">Physical Activity Guidelines</a> for young people from the NHS to gauge a guide to see how much physical activity your children should be doing to stay fit and healthy.</p>
  <p class="mb-2">I truly believe that there is no other alternative that offers children the opportunity to build so many wonderful character traits that can rival sport. The importance of sports for children’s ability to truly express themselves while developing bonds with parents, siblings and create long-lasting friendships is a constant reminder as to why it should be a staple in our lives
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_10.slug = "the-importance-of-sports-for-children"
post_10.created_at = "02/08/2021"
post_10.save!

# post_11 = Post.find_or_initialize_by(title: "Emotional Well Being in Children: How To Nurture It")
# post_11.category = postpartum
# post_11.user = michelle
# post_11.featured_image.attach(
#   io: File.open("app/assets/images/seeds/posts/mental-well-being-children.jpg"),
#   filename: "mental-well-being-children.jpg",
#   content_type: "image/jpeg"
# )
# post_11.excerpt = "As parents, we should start nurturing the emotional well being in children right from the start. A child’s mental health and emotional wellbeing is just as important, if not more so than their physical well being. Paying attention to a child’s mental health from early..."
# post_11.body ='
#<div class="mb-4">
  #<p class="mb-2">As parents, we should start nurturing the emotional well being in children right from the start. A child’s mental health and emotional wellbeing is just as important, if not more so than their physical well being. Paying attention to a child’s mental health from early lays a foundation of resilience to be able to handle the many obstacles life may throw at them, therefore, helping them to grow into strong and healthy adults.</p>
  #<p class="mb-0">When we look at a child’s emotional wellbeing, we must focus on the brain and its development. The stages it goes through and how can we, as parents, look at our children and say "okay, this is what they are going through and this is how I should be responding"</p>
#</div>
#<section class="mb-4">
  #<h3 class="h4 mb-2">The Attachment Theory</h3>
  #<p class="mb-0">A psychological theory that tells us the secure attachments that we develop in our very early years, will help us to seek out future opportunities, secure emotional wellbeing and provide confidence, independence and growth. This is the aim when raising children. We want them to have higher self-esteem while being confident in their abilities. Having secure attachments early is going to provide them with these human qualities as they grow.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">The Early Stages of Developmet</h3>
  #<p class="mb-0">When we are born, we all have the same innate emotional needs. We also all have the same chemicals flowing through us. They are all essential, however, some of them are good, and some are not so good. But all are essential.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Oxytocin</h3>
  #<p class="mb-0">Oxytocin is our bonding chemical that allows humans to unite. Humans are built to be around others and survive in groups. Oxytocin is what gives us empathy, trust and love. Children need to be bonded with to help produce this chemical and provide them with a feeling of love and safety.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Cortisol – The Stress Hormone</h3>
  #<p class="mb-0">Cortisol is produced when we perceive a threat. Babies will perceive threats regularly, and this is their form of coping mechanism. When a threat happens, their bodies will flood with cortisol which then produces babies to cry and become hot. This is to keep them safe. As humans have developed over time means we do not need it as much. However, some people will have more than others. There is scientific proof that the more cortisol we have, the longer-term issues we may face. This is not meant to sound scary and there will be no immediate problems in children if they have cortisol and face threat, it is a normal process.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">What do Babies see as a Threat?</h3>
  #<p class="mb-2">Being too hot, too cold hungry, being alone and tired. Any of these will fire off a physiological reaction in children. There is no problem with this happening and is very likely to occur. But as parents, we can help their emotional wellbeing long term by reducing the stress of these experiences quickly. Connecting with our children during times they are experiencing physiological threats is going to do us both the world of good. To build a secure connection and attachment between parent and baby, you need to be responding to their fight and difficult times in an appropriate manner to secure the "attachment".</p>
  #<p class="mb-2">When looking at older children, ones who feel supported through emotional meltdowns or difficulties will have higher self-esteem, more confidence and an inbuilt level of trust. They will also feel safe to explore things in the world and don’t worry. All these emotional needs are being met and this comes back to the connection and attachment we provide during stressful times.</p>
  #<h3 class="h4 mb-2">How to Respond</h3>
  #<p class="mb-0">When we think about it as adults, if you have a problem and you turn to a friend and their response is "what are you crying about that for?" The chance of connection is gone. When in comparison with a friend who supports you and says "That must be really hard for you, are you okay?" the response is very different and exactly what we need to do with our children, even in the very early years of life. Responding to their needs when they feel a threat is when we must focus and provide comfort and protection. There’s no need to think "oh if I keep picking them up and spoiling them they are going to depend on me" this isn’t the case. Attend to your babies needs as much as you want. In doing so you’re responding to your child’s emotional needs which is vital.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">What Happens to Our Children When we Respond During Difficult Times?</h3>
  #<p class="mb-0">When children feel threatened and produce high levels of cortisol, we must respond appropriately with touch, connection and care. We then provide them with oxytocin, which reduces cortisol and calms them down. A simple way of looking at it is "my child is feeling threat and producing cortisol, I’m going to care for them which produces oxytocin and then bonds us"</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Early Year Difficulties</h3>
  #<p class="mb-0">In situations that are very hard in the first year of life, sleep can be difficult for some babies. You will probably be flooded with all different advice about do’s and dont’s on picking them up etc, but sometimes children are just moaning and having a whinge. However, I’m here to inform you on the intense crying when babies are calling out for a caregiver. These are the times when we need to be thinking "yep, they need me" and not to worry about all the advice from others.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">How can we Secure the Emotional Well Being in Children</h3>
  #<ol class="mb-2">
    #<li>Independence</li>
    #<li>Confidence</li>
    #<li>High self-esteem</li>
  #</ol>
  #<p class="mb-2">We can help develop these emotional qualities by providing our children with the opportunity to feel the following:</p>
  #<ul class="list-unstyled mb-2">
    #<li class="mb-4">
      #<h4 class="h5 mb-2">Control</h4>
      #<p class="mb-2">The feeling of control allows children to build confidence. Not control over us, but control when in freedom, autonomy and their day to day living. This is however all about balance. Too much control can lead to power struggles when children do start to become older. A simple way to help children feel more in control is by allowing them to partake in decision-making by providing them with simple choices.</p>
    #</li>
    #<li class="mb-2">
      #<h4 class="h5 mb-2">Attention</h4>
      #<p class="mb-0">1 to 1 undistracted attention. Between 0 to 1 years there needs to be a lot of “serve and return”. If your baby babbles (serve), you babble back (return). This is mirroring and really important to child development. Always make sure to be doing this as much as possible. This further builds connection and trust from a young age as these one to one moments can become less consistent as a child grows older.</p>
    #</li>
    #<li class="mb-2">
      #<h4 class="h5 mb-2">Belonging</h4>
      #<p class="mb-0">This relates back to being part of a group setting and the need to bond with humans. We are more likely to survive if we are part of a safe group. Children need to belong and know they are safe. This is especially important at 1 year old to toddler years. If there are other siblings which can cause difficulties for the opportunity for one to one time, you might feel your child’s sense of belonging become fragile. Just always make sure your child is heard and the feeling of a family unit is in place. Even if there is only 2 of you. Whatever connection children can build is vitally important in laying the foundation for strong mental health and wellbeing.</p>
    #</li>
    #<li class="mb-2">
      #<h4 class="h5 mb-2">Capability</h4>
      #<p class="mb-0">The need to feel capable means children learn to understand that they are okay when going into new environments. They can manage it. Because as we get older and think we may not be capable, then we are likely to avoid situations or find them difficult. So the feeling and sense of being capable is a really important emotional need we must provide.</p>
    #</li>
    #<li>
      #<h4 class="h5 mb-2">Significance</h4>
      #<p class="mb-0">We all need to feel this as humans. We must ask our children for their opinions and allow them to be heard. We must allow them to have ideas, opinions and be part of decision making. This doesn’t mean we must give them all the decisions, but they need to be part of some.</p>
    #</li>
  #</ul>
#</section>
#<p class="mb-2">These are just a few methods we can use in the early years of life for our children. Please visit <a href="https://www.instagram.com/supporting_steps/?hl=en" target="_blank" rel="noopener">@supporting_steps</a> for more in-depth advice for later years and overall help towards the emotional well being in children.</p>
#<p class="mb-0">Love Michelle x</p>
#'
# post_11.created_at = "07/07/2021"
# post_11.save!

post_12 = Post.find_or_initialize_by(title: "How to Fall in Love With Exercise")
post_12.category = beyond
post_12.user = michelle
post_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/fall-in-love-exercise-header.jpg"),
  filename: "fall-in-love-exercise-header.jpg",
  content_type: "image/jpeg"
)
post_12.promoted = true
post_12.excerpt = "Get hooked on exercise and enjoy the journeyYou’ve got an Apple watch/FitBit and bought a gym membership. Your intention is good, but interest is fading…. Sound familiar? If you don’t have a plan and work towards bettering yourself, you are unlikely to see changes in..."
post_12.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Get hooked on exercise and enjoy the journey</h3>
  <p class="mb-2">You’ve got an Apple watch/FitBit and bought a gym membership. Your intention is good, but interest is fading…. Sound familiar?</p>
  <p class="mb-2">If you don’t have a plan and work towards bettering yourself, you are unlikely to see changes in your body and mindset. It’s that simple. You must learn to enjoy the journey you’re on and experiment with ways on how to fall in love with exercise. I’ve watched women for years in the gym, doing cardio and a few weights here and there, but their body shape never changes. It’s not all about how you look, but you want to see a return for your money and effort right?</p>
  <h4 class="h5 mb-2">Find something you love</h4>
  <p class="mb-2">Whether it be running, CrossFit or boxing, really try and find an activity or sport you truly enjoy and stick with it. If you outright can’t stand doing 5 sets of lunges 3x a week, then don’t do them. If you decide to join a gym and find you’re not too fond of weight training, then experiment with several different forms of training. Consider activities that bring you genuine joy and relate them to an exercise equivalent. If you love to dance and listen to loud music and the mental release it gives you, then consider trying a Zumba class. Or, if you’re more into flexibility and feeling at peace, then try yoga or mobility classes. But if you’re a lover of physical activity in general, try everything!</p>
  <h4 class="h5 mb-2">Get a training partner</h4>
  <p class="mb-2">Exercising with a buddy can be a great way to develop a passion for exercise and build a habit. Training with a friend can also help enhance performance and add a competitive edge to your workouts while adding motivation. It can also be really easy at times to skip a workout, this may not be the case when you know you will also be letting down a friend!!</p>
  <h4 class="h5 mb-2">Make it a habit</h4>
  <p class="mb-2">Developing a habit can take months, so no matter what you do, never give up! By choosing a regular time to exercise and sticking with it on a daily occurrence is a great way to build a habit. Set small fitness goals within your new training regime to help place you on the right path for success and help you commit to exercising on a regular basis.</p>
  <p class="mb-2">I would also advise tracking your workouts. Whether it be the number of reps or the weight you lifted on certain exercises, jot it down and try to beat that number the next time the same exercise comes around. By also making this a habit you’ll physically see the signs of improvement in strength, consequently providing you with positive signs you’re on the right path.</p>
  <h4 class="h5 mb-2">Hit the weights in the A.M.</h4>
  <p class="mb-2">It may be best to wake up a tad earlier to exercise so you can get it out the way first thing. I know it may sound like the last you want to do. But, as your love for exercise develops, you’ll start to find that training early really doesn’t matter. Plus, the overall positive effect exercise gives you greatly outweighs an extra hour in bed. It’s always the way that if you ever get roped into extra work duties, the gym will always be the thing that takes the fall for it. Wake up > water > coffee > gym time</p>
  <h4 class="h5 mb-2">It’s not always ’squat till you drop"</h4>
  <p class="mb-2">Doing a little exercise is always better than doing absolutely nothing. Something as simple as 10,000 steps a day is instantly better than not reaching the daily average. The same goes for your workouts. By doing just a modest amount of exercise can do wonders for both your physical and mental health. Plus, a modest approach is a great start when discovering how to enjoy exercise.</p>
  <h4 class="h5 mb-2">Kindness is key</h4>
  <p class="mb-2"> Don’t get yourself down about your current physique if your fitness levels aren’t where you want them to be, be patient, the process takes time. Self-compassion and kindness has proven to increase the chances of you succeeding on your new fitness journey and understanding of how to fall in love with exercise. Stay positive, you’re on the right path. Use any mistakes from your past and unhealthy options you may have taken as an opportunity to develop and grow.</p>
  <h4 class="h5 mb-2">Keep it real</h4>
  <p class="mb-0">As I said, have patience. Expecting instant result is just not going to happen overnight and will only develop frustration. Keep a clear mind on consistency and zone in on the fact you’re doing this to become a healthier and happier you. In comparison to your physical changes taking time, your mental health will improve very quickly. Your mood will boost and your overall patience with others will grow. Do not get downhearted by accomplishments you set that are yet to be achieved and how far you still have to go on your fitness journey. The physical reward takes time and when that time arrives, you will look amazing!</p>
  <h4 class="h5 mb-2">Focus on you</h4>
  <p class="mb-2">Stop caring about what other people may think of you when you’re working out. The truth is, nobody cares. Everyone is on their own fitness journey and focussing on their own goal. Everyone looks out of breath and sweaty when they exercise. Everyone looks a bit silly. However, if you do still feel paranoid when you exercise, try visiting the gym at quieter times, or better yet, train in your home with me!</p>
  <h4 class="h5 mb-2">Look good to feel good</h4>
  <p class="mb-0">Never doubt the power of a new chic gym outfit! A hot pair of gym leggings or stylish sports bra and trainers can do wonders for self-motivation and add a little ‘perk me up’ as there will be days when you need that little boost. <a href="https://uk.gymshark.com/" target="_blank" rel="noopener">GymShark</a> and <a href="https://latched.uk/" target="_blank" rel="noopener">Latched</a> being 2 of my fave gym workout wear brands! (use discount code ‘MotherFit for 10% off Latched). However, it’s important to remember that spending money on new gear and using it as an excuse to having to exercise should not be the driving force behind your training.</p>
</section>
<section>
  <h3 class="h4 mb-2">Conclusion</h3>
  <p class="mb-2">I’ve always loved the feeling of pushing myself and getting the buzz after a workout. It was after this that I started to learn how to truly fall in love with exercise. When you start to see results there is nothing quite like it. I’m currently only doing my online home workouts and I’ve never felt so strong and fit.</p>
  <p class="mb-2">Having a positive mindset towards exercise is the answer when it comes to achieving success. You should wake up with joy at the excitement of looking forward to an activity that lays the foundation of forming a healthy long term habit. Remind yourself of the positive impact exercise has on not only your body, but your mind. Enjoy the process of being the best you can. You have one life, live it to the fullest!</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_12.slug = "how-to-fall-in-love-with-exercise"
post_12.created_at = "21/06/2021"
post_12.save!

post_13 = Post.find_or_initialize_by(title: "How to get an overtired baby to sleep")
post_13.category = postpartum
post_13.user = michelle
post_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/how-to-help-baby-sleep-min.jpg"),
  filename: "how-to-help-baby-sleep-min.jpg",
  content_type: "image/jpeg"
)
post_13.excerpt = "Tips & methods to help settle your overtired babyIt’s vitally important to connect with your little one as much as possible to help them with their sleep. Go overtime with bonding, lots of cuddles and holding with skin on skin contact. Get Dad to take his top off..."
post_13.body ='
<section>
  <h3 class="h4 mb-2">Tips & methods to help settle your overtired baby</h3>
  <p classs="mb-2">It’s vitally important to connect with your little one as much as possible to help them with their sleep. Go overtime with bonding, lots of cuddles and holding with skin on skin contact. Get Dad to take his top off and have your baby lay on his chest to really build a strong connection between you all as a family.</p>
  <h4 class="h5 mb-2">Do baths help babies sleep better?</h4>
  <p class="mb-2">Most definitely! As your baby grows and gets bigger, skin on skin contact during baths can be a beautiful bonding experience for you both to develop a powerful connection. Work this into a regular bedtime routine and your baby will begin to relate bathtime with sleep time. Baths are also a great place for your child to develop their learning. It’s common that as babies get bigger they will begin to splash and play with bath bubbles and their toys in the water, this gives them the chance to develop their baby babbling and chatting talents.</p>
  <h4 class="h5 mb-2">Baby feeding schedule</h4>
  <p class="mb-4">Whether breast or bottle-feeding, establish a feeding routine to help your baby understand its queues as to when bedtime may be. A simple trick of extra milk before bed resulting in a bigger meal will also aid in your child sleeping longer.</p>
  <h4 class="h5 mb-2">Baby circadian rhythm</h4>
  <p class="mb-2">Your baby needs to understand it’s natural body clock (circadian rhythm) and to learn the difference between day and nighttime. Lot’s of long walks with exposure to both daylight and artificial light are great ways for your baby to help develop their circadian rhythm. Then at night time make sure that the brightness from lights within your home is on a low/dim setting.</p>
  <h4 class="h5 mb-2">Baby communication</h4>
  <p class="mb-2">Smiling at your little one with lots of eye contact and mimicking what they are doing is another method when setting up your babies circadian rhythm. By doing this towards bedtime you can help your baby learn when it’s daytime, and when it’s nighttime.</p>
  <h4 class="h5 mb-2">Does white noise help babies sleep?</h4>
  <p class="mb-2">I would strongly recommend the use of white noise to help your overtired baby sleep. White noise can replicate the surrounding noise of a womb and can aid greatly in helping your baby settle for bedtime.</p>
  <h4 class="h5 mb-2">Signs of overtired baby</h4>
  <p class="mb-2">At 3-6 months your baby should have developed its circadian rhythm and their <span class="fw-bold">melatonin</span> sleep hormone to help them sleep much more. Set a mental note of your babies naps and the duration of these and how long they are awake for. Take note of their tired queues, are they rubbing their eyes? not giving you eye contact? These are clear signs that your baby is ready for a nap and can help you establish a consistent time for them to sleep.</p>
  <h4 class="h5 mb-2">Baby evening routine</h4>
  <p class="mb-2">A bedtime routine of making sure your child gets into their PJs straight after a bath subconsciously tells them “must be bedtime soon” and take note of the time your babies last nap time finished. At this age, you’re looking at a sleep duration of around 2-2.5 hours, so a nice early bedtime can really help with an overtired baby.</p>
  <h4 class="h5 mb-2">Baby wakes up in the middle of the night</h4>
  <p class="mb-2">It can be normal for babies to wake up in the night to have a little whinge or chat to themselves. It’s perhaps best to leave them and let themself fall back to sleep, we need to give our little ones the opportunity for this before instantly rushing to them for a feed or cuddle.</p>
  <h4 class="h5 mb-2">Practical tips to help baby sleep</h4>
  <p class="mb-2">Using a sling can help your baby settle down, especially if they develop any reflux or colic by keeping them upright and close to you. Swaddling and setting up a pre-bedtime routine are also reliable ways to settle an overtired baby. Perhaps 5 minutes before bed of changing their nappy and singing the same songs (even if it drives you crazy) and keeping everything consistent and really making sure your babies sleeping environment is nice and clean without any light breaking into the room.</p>
  <p class="mb-2">I hope you found these tips and methods helpful in getting your overtired baby back to sleep. Feel free to take a look at the expert advice section of the website where we have leading industry specialists who give their advice on first aid, children’s emotional wellbeing and more on sleep.</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_13.slug = "get-overtired-baby-to-sleep"
post_13.created_at = "07/06/2021"
post_13.save!

post_14 = Post.find_or_initialize_by(title: "How to Get Rid of Bingo Wings at Home")
post_14.category = beyond
post_14.user = michelle
post_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/womens-exercises-shoulder-press.jpg"),
  filename: "womens-exercises-shoulder-press.jpg",
  content_type: "image/jpeg"
)
post_14.excerpt = "Us ladies are prone to developing bingo wings due to how our fat is distributed throughout the body. The lower belly, thighs and arms being the three main areas for this. The combination of a high body fat and low muscle mass, especially within the upper body, leads..."
post_14.body ='
<div class="mb-4">
  <p class="mb-2">Us ladies are prone to developing bingo wings due to how our fat is distributed throughout the body. The lower belly, thighs and arms being the three main areas for this. The combination of a high body fat and low muscle mass, especially within the upper body, leads to the development of loose skin and fat within the area.</p>
  <p class="mb-2">A structured workout plan of upper body exercises with weights or bodyweight is a surefire way to torch the fat on the upper arms. Don’t worry about becoming ‘bulky’ it’s an absolute myth! The more muscle you develop in your arms, the more tone and firmness you will see.</p>
  <p class="mb-0">In combination with this, a healthy diet is also needed to help reduce overall body fat if you want to truly understand how to get rid of bingo wings at home. You could be doing the most intense arm workout x4 a week, but if you’re still consuming too many calories regularly, then just the workout itself won’t cut it.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">What muscles do you need to target?</h3>
  <p class="mb-2">You want to put as much emphasis as possible on your upper arms. Try to involve the following muscles in your upper body workouts to help burn fat and grow muscle in the arms:</p>
  <ul class="list-unstyled mb-0">
    <li class="fw-bold">Biceps</li>
    <li class="fw-bold">Triceps</li>
    <li class="fw-bold">Shoulders</li>
  </ul>
</section>
<section>
  <h3 class="h4 mb-2">How to get rid of Bingo Wings at Home: The Best Exercises</h3>
  <h4 class="h5 mb-2">Tricep Dips</h4>
  <p class="mb-2">This can be done weighted or with just your body weight, depends how challenging you find the exercise. It’s important to keep form strict and intense. Take your final set to failure and when you feel this becomes too easy, try placing some additional weight in your lap before you begin. You can also elevate your feet on a chair to increase the burn and add intensity. The movement completely targets the main area where fat within the upper arms is held and should be part of any arm-day routine.</p>
  <h4 class="h5 mb-2">Bicep Curls</h4>
  <p class="mb-2">Grab some dumbells to perform a bicep curl and try to really focus on contracting the muscle. A strong mind-muscle connection is essential in all forms of weight training exercises. I love bicep curls and is one of the best exercises for bingo wings being a thing of the past!</p>
  <h4 class="h5 mb-2">Tricep Extensions</h4>
  <p class="mb-2">With both your hands, grab one dumbbell and raise your arms so they are above your head. While holding the dumbbell, slowly begin to bring the weight behind your head, down toward your neck. Return to the starting position for a fully completed rep.</p>
  <h4 class="h5 mb-2">Shoulder Press</h4>
  <p class="mb-2">An excellent exercise at targeting the shoulders and building strength within the upper body is the shoulder press. Try to slowly increase reps or the weight over time to keep workout intensity high. Remember, if your workout is easy and you’re not pushing yourself, your body has no reason to think, “wow this is hard! I better start building some more muscle to help lift this weight”</p>
  <h4 class="h5 mb-2">Close grip push-ups</h4>
  <p class="mb-2">An excellent way to tone your arms is performing 3 to 4 sets of close grip push-ups for 12-15 reps. By doing them with a close grip, more emphasis is placed on the triceps, which is the main area for bingo arms.</p>
  <h4 class="h5 mb-2">Upper Body Burn</h4>
  <p class="mb-2">Try my Upper Body Burn class to help tone and shape your arms.</p>
  <p class="mb-2">Try to incorporate all the above exercises as part of an upper-body workout or a dedicated arm day. I would advise doing these exercises twice a week to get the most benefit when training from home, Over time, you’ll slowly become stronger, and your arms will become more defined.</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_14.slug = "best-exercises-for-getting-rid-of-bingo-wings"
post_14.created_at = "27/05/2021"
post_14.save!

post_15 = Post.find_or_initialize_by(title: "Perinatal Mental Health: Pregnant in a Pandemic")
post_15.category = postpartum
post_15.user = michelle
post_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/maternal-mental-health-pregnancy-lockdown.jpg"),
  filename: "maternal-mental-health-pregnancy-lockdown.jpg",
  content_type: "image/jpeg"
)
post_15.excerpt = "I feel the emphasis on support for perinatal and maternal mental health has never been needed more for us mummies after this last year. For the life of me, I can't begin to imagine how challenging it must have been for expectant mothers having to go for baby scans and..."
post_15.body ='
<div class="mb-4">
  <p class="mb-0">I feel the emphasis on support for perinatal and maternal mental health has never been needed more for us mummies after this last year. For the life of me, I can’t begin to imagine how challenging it must have been for expectant mothers having to go for baby scans and dealing with the difficulty of childbirth utterly alone. Within this blog, I have case studied three amazing women from the Mother Fit community who have been kind enough to share their struggles with both maternal mental health and perinatal mental health problems and being pregnant during a pandemic. I hope the experiences shared can help other women when dealing with postnatal depression and mental health issues, you’re not alone.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Perinatal and Maternal Mental Health: How Exercise Can Help</h3>
  <h4 class="h5 mb-2">Angela and her baby girl, Rosie</h4>
  <p class="mb-2">I thought the third time round was going to be considerably easier than my first two pregnancies – how wrong I was!</p>
  <p class="mb-2">I felt very blessed to fall pregnant with Rosie last year and I tried to put the fact that a world pandemic was happening to the back of my mind. I was adamant by the time I was due to give birth, all would be fine. However, Christmas came and everything took a turn for the worse. I knew things were going to be very different this time.</p>
  <p class="mb-0">I became increasingly anxious when I was told at 38 weeks, Rosie was still breeched. Having a cesarean terrified me and I felt very low. After having two natural births, I had no other choice as I didn’t want to risk a breech delivery. I know it is an incredibly common operation. But, for me personally, the thought of being operated on awake terrified me. I wanted to be there for my two boys and ‘get back to normal’ for them as soon as possible.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Going It Alone</h3>
  <p class="mb-2">I went solo to all my scans and appointments which was hard. Not only did I want to share these special moments with my husband, I also wanted him to listen to the information too and be there for me. All I wanted was for Rosie to be delivered safely and be OK. So, I kept focusing on that and trying not to freak out about the operation! I was booked into a cesarean at 39 weeks. I remember my husband walking me to the ward, passing me my bags and saying goodbye. All very strange. I called him when it was my turn to head to the theatre and he put his scrubs and mask on and it was all systems go.</p>
  <p class="mb-0">The hospital team were great. We had an hour or so together on the recovery ward and then my husband was asked to leave. I was wheeled back to the ward alone. I stayed in hospital for 2 days and completely relied on the midwives to pass Rosie to me to feed, change her, get me out of bed etc. It was really hard at times but it’s amazing how strong we are!!</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">The First Days After Childbirth</h3>
  <p class="mb-2">The first 10 days were the hardest at home. The boys were home, I was homeschooling, looking after Rosie and recovering! My family were not able to come and help or have a cuddle. It all just didn’t feel real. Part of the emotional struggle with having a cesarean for me was also returning to exercise or beginning to feel active again. Before I was pregnant, I loved exercising to destress and feel positive. I remember thinking, this time last year I ran my first half marathon and now I can’t even walk round the block. It took me ages to look at my scar and I was terrified about returning to exercise.</p>
  <p class="mb-0">However, having had personal training with Michelle in the past and attended her classes, I was thrilled when I saw her postnatal classes online. Before this, I was forever googling at random o’clock in the night. Searching for a recovery programme but most seemed to require a big payment upfront, with a trainer I didn’t know or trust. Taking part in the recorded sessions has been a life saver for me! It has built my confidence up again in terms of getting active. Even though I’m doing all the classes on catch up (and sometimes in my dressing gown), I feel like Michelle is in my living room egging me on.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">The Mother Fit Community</h3>
  <p class="mb-0">As part of the community, I love being able to watch the videos from the specialists and the sense of belonging to a group. Especially during these strange times, its been really valuable. Being able to have that communication with other women in a similar position has been lovely. Michelle’s ‘don’t rush it’ is always at the back of my mind as I’m desperate to return to normal burpees again (something I never thought I’d say!). It’s so important after you’ve given birth, especially at the moment, to have a network of kind people around you. That you can talk to, laugh with or shed a tear! Michelle is incredibly supportive and always there to give you a boost if you need it!</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Being part of a close network to support mental health</h3>
  <h4 class="h5 mb-2">Vicky and baby Digby</h4>
  <p class="mb-2">This was my third pregnancy and it was very different to the others due to the pandemic. I am very lucky to have fab NCT friends, but I obviously couldn’t see them. Most didn’t even see me with a bump. It was strange, I didn’t feel isolated so to speak as my husband was working from home (which wasn’t the case before). I just missed being able to meet up with friends. I can’t imagine how hard it was for first-time mums. Having no idea what to expect and attending NCT online is not the same as in person.</p>
  <p class="mb-2">Unfortunately, my husband wasn’t allowed to come to the first 12 week scan which was horrible. It’s a nerve-wracking event anyway. Having had miscarriages in the past you just want to know all is ok. Thankfully it was and the nurses were amazing! It was hard for my husband also, because until they see that baby in the scan it doesn’t really feel real for them.</p>
  <p class="mb-0">Luckily the rules had changed by my 20-week scan and he could attend, which was amazing!</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">The Big Day</h3>
  <p class="mb-2">The birth was fairly straightforward. I was due to be induced on the Monday, which I didn’t want as my husband couldn’t come to any of the process. The thought of being on my own scared me. Luckily the contractions started on the Saturday, and we went into hospital at 4 a.m. Sunday morning. My pregnancy was simple with no complications, so we were both allowed straight into the midwife led unit. My husband was there for the whole thing. Baby Digby arrived by 7 a.m. born in the pool and in his amniotic sack. Which is meant to bring good luck!</p>
  <p class="mb-2">I was determined to use the pool as I had both my other two that way and loved it. The labour was pretty quick so I only managed to get paracetamol and a bit of gas and air, which I’m sure wasn’t actually working!!</p>
  <p class="mb-0">The whole birth experience was very similar to my other two. I wouldn’t have known there was a pandemic other than the midwives wearing masks. I didn’t have to go on the ward, we were allowed to stay in our room until we were discharged later that day.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">More than just exercise</h3>
  <p class="mb-2">I think the biggest difference this time round is not having people come around after the baby was born, some friends still haven’t been able to meet Digby yet.</p>
  <p class="mb-2">Having the online community through Mother Fit definitely helped me feel connected to the outside world and stay sane. During my pregnancy I tried to keep active, running until 28 weeks and doing Michelle’s online classes. I would adjust to lower options the bigger I got.</p>
  <p class="mb-2">Being part of Mother Fit community is more than just exercise though, it’s a support network where you can chat to other mums and meet new people.</p>
  <p class="mb-0">On days when I was feeling overwhelmed and could feel my mental health was struggling, I could join a class and feel so much better afterwards. I have been part of the community since having my first. I absolutely loved attending classes in person and meeting new people. To then have all of that available online when the pandemic hit was fab.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Treat your physical and mental health with exercise</h3>
  <h4 class="h5 mb-2">Sarah and her boys Thomas and Freddie</h4>
  <p class="mb-2">The last few years have been quite the whirlwind. I’ve gone from busy London PR girl, with global wellness and beauty clients, to Knebworth dwelling mum of 2-under-one-and-a-half. Throw in soul-sapping hyperemesis gravidarum (that’s HG to those unfortunate enough to be in the know), a pandemic, 2 house moves and you’ve got yourself one FUN FILLED 18 months.</p>
  <p class="mb-0">It still amazes me that mankind manages to flourish, despite the curveballs a mini human throws at you. Be it conception, pregnancy, labour, or the 4th trimester…the challenge will get you at some stage. Unless you’re Christine from Selling Sunset, but let’s move on. (Great mat leave watching if you’ve exhausted Below Deck).</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Do you ‘pregnant’ well?</h3>
  <p class="mb-2">For me, I most definitely don’t ‘pregnant’ well. Come week 6 and BOOM it’s goodbye stomach lining. Then it’s hello to an intimate relationship with the inner workings of my toilet bowl. HG was a total unknown to me until my first pregnancy. It’s about as similar to morning sickness as Jedward is to Slipknot. And good god it knocks you over.</p>
  <p class="mb-0">8 months of sick leave, 6 different prescriptions, A+E trips, styes, acid erosion of teeth…I’ve never felt sexier. Whilst it eased after 28wks with my first (allowing me to do some pregnancy-specific exercise), my second pregnancy gave no let up. Triggering sick leave due to pregnancy whilst already on mat leave is a great discussion to have with your HR team. But such was the sickness I couldn’t even do that, delegating it to my husband who could string sentences together without wretching in between. My promotion has never looked so likely (sarcasm intended).</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">How was lockdown for you?</h3>
  <p class="mb-2">There’s something mildly comforting about knowing the rest of the country aren’t exactly having a party whilst you’re feeling like the inside of a badger’s nostril. Lockdown for me involved having a toddler crawling over my face whilst I vomited into the nearest waterproof vessel.</p>
  <p class="mb-0">When you feel so weak and useless, exercise is the one positive to get you back to both physical and mental strength. So now I’m 4 months post-pushing a ten pounder out, the mission begins. My core currently has all the strength of a wet slice of Hovis. I could also probably fit both children in the gap in my abs. Michelle’s postnatal programme is giving me the flexibility of fitting it around the little’uns, whilst retaining the community aspect with a separate members Facebook group. Whilst I’m currently keeping Tena lady afloat and doubting a future gold in trampoline jumping, I’m confident over the coming months -slowly but surely- I’ll get back to a bit more of the ‘old’ me. Although I’m quite a fan of the new chaos with the little people. The toilet bowl hugging was without doubt worth it (ask me in 6 months and I may disagree, but for now it’s really rather awesome).</p>
</section>
<section>
  <h3 class="h4 mb-2">Treat your body with kindness</h3>
  <p class="mb-2">I hope these stories have assured you to not beat yourself up about how you may be feeling. Above all else, treat your body with compassion and kindness. Make sure to have a read of the <a href="https://www.england.nhs.uk/mental-health/perinatal/" target="_blank" rel="noopener">"NHS</a> resources and services info on the matter. But remember, when the time is right, reach out and ask for support on your maternal and perinatal mental health. I promise you will begin to feel better.</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_15.slug = "perinatal-mental-health-pregnant-in-pandemic"
post_15.created_at = "18/05/2021"
post_15.save!

post_16 = Post.find_or_initialize_by(title: "Why home workouts may be best for busy mums")
post_16.category = beyond
post_16.user = michelle
post_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/brain-power-home-workout.jpg"),
  filename: "brain-power-home-workout.jpg",
  content_type: "image/jpeg"
)
post_16.excerpt = "The benefits home workouts can have for busy mums, helping improve heart and brainpower!Fitting in home workouts as a busy mum rushing between the school run, work, and homelife jobs can be challenging. However, the added benefit of physical activity for both your..."
post_16.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">The benefits home workouts can have for busy mums, helping improve heart and brainpower!</h3>
  <p class="mb-2">Fitting in home workouts as a busy mum rushing between the school run, work, and homelife jobs can be challenging. However, the added benefit of physical activity for both your physical and mental health can make all these daily tasks much more manageable.</p>
  <p class="mb-2">The correct exercise selection combined with the appropriate rep scheme can do wonders in added brain power and overall strength. In time, you will find that having this foundation of exercise will improve memory, relieve stress, and give us mummies a much better night sleep.</p>
  <p class="mb-0">So, within this blog, I have laid out a few basic exercises to include in your home workouts to recruit your arms, legs and core, tailored to a schedule of busy mums with an emphasis on aiding your brain, heart and physical health.</p>
</section>
<section>
  <h4 class="h5 mb-2">Press your way to a healthy heart</h4>
  <p class="mb-2">Press-ups are a fantastic full-body exercise without the need for any equipment and can be performed almost anywhere, making it the perfect exercise to include in a variety of home workouts for busy mums.  With the support of multiple studies, the press-up has proven to be number 1 at giving a judgment of your risk of suffering from heart disease. Even more so than many other bodyweight exercises. In addition, press-ups help with blood circulation, stimulate metabolism, and give your overall cardiovascular system a good workout, thus burning calories.</p>
  <p class="mb-2">There is an inverse association with future cardiovascular disease and press up capacity. Put simply, with time, the more press-ups you can perform, the less likely you are to suffer from a stroke or heart attack.</p>
  <h4 class="h5 mb-2">Squat your way to a stronger…brain?</h4>
  <p class="mb-2">I would highly advocate implementing squats into your home workout. One of the best exercises at working a mixture of different muscle groups, from your abs and calves to your quads and glutes, the squat is the queen at improving strength and stability in several muscle groups.</p>
  <p class="mb-2">While also improving your muscular strength, the squat is one of the best exercises for improving brain function. Studies have shown that multiple sets of bodyweight squats performed 3 to 4 times a week can be better for your brain than half an hours worth of steady-state running.</p>
  <p class="mb-2">While performing a squat, your brain moves up and down through gravity. It provides a unique type of blood flow in the brain, working blood vessels that soften changes in blood pressure while supplying the brain with oxygen and stimulating new brain tissue connections. So the next time you’re squatting, remember you’re not only working your bum and other muscle groups but there’s also a lot of positivity going on in your head!</p>
  <p class="mb-2">Not to worry if you haven’t implemented a home workout into your daily routine due to being too busy as a mum, my online pre & postnatal programmes will help ensure you exercise safely throughout your pregnancy and after your baby is born. I talk from experience when saying motherhood is a hard job, an amazing one, but a hard one! I know how time-consuming it can be. However, my live workouts can be done in the comfort of your own home, with minimal equipment needed while including the exercises I’ve mentioned above. You’ll also get the biggest gain in benefits for your mind. Especially if you have been in a period of doing very little to no exercise at all as your brain has not been used to dealing with the changes in blood flow. The more changes in blood flow, the more positive chemicals and brain activity released!</p>
  <p class="mb-2">Join me LIVE or On Demand in my next class. IT’S FREE. I will guide you through it and you have the community behind you.</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_16.slug = "home-workouts-for-busy-mums"
post_16.created_at = "17/05/2021"
post_16.save!

post_17 = Post.find_or_initialize_by(title: "Postnatal Exercise Program: A Mother’s Guide")
post_17.category = postpartum
post_17.user = michelle
post_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/oost-pregnancy-exercises-for-mum.jpg"),
  filename: "oost-pregnancy-exercises-for-mum.jpg",
  content_type: "image/jpeg"
)
post_17.excerpt = "Listen to your body after childbirth before post pregnancy exerciseFirstly, a huge congratulations to you and your wonderful body. As a woman, you've achieved something remarkable by bringing new life into the world. With this, please be kind to your bodies needs. The..."
post_17.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Listen to your body after childbirth before post pregnancy exercise</h3>
  <p class="mb-2">Firstly, a huge congratulations to you and your wonderful body. As a woman, you’ve achieved something remarkable by bringing new life into the world. With this, please be kind to your bodies needs. The healing process takes time and can become tedious. However, to help heal your body, the correct postnatal exercise program must be performed regularly and safely to enhance the process.</p>
  <p class="mb-0">In the early stages of post-childbirth, it is vital to rest as much as possible and always stay hydrated while maintaining a healthy, wholesome diet. The value of protein and its ability to help repair muscle tissue is vital when supporting your collagen formation. Cooking meals in bulk and popping them in the freezer before your baby arrives is a surefire method to make sure you eat well and stops you from going for “on the go” type meals, which can be very low in nutritional value. Quick tip – if you are ever caught out for something to eat, a simple protein shake is a great way to help in making sure you hit your protein goal for the day.</p>
</section>
<section clas="mb-4">
  <h3 class="h4 mb-2">When Starting Your Postnatal Exercise Program</h3>
  <p class="mb-2">Remember not to compare yourself to other mummies! I myself started to overthink my postnatal body continuously when I would scroll my Instagram feed in the evenings and see other mums appearing to have quickly snapped back to their prenatal bodies. This is not the norm. Your beautiful body took 9 months to grow your baby and can take just as long, if not longer, to recover fully. Patience is key.</p>
  <p clas="mb-0">If you’ve had a vaginal delivery, you may have had a tear or episiotomy. You may also find that your pelvic muscles may not be as weak as your abdominals if you’ve had a C-section. Many private and NHS women’s health physios offer a Mummy M.O.T. This is a thorough 6-8 week postnatal check of your posture, breathing, ribcage, stomach and pelvic floor.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">The Pelvic Floor</h3>
  <p class="mb-2">The pelvic floor is attached to the deep layer of the abdominals. When activated correctly, you should feel a slight tension in the lower abs. This should not be a bracing of the entire tummy, sucking in or holding your breath. I completely understand that postnatal pelvic floor exercises can be dull, but see it as laying the foundations of your house. If you get this right, you can then build the strength on top.</p>
  <p class="mb-0">When performing your postnatal pelvic floor exercises, it’s important to use the correct form and not to just suck in your breath and tense your abs. You want to squeeze from the back passage as if you’re trying to stop yourself from passing wind, to then bring forward, like you’re trying to stop yourself from peeing. When working the quick fibres, make sure to squeeze and release with no hold or pause. Then when it comes to working the slow fibres, try to hold the contraction for 10 seconds, release and repeat. I would suggest a total of 10 reps.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">25 minute Postnatal Workout</h3>
  <p class="mb-0">Try the free workout below for a gentle reintroduction to exercise after birth. <span class="fw-bold">Bookmark this page</span> to always come back to this workout.</p>
</section>
<section>
  <h3 class="h4 mb-2">Core Exercises Within a Postnatal Exercise Program</h3>
  <p class="mb-2">Core exercises are also a great addition in helping with building your pelvic muscles. When you are ready to get moving again, why not try my 9 Week Postnatal Series, which caters for all your postpartum needs – challenging you gently, restoring and rebuilding fitness one session at a time and finally progressing your strength and stamina, but in a way that’s mindful for this intense time. An easier approach I also suggest is walking. Walking can be a great way in getting yourself and your baby outdoors while helping you relieve stress. But recognise us mummies need to be strong both mentally and physically, so functional postnatal exercise classes are an excellent progression when you feel you’re ready for them. Prams, your growing baby and toddlers are heavy, so making sure we build our strength is key in aiding us to perform everyday tasks. I would advise in low impact bodyweight squats, lunges and step-ups at first. Remember, you cant just pick up where you left off. Your body has changed. Meet it where it’s at.</p>
  <p class="mb-2">Finally, your pregnancy journey is specific to you. Find the appropriate exercises for you personally to help heal your postnatal body. You will know when the time is right to return to a more active lifestyle. There is no right or wrong. Don’t compare yourself to your friends or previous pregnancies. You can discover more advice on the <a href="https://www.nhs.uk/conditions/baby/support-and-services/your-post-pregnancy-body/" target="_blank" rel="noopener">postnatal exercise nhs</a> page.</p>
  <p class="mb-0">Love Michelle x</p>
</section>
'
post_17.slug = "postnatal-exercise-program"
post_17.created_at = "13/05/2021"
post_17.save!

# post_18 = Post.find_or_initialize_by(title: "My must try healthy BBQ recipes for all the family")
# post_18.category = nutrition
# post_18.user = michelle
# post_18.featured_image.attach(
#   io: File.open("app/assets/images/seeds/posts/healthy-bbq-recipes.jpg"),
#   filename: "healthy-bbq-recipes.jpg",
#   content_type: "image/jpeg"
# )
# post_18.excerpt = "Treat your kids this Summer with my must try healthy BBQ recipes for all the familyDuring the summer months, it really can get too hot (even in rainy old England) to cook in a stuffy kitchen. There is nothing that I love more on a Summers evening than firing up the..."
# post_18.body ='
#<section class="mb-4">
  #<h3 class="h4 mb-2">Treat your kids this Summer with my must try healthy BBQ recipes for all the family</h3>
  #<p class="mb-2">During the summer months, it really can get too hot (even in rainy old England) to cook in a stuffy kitchen. There is nothing that I love more on a Summers evening than firing up the BBQ and eating our dinner outside as a family while the evening draws to a close.</p>
  #<p class="mb-2">As much as I enjoy BBQ food, it can be challenging to not go to the usual choices (beef burgers, sausages, lamb chops etc.) To then dish them up with the same old side dishes time and time again. This blog aims to spice up your grilled Summer meals with variety while keeping calories low and nutritional value high!</p>
  #<p class="mb-0">So, here are my top healthy family BBQ dishes and recipes that everyone can enjoy together.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Chicken & Apple Burgers with Guacamole</h3>
  #<p class="mb-0">During BBQ season in the Baynham household, these delicious burgers go down as number 1 and are the Mother Fit signature dish. Full of protein and healthy fats, this delightful meal packs a flavorful punch! Quick tip-Serve these up in a few mini burger buns to the little’uns so they are not seen as such a heavy meal.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Grilled Prawns and Pineapple Kebabs</h3>
  #<p class="mb-0">Add a mix of prawns and pineapple chunks onto a skewer and lay on the grill till they are cooked to perfection. Squeeze a tad of lemon onto the prawns and add a touch of light sweet chilli sauce for a flavoursome summer dish the whole family will love!</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Potato Salad with Chive and Greek Yoghurt</h3>
  #<p class="mb-0">A light summer side dish that goes down a treat at big family BBQs. The greek yoghurt provides an excellent low kcal alternative to mayo, while the chive provides the kick. You can also swap greek yoghurt for a tzatziki sauce for a refreshing cucumber based side dish.</p>
#</section>
#<section class="mb-4">
  #<h3 class="h4 mb-2">Grilled Salmon with Avo Chunks and Salsa</h3>
  #<p class="mb-0">A light and colourful summer dish bursting with omega-3 fatty acids, great for your heart and brain. This meal can be enjoyed hot or cold, so any leftovers make an excellent next day feast. The combination of protein and healthy fats provide a filling meal while being light, perfect for us mums on the go.</p>
#</section>
#<section>
  #<h3 class="h4 mb-2">Grilled Sweet Mini Peppers and Humous</h3>
  #<p class="mb-2">A simple veggie dish that couldn’t be easier to make. Any colour pepper work, but I tend to go for red and orange for that extra sweetness. Just add a brushing of olive oil and salt and pepper, then pop them onto the grill for 10 minutes or so. Remove the blackened skin and WOLAH! Serve with some dipping humous for a tasty side dish snack. Quick tip- Mix the peppers with the humous and dish up in a slice of pita bread for a filling veggie dish.</p>
  #<p class="mb-2">From this blog, I hope you found some healthy BBQ recipes for the family the next time you decide to fire up the grill!</p>
  #<p class="mb-0">Love Michelle x</p>
#</section>
#'
# post_18.created_at = "10/05/2021"
# post_18.save!

post_19 = Post.find_or_initialize_by(title: "Pilates In Pregnancy")
post_19.category = pregnancy
post_19.user = michelle
post_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/pilates-in-pregnancy.jpg"),
  filename: "pilates-in-pregnancy.jpeg",
  content_type: "image/jpeg"
)
post_19.excerpt = "Performing pilates in pregnancy is a fantastic way to stimulate numerous muscle groups while making you more supple. Pilates also helps relieve stress and tension on joints while easing pregnancy aches and pains. Similar to yoga, pilates recruits deep breathing..."
post_19.body ='
<div class="mb-4">
  <p class="mb-2">Performing pilates in pregnancy is a fantastic way to stimulate numerous muscle groups while making you more supple. Pilates also helps relieve stress and tension on joints while easing pregnancy aches and pains.</p>
  <p class="mb-2">Similar to yoga, pilates recruits deep breathing techniques. Pilates however has more of a focus on improving posture with low impact. This makes it a perfect form of exercise for pregnant mamas to implement into their weekly routine!</p>
  <p class="mb-0">Pilates works muscles and improves flexibility without putting too much strain on bones and joints.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">Why you should be doing Pilates in pregnancy</h3>
  <p class="mb-0">Pilates gets the core muscles firing thus helping you prepare your body for carrying the extra weight of a growing baby. Performing Pilates in pregnancy also helps condition your body for both childbirth and postpartum recovery due to the increase in core strength. The added stimulus on the pelvic floor is also vital for the postpartum stage to help recovery time and avoid any leaking mishaps when you sneeze, cough, run and laugh.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Is Pilates safe in early pregnancy?</h3>
  <p class="mb-0">Pilates in pregnancy is completely safe and should be part of every pregnant woman’s fitness regime. Just be cautious with particular movements and stretches to not overdo it. When you get to the 3-month stage of being pregnant, I would advise avoiding any exercise that have you lying on your back. This is why it’s SO important to have a specific pregnancy Pilates class that is catered to pregnant women. Classes should always be taught by a qualified pregnancy specialist that tailors and adapts exercises to your pregnancy journey.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">What are the benefits of performing Pilates in pregnancy?</h3>
  <ul class="list-unstyled mb-0">
    <li class="mb-2">
      <span class="fw-bold">Strengthens core and glutes</span>
      <p class="mb-0">When pregnant, your body releases a hormone known as relaxin. Relaxin makes ligaments within the pelvis highly flexible and supple while softening the cervix. This added suppleness from relaxin can make you prone to injury, especially within the lower back, hips and pelvis. Pilates is a wonderful exercise to help combat risk of injury, with a focus on adding support and stability in these areas. Because of this, Pilates is quite simply one of the best exercises to reduce pregnancy aches and pains.</p>
    </li>
    <li class="mb-2">
      <span class="fw-bold">Relives back pain</span>
      <p class="mb-0">Pilates stimulates your pelvic core, therefore helping you improve posture, thus relieving back pain. As you continue with your routine, you’ll slowly begin to notice the added stability within your back and pelvis, making jobs and tasks in everyday life much easier.</p>
    </li>
    <li class="mb-2">
      <span class="fw-bold">Breathing control</span>
      <p class="mb-0">One of the biggest takeaways from Pilates for pregnancy is the added control of breathing patterns, which is a huge tool when it comes to labour. As you journey through pregnancy, you may start to develop a firm/stiff feeling in the upper back. This can become an obstacle for deep breathing exercises. Pilates improves flexibility in this area which helps developing a deep breathing technique for childbirth.</p>
    </li>
    <li>
      <span class="fw-bold">Helps balance</span>
      <p class="mb-0">As your body changes through pregnancy, you may find you become a little more clumsy and unbalanced. Performing Pilates in pregnancy will help you feel more steady as your baby bump grows.</p>
    </li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Pilates in pregnancy precautions</h3>
  <p class="mb-2">Of course, Pilates is a safe exercise to perform during pregnancy, however, several precautions must be taken to avoid injury and provide an effective workout.</p>
  <p class="mb-2">Make sure to find a pregnancy specialist when it comes to pilates. They will be able to gauge the condition of your posture and pelvic floor and tailor the perfect pilates routine specific to your pregnancy.</p>
  <ul class="mb-0">
    <li>
      <p class="mb-0">Take it at your own pace.<span class="fw-bold">Listen to your body</span>, don’t over-excise.</p>
    </li>
    <li>
      <p class="mb-0">Completely avoid adnominal exercises such as crunches, curls or anything that places too much demand on your abdominal wall.</p>
    </li>
    <li>
      <p class="mb-0">Do not overstretch and place unneeded stress on joints.</p>
    </li>
    <li>
      <p class="mb-0">Be wary of your balance as your body changes through pregnancy. Try not to get up from the floor in a hurry.</p>
    </li>
    <li>
      <p class="mb-0">During the second part of your pregnancy journey, don’t lie flat or raise your feet over your head. This can add unwanted pressure on blood vessels which further causes less blood travelling to the heart.</p>
    </li>
    <li>
      <p class="mb-0">Exercise about 1-2 hours after every meal.</p>
    </li>
    <li>
      <p class="mb-0">Drink plenty of water and never exercise in hot or humid surroundings.</p>
    </li>
    <li>
      <p class="mb-0">If you ever feel any form of pain and discomfort, stop immediately.</p>
    </li>
  </ul>
</section>
<section>
  <h3 class="h4 mb-2">Have you tried the Mother Fit pregnancy Pilates class yet?</h3>
  <p class="mb-2">So many Pilates for pregnancy programs have no care for what stage of pregnancy a mother may be in. Leaving you overwhelmed with an array of different exercises to perform, with no real guidance on how to execute them properly with a growing baby inside of you. Not taking into consideration the physical changes a woman’s body goes through and what exercises may no longer be suitable for the trimester stage.⁣⁣</p>
  <p class="mb-0">You and your baby’s health is of utmost importance to us, which is why we place a focus on your overall wellbeing and keeping you and your little one safe. ⁣</p>
</section>
'
post_19.created_at = "08/02/2022"
post_19.save!

post_20 = Post.find_or_initialize_by(title: "Children’s Mental Health Week: Growing Together in 2022")
post_20.category = postpartum
post_20.user = michelle
post_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/children’s-mental-health-week.jpeg"),
  filename: "children’s-mental-health-week.jpeg",
  content_type: "image/jpeg"
)
post_20.excerpt = "Children's Mental Health Week will be taking place from the 7th - 13th February. A fantastic movement from Place2Be. The focus on both children and young people's mental health has never needed more attention following the effects of the coronavirus pandemic...."
post_20.body ='
<div class="mb-4">
  <p class="mb-2">Children’s Mental Health Week will be taking place from the <span class="fw-bold">7th – 13th February</span>.
  A fantastic movement from <a href="https://www.place2be.org.uk/about-us/children-s-mental-health-week/" target="_blank" rel="noopener">Place2Be</a>.</p>
  <p class="mb-2">The focus on both children and young people’s mental health has never needed more attention following the effects of the coronavirus pandemic.</p>
  <p class="mb-2">Continuous disruptions to the school calendar, multiple lockdowns, having to be distanced from friends at playtime after nearly 2 years has had its knock-on effects.</p>
  <p class="mb-2">New research provided by Place2Be has case-studied that 95% of UK school staff have seen a climb in anxiety within young pupils since the start of the new school year.</p>
  <p class="mb-2">Since the return of schools following lockdown, teaching staff also found an increase in low self-esteem and lack of confidence amongst children.</p>
  <p class="mb-0">The focus for Children’s Mental Health Week for 2022 is “growing together”. The aim of which is for children to think about how they have grown within the last year. As well as helping others to grow and further develop after the effects of the pandemic.</p>
</div>
<section class="mb-4">
  <h3 class="h4 mb-2">How Do I Get Involved?</h3>
  <p class="mb-2">Place2be will be hosting a range of free resources to help you get involved in the week activities.</p>
  <ul class="mb-2">
    <li>Virtual assemblies for primary and secondary schools, in partnership with BAFTA Kids</li>
    <li>‘Growth Stories’ interview series featuring familiar faces from the world of TV, music and sport</li>
    <li>Engaging primary and secondary school activities</li>
    <li>Top tips and activity ideas for families</li>
    <li>Social media guide to get involved during the week</li>
  </ul>
  <p class="mb-2"><a href="https://www.childrensmentalhealthweek.org.uk/parents-and-carers/" target="_blank" rel="noopener">Parents and carers</a> can also discover resources that contain stories and tips for both adults and children.</p>
  <p class="mb-2">One of the activities is My <a href="https://www.youtube.com/watch?v=zZ7oMeEE8NM" target="_blank" rel="noopener">Changing Shapes</a> – a lovely video showcasing young people on how to illustrate their own personal achievements. An activity helping pupils to take a look back on how they have developed as people from the past and learnt new skills. Coincidentally creating a thought process on how children want to grow in the future.</p>
  <p class="mb-2">When outlining the goals of this weeks theme, Place2Be said:</p>
  <blockquote class="fst-italic mb-2">
    <p class="mb-2">“Growing Together is about growing emotionally and finding ways to help each other grow.
    “Challenges and setbacks can help us to grow and adapt and trying new things can help us to move beyond our comfort zone into a new realm of possibility and potential.
    “However, emotional growth is often a gradual process that happens over time, and sometimes we might feel a bit ‘stuck’.</p>
    <p class="mb-0">“For Children’s Mental Health Week 2022, we will be encouraging children (and adults) to consider how they have grown and how they can help others to grow.”</p>
  </blockquote>
  <p class="mb-2">Here at Mother Fit we have also collated resources and topics from expert advisor, <span class="fw-bold">Jenna Farrelly</span>, Director of Supporting Steps; emotional and behavioural strategies service for parents. <span class="fw-bold">Discover our resources below</span></p>
  <p class="mb-0">Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.</p>
</section>
<section class="mb-0">
  <h3 class="h4 mb-2">Resources</h3>
  <p class="fw-bold mb-0"><a href="https://medium.com/@jenna_84344/how-does-our-current-education-system-impact-our-childrens-mental-wellbeing-296bf6b6d7cf" target="_blank" rel="noopener">Resource 3: How does our current education system impact our children’s mental wellbeing?</a></p>
</section>
'
post_20.slug = "childrens-mental-health-week-growing-together-in-2022"
post_20.created_at = "09/02/2022"
post_20.save!
