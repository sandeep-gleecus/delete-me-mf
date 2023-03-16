# Categories
nutrition = Category.find_by(title: "Nutrition")

# Admins
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Recipes
recipe_1 = Recipe.find_or_initialize_by(title: "Super Quick Halloumi Fajitas")
recipe_1.category = nutrition
recipe_1.user = michelle
recipe_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/fajitas-halloumi-recipe.jpg"),
  filename: "fajitas-halloumi-recipe.jpg",
  content_type: "image/jpeg"
)
recipe_1.promoted = true
recipe_1.excerpt = "How To Make Halloumi FajitasHalloumi fajitas are a go-to quick and easy dinner in the Mother Fit household. I try to incorporate a meat-free day in my diet once a week and halloumi fajitas are a delicious alternative to chicken. Fill these tasty little bites up with..."
recipe_1.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">How To Make Halloumi Fajitas</h3>
  <p class="mb-2">Halloumi fajitas are a go-to quick and easy dinner in the Mother Fit household. I try to incorporate a meat-free day in my diet once a week and halloumi fajitas are a delicious alternative to chicken. Fill these tasty little bites up with peppers, spinach and a zesty seasoning for a healthy dinner for all the family!</p>
  <p class="mb-0">The best thing, these only take around 30 minutes to cook! Packed with healthy nutrients and flavour, halloumi fajitas are great when wanting to incorporate some new tastes and flavours into your children’s diet.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Halloumi Fajitas Ingredients</h3>
  <ul class="mb-2">
    <li>1-2 tsp olive oil/Low cal spray</li>
    <li>4 bell peppers (I stick to red and orange)</li>
    <li>4 tsp cajun spice mix (Old El Paso is my fave)</li>
    <li>500 g halloumi cheese sliced</li>
    <li>2 tsp runny honey</li>
  </ul>
  <h4 class="h5 mb-2">Serve with:</h4>
  <ul class="mb-0">
    <li>8 Tortilla wraps</li>
    <li>Sour cream/greek yoghurt/light mayo</li>
    <li>Avocado</li>
    <li>Mild or spicy salsa based on preference</li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Halloumi Fajitas Recipe</h3>
  <ol class="list-unstyled mb-0">
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">1.</span> Heat your olive oil or low calorie cooking spray in a large frying pan until smoking hot.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">2.</span> Add your peppers and a large serving of the spice mix, around half, and cook until the peppers start to blacken around the edges. Once cooked, remove from the pan and set to one side in a bowl.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">3.</span> Place the halloumi into the empty, hot frying pan and sprinkle the remaining spice mix over the cheese. Cook on both sides for a couple of minutes. You’ll notice the halloumi will start to show a grilled like brown colour.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0"><span class="fw-bold">4.</span> Drizzle a little honey over seconds prior to removing it from the pan.</p>
    </li>
    <li>
      <p class="mb-0"><span class="fw-bold">5.</span> Dish up altogether on a platter with peppers, tortilla wraps, yoghurt/light mayo and salsa.</p>
    </li>
  </ol>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">My cooking tips:</h3>
  <ul class="mb-0">
    <li>If you prefer your halloumi to be softer, then cook for just 20 minutes. I tend to cook mine a little longer as I like it a little more crispy, but that’s just my preference.</li>
    <li>If you are going to reheat these the next day, I would advise cooking them for a shorter time, crispy halloumi doesn’t reheat too well.</li>
    <li>Continue to mix up the vegetables you use the more you make the flavoursome dish. Mushrooms, courgettes and cucumber also work well and are super for developing your children’s food pallet.</li>
    <li>You can further save some calories by using reduced fat halloumi.</li>
    <li>Serve up with big spoons and let the kids make their own wraps. An early introduction to a range of different food types will do wonders for their diet, especially when needing a variety of nutrients to help support of healthy diet</li>
  </ul>
</section>
<section>
  <p class="mb-2">I hope you and your family enjoy making these as much as mine. Please let me know how you got on when making this Halloumi Fajitas recipe and any feedback from the little ones.</p>
  <p class="mb-2">I would love to see your halloumi creations by tagging (@michelle_motherfit) on Instagram! Let’s get cooking.</p>
  <p class="mb-0">Love Michelle x</p>
</section>'
recipe_1.prep_time = 15
recipe_1.cook_time = 30
recipe_1.created_at = "13/08/2021"
recipe_1.save!

