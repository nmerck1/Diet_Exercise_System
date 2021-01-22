/*
-- Let's define some names and what they mean (the rules for each): --
--	(Note: Kosher recipes are a default in this website so there won't be a need to define pork, shrimp, shellfish, etc recipes for example) --
	
	-- DIET --
	ingredients (		-- amount is assumed to be one serving. (You wouldn't have the same exact ingredient name with a different amount in this table)
		name,				-- Ex: Broccoli, Chicken, Cow Milk, Oat Milk, Havarti Cheese
		--brand,			-- will store (Ex: Oatly, Mcormick, Arm&Hammer, Applegate, Great Value, 
		serving,			-- will store (Ex: 1, 100, 3, etc.)
		measurement,		-- will store (Ex: cup, gram, lb, etc.)	-- if plural, the code will add an 's' to the end --
		
		cook_type,			-- will store (Ex: Raw, Roasted, Boiled, Grilled, Fried, Poached, or  if not cooked: NONE )
		is_snack,			-- will store (Ex: 1 for yes, 0 for no)
		--filters,			-- will store (Ex: Vegan|Vegetarian or Vegetarian|Gluten Free or Meat Free|Nut Free|Soy Free, etc.)
		food_cat,			-- will store (Ex: Vegetable, Fruit, Grain, Meat, Dairy, Nuts, Seed, Legume, Fish, Bread
		--food_tags,		-- will store (Ex: High Protein|Low Calorie or High Carb, etc.)
		--spec_food,		-- will store (Ex: Chicken, Beef, Fish, Lamb, Deer, Bread, Pasta, 
		
		calories,			-- will store (Ex: 10, 25, 50, 100, 150, 300, 290, etc.)
		macro_names,		-- will store ids from macros table (Ex: 1|2|5 or 6|12|3, etc...)
		macro_amounts,		-- will store the amount of each macro in order with names (Ex: 
		macro_measures,		-- will store each measurement in order (Ex: g|g|g| or kg|oz|lb, etc.)
		
		--- DELETED (ADD LATER) ---
		--micro_names,			-- will store ids from micros table (Ex: 1|2|5 or 6|12|3, etc...)
		--micro_amounts,		-- will store the amount of each macro in order with names (Ex: 
		--micro_measures,		-- will store each measurement in order (Ex: g|g|g| or kg|oz|lb, etc.)
		---------------------------
		
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
		
	)
	recipes (		-- a collection of ingredients with specific quantities of each item and also has directions
		name,
		meal_time,			-- will store (Ex: Breakfast, Lunch, Dinner, Anytime )
		ingredients,		-- will store ingredients id's separated by a pipeline (Ex:   1|34|67|2|10    etc.)
		ing_amounts,		-- will store amount of that ingredient (Ex: 1|0.5|0.25 or 2|1|0.75, etc.)
		directions,			-- will store direction steps separated by a pipeline (Ex:   Get a bowl|Put ingredient in bowl|Mix until conisistent    etc.)
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	--- QUESTIONABLE TABLE.... --
	snacks (		-- do not have directions attached to them, or a specific meal time they are anytime by default, 
		name,
		ingredients,		-- will store ingredients id's separated by a pipeline (Ex:   1|34|67|2|10    etc.)
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	-----------------------------
	macros (
		abbr,
		full_name,
		description,
		is_active,
	)
	-- list of macros --
	------------------------------------------------------------------------------------------------------------------------------------------------
	abbr	full_name			description
	------------------------------------------------------------------------------------------------------------------------------------------------
	carbs	Carbohydrates		Role in the Body
								1. Fuel during high intensity exercise
								2. Spares protein (to preserve muscle mass during exercise)
								3. Fuel for the Central Nervous System (your brain!)
	pro		Protein				Role in the Body
								1. Tissue structure (part of organ tissues, muscle, hair, skin, nails, bones, tendons, ligaments and blood plasma)
								2. Part of cell plasma membranes
								3. Involved in metabolic, transport, and hormone systems
								4. Make up enzymes that regulate metabolism
								5. Invovled in acid/base balance to maintain a neutral environment in our bodies
	fat		Fat					Role in the Body
								1. Energy reserve
								2. Protects vital organs
								3. Insulation
								4. Transport fat soluble vitamins
	sug		Sugar
	fib		Fiber
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	micros (
		sodium,
		calcium,
		vit_a,
		vit_b12,
		vit_c,
		vit_d,
		vit_e,
		iron,
		manganese,
		iodine,
		selenium
	)
	-- list of micros --
	-----------------------------------------
	abbr		full_name		description
	-----------------------------------------
	sod,		Sodium
	calc,		Calcium
	vit_a,		Vitamin A
	vit_b1,		Vitamin B1
	vit_b2,		Vitamin B2
	vit_b3,		Vitamin B3
	vit_b7,		Vitamin B7
	vit_b9,		Vitamin B9
	vit_b12,	Vitamin B12
	vit_c,		Vitamin C
	vit_d,		Vitamin D
	vit_e,		Vitamin E
	vit_k		Vitamin K
	iron,		Iron
	mang,		Manganese
	iod,		Iodine
	sel			Selenium
	-----------------------------------------
	
	-- OTHER FOOD TABLES --
	filters (
		name,
		description,
		is_active,
	)
	-- list of filters --
	-------------------------------------
	name			description
	-------------------------------------
	Vegan
	Vegetarian
	Pescatarian
	Keto
	Atkins
	Mediterranean
	Meat Free
	Nut Free
	Soy Free
	Dairy Free
	Gluten Free
	Oil Free
	NONE
	-------------------------------------
	
	categories (
		name,
		--spec_type,	-- this is the name of the ingredient
		description,
		is_active,
	)
	-- list of categories --
	-------------------------------------
	name			description
	-------------------------------------
	Vegetable		Leafy Green(Kale, Spinach) or Fungus (Mushrooms) Root (Carrots, Potatoes, Radishes, Onions)    etc...
	Fruit			Apple, Orange, Strawberry, Blueberry, Pineapple, Kiwi, Banana, Raspberry, Coconut?
	Meat			Chicken, Cow, Fish, Lamb, Deer, Elk, Bison, Egg?
	Nut				Peanut, Almond, Brazilian, Cashew
	Legume			Bean, Pea
	Dairy			Milk, Cheese, Yogurt, Cream, Butter,
	Seed			Sunflower, Pumpkin, 
	Oil				Sunflower, Safflower, Coconut, Olive, Avocado, Canola, Vegetable, Peanut
	-------------------------------------
	
	key_tags (
		name,
		description,
		is_active,
	)
	-- list of key_tags --
	-------------------------------------
	name			description
	-------------------------------------
	Low Carb
	Low Fat
	Low Sugar
	Low Calorie
	High Carb
	High Fat
	High Protein
	High Calorie
	-------------------------------------
	
	measurements (
		abbr,
		full_name,
		is_active,
	)
	-- list of measurements --
	-------------------------------------
	abbr	full_name
	-------------------------------------
	lb		pound
	g		gram
	oz		ounce
	c 		cup
	kg		kilogram
	l 		liter
	ml		mililiter
	pt		pint
	gal		gallon
	tsp		teaspoon
	tbsp	tablespoon
	qt		quart
	-------------------------------------
	
	cook_types (
		name,
		description,
		is_active,
	)
	-- list of cook_types --
	-------------------------------------
	name		description
	-------------------------------------
	Boiled	
	Roasted
	Grilled
	Fried
	Raw
	Poached
	Other
	-------------------------------------
	
	
	-- FITNESS --
	-- (Note: Default duration type is always minutes. If activity is less than a minute, then it will be converted to seconds)
	exercises (
		name,				-- will store (Ex: Push ups, Pull ups, Cardio, Walking, Swimming, Weights, Tennis, etc.)
		machine,			-- will store (Ex: Pull up bar, Treadmill, Ab Crunch, Shoulder Press, Shoulder Pull, Free Weights, Bike, Swimming, Other, NONE, etc.)
		duration,			-- will store (Ex: 1, 30, 45, 1.5, 90, 0.5, etc.)
		--dur_type			-- will store (Ex: min, hr, sec, day, week, month, year, etc.) -- if plural, the code will add an 's' to the end --
		--sets,				-- will store (Ex: 1, 2, 3, etc.)
		--reps,				-- will store (Ex: 5, 6, 7, 10, 15, etc.)
		cal_burn,			-- will store (Ex: 10, 100, 250, 500, etc.)
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	machines (
		name,
		description,
		is_active,
	)
	-- list of machines --
	-------------------------------------
	name				description
	-------------------------------------
	Pull up Bar
	Treadmill
	Ab Crunch
	Shoulder Press
	Pull Down
	Free Weights
	Bike
	Other
	NONE
	-------------------------------------
	
	body_types (
		name,
		description,
		is_active,
	)
	-- list of body_types --
	---------------------------------------------------------------------------
	name			description
	---------------------------------------------------------------------------
	Ectomorph		Slender frame, less fat, less muscles, High metabolism. Your goal is going to be gaining weight.
	Mesomorph		Athletic frame, less fat, more muscles, Medium metabolism. Your goal is going to be maintaining weight.
	Endomorph		Big frame, more fat, less muscles Low metabolism. Your goal is going to be losing weight.
	Other			Undefined
	---------------------------------------------------------------------------
	
	act_lvls (
		name,
		description,
		is_active,
	)
	
	-- list of act_lvls --
	-----------------------------------------------------------------------------------------------------------------------
	name				description
	-----------------------------------------------------------------------------------------------------------------------
	Sedentary			No exercise at all, walking to car, then to work place
	Lightly Active		Exercise 1-2 times a week, some additional walking
	Active				Exercise 3-4 times a week, go to the gym using weights doing cardio
	Very Active			Exercise 5-7 times a week, gym almost everyday of the week doing heavy weights and a lot ofcardio
	-----------------------------------------------------------------------------------------------------------------------
	
	-- MANAGEMENT --
	diet_fit_schedules (
		id,					-- PRIMARY KEY
		user,				-- FOREIGN KEY: id of person with this in their rountine
		custom_name,		-- name that user creates (Default: 'Routine1')
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	diet_fit_days (
		day_id				-- PRIMARY KEY
		schedule_id,		-- FOREIGN KEY: id for the main rountine week so that it can all be laid out together in a calendar 
		user				-- FOREIGN KEY: id of person with this in their rountine
		day,				-- FOREIGN KEY: id of day name (Ex: 1, 2, 3, etc.)
		rec_exer_names,		-- names of premade recipes or exercises (Ex: Grilled Cheese|Tomato Basil Soup or Pull ups|Push ups,  etc.)	
		rec_exer_amounts,	-- amount of each recipe/meal or exercise (Ex: 2|1)
		date_created,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	
	days (
		id,					-- PRIMARY KEY
		abbr,
		full_name,
		is_active
	)
	-- list of days --
	---------------------------
	abbr	full_name		
	---------------------------
	sun		Sunday
	mon		Monday
	tue		Tuesday
	wed		Wednesday
	thu		Thursday
	fri		Friday
	sat		Saturday
	---------------------------
	
	
	
	----------- Deleted ideas: -----------------
	meals (			-- a collection of ingredients 
		name,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	snacks (			-- one ingredient that you can consume without cooking/prepping (ready to eat)
		name,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	directions (	-- an ordered list of steps to take in order to cook and/or prep a recipe/meal
		name,
		is_active,			-- will store (Ex: 1 for yes, 0 for no)
	)
	--------------------------------------------
	
	
	
	
	
*/
CREATE DATABASE diet_exercise;