recipe_2 = Recipe.find_or_initialize_by(title: "Healthy Breakfast for Kids: 6 Easy Breakfast Recipes")
recipe_2.category = nutrition
recipe_2.user = michelle
recipe_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/healthy-breakfast-recipes-for-children-oats-porridge-berries.jpg"),
  filename: "healthy-breakfast-recipes-for-children-oats-porridge-berries.jpg",
  content_type: "image/jpeg"
)
recipe_2.excerpt = "Healthy breakfast for kids full of nutritional value and goodnessAs a mum of 4 (can't forget the two dogs), I can fully understand how the morning school run can leave little time for gathering inspiration when cooking up new healthy breakfast recipes for the..."
recipe_2.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">Healthy breakfast for kids full of nutritional value and goodness</h3>
  <p class="mb-2">As a mum of 4 (can’t forget the two dogs), I can fully understand how the morning school run can leave little time for gathering inspiration when cooking up new healthy breakfast recipes for the children. It can become so easy and mundane to get stuck in a breakfast routine of Coco Pops and other sugary cereals. Although tasting amazing, the overall nutritional value to your children and yourself is not the best.</p>
  <p class="mb-2">This blog aims to add some inspiration to your morning routine with some simple, quick and delicious healthy breakfast recipes for you and your children. Keeping your children full and their concentration levels at their peak, ready for a day of learning ahead.</p>
  <p class="mb-0">Whether you have a baby, toddler or child, I’ve got you covered!</p>
  Are you ready? <span class="fw-bold">Right, let’s go!</span>
</section>
<section class="mb-4">
  <ol class="mb-0 list-unstyled">
    <li class="mb-2">
      <p class="mb-0">1. The top spot can only belong to one, <span class="fw-bold">PORRIDGE</span>. Packed with vitamins and minerals that are key in aiding your child’s growth and keeping them full, which can help maintain a strong attention span on school days.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0">2. <span class="fw-bold">Overnight Oats</span>. Kind of like porridge, but simpler! My go-to healthy breakfast for kids and myself whenever we are on the go. Just pop some oats in a jar or tupperware with some other ingredients (my kids love blueberries and strawberries), top it up with some milk and leave it in the fridge overnight. I tend to add some chocolate protein powder to mine for that little extra kick of sweetness.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0">3. <span class="fw-bold">Power Pancakes</span>. My girls and I come up with the name “Power Pancakes” as it gets them super excited for their morning meal while being full of all the good stuff to keep them focused and attentive for a successful school day. Add some chopped banana, blueberries and a sprinkling of chia seeds for that added omega 3 boost.</p>
    </li>
    <li class="mb-2">
      <p class="mb-0">4. <span class="fw-bold">Yoghurt with fruits and oats</span>. These 3 little super ingredients are so versatile as you can switch up the fruit and flavour of yoghurt throughout the week. My personal fave is some chopped apple with a sprinkling of oats and a high protein yoghurt. Let the kids mix it all up together for a tasty breakfast feast! What I also love about this option is how quick it is to make when running short for time in the morning.</p>
    </li>
    <li class="mb-2">
    <p class="mb-0">5. <span class="fw-bold">Cereal with Fruit</span>. Cereal is by far the easiest of them all to make, especially when in a rush. However, our goal is to keep things healthy! So make sure to look out for cereals with a low sugar content (the kids LOVE Bitesized Shredded Wheat) and really add some colour to it by combining it with some chopped fruit. I also like to use Oatmilk for that extra creamy texture to my morning snack.</p>
    </li>
    <li>
      <p class="mb-0">6. <span class="fw-bold">Breakfast Super Smoothie</span>! Probably my girls favourite out of them all. Kids can sometimes be reluctant to physically eat a meal after they’ve just got out of bed. However, one thing I can always count on them to do is to drink a smoothie. An oat-based smoothie filled with a mix of whole grains, fibre, and protein can pack a super nutritional punch. Jazz it up with some strawberries and pour it into a glass with a straw, and I promise your little’uns will love it! You can also click here to see some of my other quick and healthy smoothie recipes for building muscle and losing fat.</p>
    </li>
  </ol>
</section>
<section>
  <p class="mb-2">I hope my healthy breakfast recipes and tips have managed to provide some A.M. inspiration for you and your children! For lots more kid-friendly meal ideas, check out my latest blogs below.</p>
  <p class="mb-0">Love Michelle x</p>
</section>'
recipe_2.prep_time = 0
recipe_2.cook_time = 0
recipe_2.created_at = "10/05/2021"
recipe_2.save!


recipe_3 = Recipe.find_or_initialize_by(title: "Crunchy Banana Yoghurt")
recipe_3.category = nutrition
recipe_3.user = michelle
recipe_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/crunchy-banana-yoghurt.jpeg"),
  filename: "crunchy-banana-yoghurt.jpeg",
  content_type: "image/jpeg"
)
recipe_3.excerpt = "Recipe Crunchy Banana YoghurtIngredients 170g fat-free natural Greek-style yoghurt  Half a banana (peeled and sliced)  7g mixed seeds (pumpkin, sesame and sunflower) or use toasted flaked almonds OverviewA healthy, child friendly breakfast option 149 calories..."
recipe_3.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">A healthy, child friendly breakfast option 🍌</h3>
  <span class="fw-bold mb-2">149 calories</span>
  <p class="mb-0">The perfect low-calorie, light breakfast or snack. The combination of banana and yoghurt creates a subtle sweetness to hit those sweet tooth cravings. The topping of nuts adds a crunchy texture to make this delicious pot a fantastic breakfast/snack option.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Ingredients</h3>
  <ul class="mb-0">
    <li>170g fat-free natural Greek-style yoghurt</li>
    <li>Half a banana (peeled and sliced)</li>
    <li>7g mixed seeds (pumpkin, sesame and sunflower) or use toasted flaked almonds</li>
  </ul>