CREATE TABLE users(
	user_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	role int(11),					-- FOREIGN KEY: role id for me will be 1 since I am an admin.	Roles: 1=admin, 2=member, 3=guest
	username varchar(255),			-- nmerck
	password varchar(255),			-- MD5 encrypting (12sad87as87a8s) something like that...
	first_name varchar(255),		-- Nathaniel
	dob date,						-- 1997-11-19
	feet int(11),					-- 6
	inches int(11),					-- 4
	body_type int(11),				-- FOREIGN KEY: Ectomorph (Slender), Mesomorph (Athletic), Endomorph (Big-Frame) 
	curr_lbs int(11),				-- 160
	goal_lbs int(11), 				-- 180
	body_fat decimal(18, 2),	-- 11.5
	curr_act int(11), 			-- FOREIGN KEY: Active (3 days a week at gym, 2 days walking)	-- website defines what Sedentary, Active, Lightly Active, Very Active are
	date_created date,				-- 2021-01-20
	is_active int(11)				-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO users(role, username, password, first_name, dob, feet, inches, body_type, curr_lbs, goal_lbs, body_fat, curr_act, date_created, is_active) 
values(1, 'nmerck', 'foo', 'Nathaniel', '1997-11-19', '6', '4', 1, '160', '180', 11.5, 3, CURDATE(), 1);

CREATE TABLE lb_history(
	hist_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	this_user int(11),				-- FOREIGN KEY: user's id
	weight int(11),					-- in lbs by default
	date_entered date,				-- 2021-01-20
	is_active int(11)				-- will store (Ex: 1 for yes, 0 for no)
);

CREATE TABLE roles (
	role_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	role_name varchar(255),
	date_created date,				-- 2021-01-20
	is_active int(11)				-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO roles(role_name, date_created, is_active) values('Admin', CURDATE(), '1');
INSERT INTO roles(role_name, date_created, is_active) values('Member', CURDATE(), '1');
INSERT INTO roles(role_name, date_created, is_active) values('Guest', CURDATE(), '1');

-- excluded columns:
	--brand,						-- will store (Ex: Oatly, Mcormick, Arm&Hammer, Applegate, Great Value, 
	--is_snack,						-- will store (Ex: 1 for yes, 0 for no)
	--filters,						-- will store (Ex: Vegan|Vegetarian or Vegetarian|Gluten Free or Meat Free|Nut Free|Soy Free, etc.)
	--food_tags,					-- will store (Ex: High Protein|Low Calorie or High Carb, etc.)
	--spec_food,					-- will store (Ex: Chicken, Beef, Fish, Lamb, Deer, Bread, Pasta, 
	--- (We know the order of macro ids that wont change, so we dont need to store names, and then we dont need measures because macros are grams by default ) ---
	--macro_names varchar(255),		-- FOREIGN KEY: will store ids from macros table (Ex: 1|2|5 or 6|12|3, etc...)
	--macro_measures varchar(255),	-- FOREIGN KEY: will store each measurement in order (Ex: g|g|g| or kg|oz|lb, etc.)
	--- (ADD LATER) ---
	--micro_names,			-- will store ids from micros table (Ex: 1|2|5 or 6|12|3, etc...)
	--micro_amounts,		-- will store the amount of each macro in order with names (Ex: 
	--micro_measures,		-- will store each measurement in order (Ex: g|g|g| or kg|oz|lb, etc.)
	
CREATE TABLE ingredients(
	ing_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	ing_name varchar(255),			-- Ex: Broccoli, Chicken, Cow Milk, Oat Milk, Havarti Cheese
	serving decimal(18,2),				-- will store (Ex: 1, 100, 3, etc.)
	measurement int(11),			-- FOREIGN KEY: will store (Ex: cup, gram, lb, etc.)	-- if plural quantity/serving, the code will add an 's' to the end --
	cook_type int(11),				-- FOREIGN KEY: will store (Ex: Raw, Roasted, Boiled, Grilled, Fried, Poached, or  if not cooked: NONE )
	category int(11),				-- FOREIGN KEY: will store (Ex: Vegetable, Fruit, Grain, Meat, Dairy, Nuts, Seed, Legume, Fish, Bread
	calories int(11),				-- will store (Ex: 10, 25, 50, 100, 150, 300, 290, etc.)
	macro_amounts varchar(255),		-- will store the amount of each macro in order with names (Ex: 1|100 or 2|5|0.5, etc.)
	date_created date,
	is_active int(11)				-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO ingredients(ing_name, serving, measurement, cook_type, category, calories, macro_amounts, date_created, is_active)
values('Broccoli', 1, 4, 1, 1, 30, '6|2.6|0.3|?|2.4', CURDATE(), 1);
INSERT INTO ingredients(ing_name, serving, measurement, cook_type, category, calories, macro_amounts, date_created, is_active)
values('Brown Rice', 1, 4, 1, 9, 216, '45|5|1.8|?|3.5', CURDATE(), 1);
INSERT INTO ingredients(ing_name, serving, measurement, cook_type, category, calories, macro_amounts, date_created, is_active)
values('Green Peas', 0.5, 4, 1, 5, 62, '11|4|?|?|?', CURDATE(), 1);


-- by default, macros always have a measurement of grams... --
CREATE TABLE macros (
	mac_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	abbr varchar(255),				-- abbreviation of full name
	full_name varchar(255),
	description varchar(255),
	is_active int(11)
);

INSERT INTO macros(abbr, full_name, description, is_active) values('carbs', 'Carbohydrates', '', 1);
INSERT INTO macros(abbr, full_name, description, is_active) values('pro', 'Protein', '', 1);
INSERT INTO macros(abbr, full_name, description, is_active) values('fat', 'Fat', '', 1);
INSERT INTO macros(abbr, full_name, description, is_active) values('sug', 'Sugar', '', 1);
INSERT INTO macros(abbr, full_name, description, is_active) values('fib', 'Fiber', '', 1);

CREATE TABLE recipes (		-- a collection of ingredients with specific quantities of each item and also has directions
	rec_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	rec_name varchar(255),
	meal_time varchar(255),			-- will store (Ex: Breakfast, Lunch, Dinner, Anytime )		NOT A FOREIGN KEY... yet...
	ingredients varchar(255),		-- will store ingredients id's separated by a pipeline (Ex:   1|34|67|2|10    etc.)
	ing_amounts varchar(255),		-- will store amount of that ingredient (Ex: 1|0.5|0.25 or 2|1|0.75, etc.)
	directions varchar(255),		-- will store direction steps separated by a pipeline (Ex:   Get a bowl|Put ingredient in bowl|Mix until conisistent    etc.)
	date_created date,
	is_active int(11)				-- will store (Ex: 1 for yes, 0 for no)
);
-- excluded columns:
	--spec_type,	-- this is the name of the ingredient

CREATE TABLE measurements (
	mea_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	abbr varchar(255),				-- abbreviation of full name
	full_name varchar(255),
	description varchar(255),
	is_active int(11)
);

INSERT INTO measurements(abbr, full_name, description, is_active) values('lb', 'pound', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('g', 'gram', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('oz', 'ounce', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('c', 'cup', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('kg', 'kilogram', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('l', 'liter', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('ml', 'mililiter', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('pt', 'pint', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('gal', 'gallon', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('tsp', 'teaspoon', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('tbsp', 'tablespoon', '', 1);
INSERT INTO measurements(abbr, full_name, description, is_active) values('qt', 'quart', '', 1);

CREATE TABLE cook_types (
	cook_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	cook_name varchar(255),
	description varchar(255),
	is_active int(11)
);

INSERT INTO cook_types(cook_name, description, is_active) values('Boiled', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Roasted', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Grilled', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Fried', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Raw', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Poached', '', 1);
INSERT INTO cook_types(cook_name, description, is_active) values('Other', '', 1);

CREATE TABLE categories (
	cat_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	cat_name varchar(255),
	description varchar(255),
	is_active int(11)
);

INSERT INTO categories(cat_name, description, is_active) values('Vegetable', 'Leafy Green(Kale, Spinach), Fungus (Mushrooms) Root (Carrots, Potatoes, Radishes, Onions) etc.', 1);
INSERT INTO categories(cat_name, description, is_active) values('Fruit', 'Apple, Orange, Strawberry, Blueberry, Pineapple, Kiwi, Banana, Raspberry, Coconut?', 1);
INSERT INTO categories(cat_name, description, is_active) values('Meat', 'Chicken, Cow, Fish, Lamb, Deer, Elk, Bison, Egg?', 1);
INSERT INTO categories(cat_name, description, is_active) values('Nut', 'Peanut, Almond, Brazilian, Cashew', 1);
INSERT INTO categories(cat_name, description, is_active) values('Legume', 'Bean, Pea', 1);
INSERT INTO categories(cat_name, description, is_active) values('Dairy', 'Milk, Cheese, Yogurt, Cream, Butter', 1);
INSERT INTO categories(cat_name, description, is_active) values('Seed', 'Sunflower, Pumpkin', 1);
INSERT INTO categories(cat_name, description, is_active) values('Oil', 'Sunflower, Safflower, Coconut, Olive, Avocado, Canola, Vegetable, Peanut', 1);
INSERT INTO categories(cat_name, description, is_active) values('Grain', 'Rice, Pasta, Bread, Bagels, Barley, Rye', 1);

-- excluded columns:
	--dur_type			-- will store (Ex: min, hr, sec, day, week, month, year, etc.) -- if plural, the code will add an 's' to the end --
	--sets,				-- will store (Ex: 1, 2, 3, etc.)
	--reps,				-- will store (Ex: 5, 6, 7, 10, 15, etc.)
	
CREATE TABLE exercises (
	ex_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,	
	ex_name varchar(255),			-- will store (Ex: Push ups, Pull ups, Cardio, Walking, Swimming, Weights, Tennis, etc.)
	machine int(11),				-- FOREIGN KEY: will store (Ex: Pull up bar, Treadmill, Ab Crunch, Shoulder Press, Shoulder Pull, Free Weights, Bike, Swimming, Other, NONE, etc.)
	duration decimal(18,2),			-- will store (Ex: 1, 30, 45, 1.5, 90, 0.5, etc.)	-- MINUTES IS DEFAULT DURATION TYPE --
	cal_burn int(11),				-- will store (Ex: 10, 100, 250, 500, etc.)
	date_created date,
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);

CREATE TABLE machines (
	mach_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	mach_name varchar(255),	
	description varchar(255),
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO machines(mach_name, description, is_active) values('Pull up bar', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Treadmill', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Ab Crunch', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Shoulder Press', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Shoulder Pull', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Free Weights', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Bike', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Swimming', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('Other', '', 1);
INSERT INTO machines(mach_name, description, is_active) values('NONE', '', 1);

CREATE TABLE body_types (
	body_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	body_name varchar(255),	
	description varchar(255),
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO body_types(body_name, description, is_active) values('Ectomorph', 'Slender frame, less fat, less muscles, High metabolism. Your goal is going to be gaining weight.', 1);
INSERT INTO body_types(body_name, description, is_active) values('Mesomorph', 'Athletic frame, less fat, more muscles, Medium metabolism. Your goal is going to be maintaining weight.', 1);
INSERT INTO body_types(body_name, description, is_active) values('Endomorph', 'Big frame, more fat, less muscles Low metabolism. Your goal is going to be losing weight.', 1);
INSERT INTO body_types(body_name, description, is_active) values('Other', 'Undefined.', 1);


CREATE TABLE act_lvls (
	act_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	act_name varchar(255),	
	description varchar(255),
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);

INSERT INTO act_lvls(act_name, description, is_active) values('Sedentary', 'No exercise at all, walking to car, then to work place.', 1);
INSERT INTO act_lvls(act_name, description, is_active) values('Lightly Active', 'Exercise 1-2 times a week, some additional walking.', 1);
INSERT INTO act_lvls(act_name, description, is_active) values('Active', 'Exercise 3-4 times a week, go to the gym using weights doing cardio.', 1);
INSERT INTO act_lvls(act_name, description, is_active) values('Very Active', 'Exercise 5-7 times a week, gym almost everyday of the week doing heavy weights and a lot of cardio.', 1);

CREATE TABLE diet_fit_schedules (
	sched_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	this_user int(11),			-- FOREIGN KEY: id of person with this in their rountine
	custom_name varchar(255),	-- name that user creates (Default: 'Routine1')
	date_created date,
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);

CREATE TABLE diet_fit_days (
	rout_day_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	schedule_id int(11),			-- FOREIGN KEY: id for the main rountine week so that it can all be laid out together in a calendar 
	this_user int(11),				-- FOREIGN KEY: id of person with this in their rountine
	day int(11),					-- FOREIGN KEY: id of day name (Ex: 1, 2, 3, etc.)
	rec_exer_names varchar(255),	-- names of premade recipes or exercises (Ex: Grilled Cheese|Tomato Basil Soup or Pull ups|Push ups,  etc.)	
	rec_exer_amounts varchar(255),	-- amount of each recipe/meal or exercise (Ex: 2|1)
	date_created date,
	is_active int(11)			-- will store (Ex: 1 for yes, 0 for no)
);
	
CREATE TABLE days (
	day_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	abbr varchar(255),				-- abbreviation of full name
	full_name varchar(255),
	description varchar(255),
	is_active int(11)
);

INSERT INTO days(abbr, full_name, description, is_active) values('sun', 'Sunday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('mon', 'Monday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('tue', 'Tuesday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('wed', 'Wednesday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('thu', 'Thursday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('fri', 'Friday', '', 1);
INSERT INTO days(abbr, full_name, description, is_active) values('sat', 'Saturday', '', 1);




----------------------------------------------------------------------------------------------------------------
--------------------------------------- TEST QUERIES -----------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

SELECT 
	ingredients.ing_name,
	ingredients.serving,
	measurements.full_name AS 'measurement',
	cook_types.cook_name AS 'cook_type',
	categories.cat_name AS 'category',
	ingredients.calories
FROM ingredients

LEFT JOIN measurements 
	ON ingredients.measurement = measurements.mea_id
LEFT JOIN cook_types 
	ON ingredients.cook_type = cook_types.cook_id
LEFT JOIN categories 
	ON ingredients.category = categories.cat_id

WHERE ingredients.ing_id = 1;