</section>
<section>
  <h3 class="h4 mb-2">Instructions</h3>
  <ol class="mb-0">
    <li>Put the yoghurt in a small bowl.</li>
    <li>Scatter the banana on top.</li>
    <li>Sprinkle with seeds or nuts and serve.</li>
  </ol>
</section>
'
recipe_3.prep_time = 5
recipe_3.cook_time = 0
recipe_3.created_at = "1/03/2022"
recipe_3.save!

recipe_4 = Recipe.find_or_initialize_by(title: "Apple Pie Protein Baked Oats")
recipe_4.category = nutrition
recipe_4.user = michelle
recipe_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/posts/apple-pie-protein-baked-oats.jpeg"),
  filename: "apple-pie-protein-baked-oats.jpeg",
  content_type: "image/jpeg"
)
recipe_4.promoted = true
recipe_4.excerpt = "Recipe Apple Pie Protein Baked OatsIngredients 4 cooking apples (Granny Smith) 1 splash water 2 tbsp. maple syrup ½ tsp. cinnamon 200 g rolled oats tsp. baking powder 2 scoops Whey Protein (Vanilla) 1 tsp. baking powder 1 pinch salt 300 ml milk 1 pinch brown sugar..."
recipe_4.body ='
<section class="mb-4">
  <h3 class="h4 mb-2">The perfect healthy breakfast for cold winter mornings!</h3>
  <p class="mb-2">A super healthy apple pie, packed with protein. These apple pie protein baked oats are the perfect breakfast dish to help build muscle and keep you full right up until lunchtime.</p>
  <p class="mb-0">This recipe makes enough to serve 4 people, making the apple pie protein baked oats a great breakfast option for all the family. It can also be kept in the fridge for 3-4 days, so you can quickly throw it in the microwave before the school morning rush.</p>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Ingredients</h3>
  <ul class="mb-0">
    <li>4 cooking apples (Granny Smith)</li>
    <li>1 splash water</li>
    <li>2 tbsp. maple syrup</li>
    <li>½ tsp. cinnamon</li>
    <li>200 g rolled oats</li>
    <li>tsp. baking powder</li>
    <li>2 scoops Whey Protein (Vanilla)</li>
    <li>1 tsp. baking powder</li>
    <li>1 pinch salt</li>
    <li>300 ml milk</li>
    <li>1 pinch brown sugar (for dusting)</li>
    <li>1 pinch cinnamon (for dusting)</li>
  </ul>
</section>
<section class="mb-4">
  <h3 class="h4 mb-2">Instructions</h3>
  <ol class="mb-0">
    <li>Preheat oven to 180°C/360°F.</li>
    <li>Peel and core the apples, then dice them into small chunks keeping aside 12 thin slices for toppings later.</li>
    <li>Transfer the apple chunks to a saucepan, then add the water, maple syrup, and cinnamon, and cook on a lowmedium heat for 10-15 minutes, until the liquid reduces and apples are soft.</li>
    <li>Meanwhile, in a large mixing bowl, combine the rolled oats, vanilla protein, baking powder, and salt. Stir in the milk.</li>
    <li>Once apples are cooked, divide between 4 oven-proof ramekins, then top with the oat mixture. Add three apple slices on top each one, then sprinkle with brown sugar and a pinch of cinnamon.</li>
    <li>If baking all straight away, place the ramekins on a baking tray and bake for 10-12 minutes. Alternatively, you could batch make these baked oats but then cook individually so they’re fresh each morning – just cover and keep refrigerated for up to 3 days.</li>
  </ol>
</section>
<section>
  <h3 class="h4 mb-2">Nutritional Facts</h3>
  <h4 class="h5 mb-2">Amount per serving</h4>
  <p class="mb-0">362</p>
  <p class="fw-bold mb-2">Calories</p>
  <p class="mb-0">16g</p>
  <p class="fw-bold mb-2">Protein</p>
  <p class="mb-0">60g</p>
  <p class="fw-bold mb-2">Carbs</p>
  <p class="mb-0">6.2g</p>
  <p class="fw-bold mb-0">Fat</p>
</section>
'
recipe_4.prep_time = 30
recipe_4.cook_time = 15
recipe_4.created_at = "11/02/2022"
recipe_4.save!
