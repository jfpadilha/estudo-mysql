
CREATE DATABASE agregacao;
USE agregacao;

/*
	DDL - Data Definition Languages
*/

CREATE TABLE categorias(
	idCategoria INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(20) NOT NULL,
    PRIMARY KEY(idCategoria));
    
CREATE TABLE produtos(
	idProduto INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(60) NOT NULL,
    precoVenda DECIMAL(8,2) NOT NULL,
    precoCusto DECIMAL(8,2) NOT NULL,
    idCategoria INT NOT NULL,
    PRIMARY KEY(idProduto),
    FOREIGN KEY(idCategoria) REFERENCES categorias(idCategoria));
    
    show tables;
    drop tables categorias;
    describe categorias;
    
    /*
		DML - Data manipulation Languages
    */

/* -- INSERTS TABLE CATEGORIAS - DML
 INSERT INTO categorias (categoria)
VALUES
  ("laoreet"),
  ("magna"),
  ("neque"),
  ("auctor."),
  ("nibh"),
  ("consequat"),
  ("laoreet,"),
  ("Ut"),
  ("semper,"),
  ("Aenean"),
  ("Nulla"),
  ("sem"),
  ("blandit"),
  ("enim"),
  ("dictum"),
  ("velit"),
  ("in"),
  ("at"),
  ("nunc."),
  ("quis"),
  ("viverra."),
  ("venenatis"),
  ("Maecenas"),
  ("sit"),
  ("lobortis"),
  ("semper"),
  ("nulla"),
  ("ac"),
  ("ipsum."),
  ("nonummy"),
  ("rhoncus."),
  ("ornare"),
  ("senectus"),
  ("sapien."),
  ("mi,"),
  ("Duis"),
  ("lacus."),
  ("eget"),
  ("in,"),
  ("tempor"),
  ("eget"),
  ("orci"),
  ("luctus"),
  ("sed"),
  ("orci."),
  ("pharetra"),
  ("magna."),
  ("hendrerit"),
  ("Etiam"),
  ("mollis");
*/    

/* -- INSERTS TABLE PRODUTOS - DML
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Margarine', 760.78, 104.61, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gatorade - Fruit Punch', 798.35, 304.95, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ecolab - Hobart Washarm End Cap', 535.51, 159.63, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chablis 2003 Champs', 702.65, 348.04, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Mix', 649.92, 347.93, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tomatoes - Vine Ripe, Yellow', 993.27, 203.95, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Chuck, Boneless', 908.31, 325.88, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Syrup - Monin - Granny Smith', 714.88, 328.08, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tomatoes Tear Drop', 601.4, 298.17, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sole - Fillet', 667.06, 155.65, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese Cheddar Processed', 935.15, 311.58, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Prosecco Valdobienne', 676.97, 277.28, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepsi - Diet, 355 Ml', 741.9, 374.54, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Blueberries', 512.45, 297.22, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Butter Sweet', 902.66, 305.48, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Masa De Harina Mexican', 846.41, 239.34, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Longos - Grilled Veg Sandwiches', 764.5, 174.09, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake Slab', 506.76, 333.56, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Imitation Flakes', 889.32, 259.79, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin Orange Individual', 758.52, 289.17, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rum - Light, Captain Morgan', 732.75, 320.12, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Pearl', 978.31, 172.63, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Yucca', 998.5, 156.88, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pie Shell - 9', 609.85, 139.0, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chinese Foods - Chicken Wing', 713.75, 364.52, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Glove - Cutting', 655.1, 267.91, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - True North Lager', 896.88, 177.75, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Savory', 957.13, 367.44, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sachet', 551.13, 333.24, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Bernaise, Mix', 847.79, 183.84, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Semi Sweet', 944.96, 419.79, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ecolab - Ster Bac', 736.72, 175.66, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Mini Greens, Whole', 708.46, 380.76, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lamb Rack Frenched Australian', 514.17, 252.24, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Mint', 765.54, 191.92, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Chanterelle, Dry', 640.84, 410.66, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Towel - Roll White', 903.91, 372.26, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Angel Hair', 567.13, 305.55, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apricots Fresh', 501.63, 388.41, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Mini White 3 Oz', 524.76, 314.31, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gin - Gilbeys London, Dry', 711.8, 307.58, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Propel Sport Drink', 669.19, 290.51, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauerkraut', 724.16, 313.75, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Filo Dough', 651.1, 280.72, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Munchies Honey Sweet Trail Mix', 709.79, 222.19, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sansho Powder', 933.21, 219.61, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Corn Syrup', 758.56, 370.72, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Pont Couvert', 661.77, 223.38, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('The Pop Shoppe - Root Beer', 652.26, 109.42, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Pineapple, 341 Ml', 814.77, 301.5, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Ground, Extra Lean, Fresh', 533.63, 302.45, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bagelers - Cinn / Brown', 715.88, 321.19, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Orange Roughy 6/8 Oz', 655.88, 375.12, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Marinara', 920.82, 330.3, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Invert', 983.3, 240.53, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Squid - Tubes / Tenticles 10/20', 955.83, 109.92, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Blue Curacao - Marie Brizard', 645.86, 114.56, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastry - French Mini Assorted', 526.93, 436.77, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Relish', 937.62, 429.32, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Walkers Special Old Whiskey', 867.82, 181.9, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Persimmons', 960.72, 350.61, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Swiss Chard - Red', 834.77, 223.14, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Garlic - Peeled', 714.14, 231.16, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Crab And Brie', 781.61, 369.55, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Heart', 863.92, 297.11, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Paulaner Hefeweisse', 854.3, 119.33, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Back Ribs', 853.11, 274.32, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dooleys Toffee', 868.36, 420.87, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bandage - Finger Cots', 784.77, 394.89, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Casablanca Valley', 638.72, 419.29, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Longos - Lasagna Beef', 528.66, 364.27, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Choc', 715.0, 241.96, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Scampi Tail', 958.58, 150.07, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastry - Chocolate Marble Tea', 708.94, 354.94, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pea - Snow', 738.2, 407.48, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Charddonnay Errazuriz', 604.9, 359.68, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Cappellini, Dry', 617.78, 289.78, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sesame Seed Black', 521.68, 101.66, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Cooked, Corned', 806.69, 435.47, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Port Late Bottled Vintage', 512.29, 143.3, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bagel - Sesame Seed Presliced', 843.98, 207.2, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tart Shells - Savory, 4', 510.46, 159.29, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Chilli Seeds Mild', 852.83, 139.72, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Hamburger Buns', 533.64, 201.7, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oranges - Navel, 72', 592.66, 238.68, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shiratamako - Rice Flour', 960.27, 340.68, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sea Bass - Whole', 847.07, 373.35, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - Livers', 668.22, 319.62, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wakami Seaweed', 512.52, 120.97, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie - Dough Variety', 831.89, 372.75, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chervil - Fresh', 569.27, 103.89, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Bagels, Plain', 664.1, 359.04, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Blue Curacao - Marie Brizard', 653.24, 176.85, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Blouse / Shirt / Sweater', 994.62, 331.11, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Yogurt - Banana, 175 Gr', 609.17, 185.21, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Plasticknivesblack', 547.39, 393.7, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bananas', 948.13, 327.6, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nestea - Iced Tea', 758.16, 367.75, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pan Grease', 896.06, 343.35, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Prune', 950.1, 215.71, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lamb - Whole Head Off', 502.52, 244.76, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Versatainer Nc - 888', 985.35, 413.31, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tomatoes - Hot House', 515.6, 333.62, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Iced Tea - Lemon, 340ml', 505.07, 320.61, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 62x120 White', 791.46, 348.93, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Energy Drink Bawls', 512.87, 177.14, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Noodles - Cellophane, Thin', 802.35, 186.09, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Roll, Canadian Dinner', 659.55, 379.82, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Alize Sunset', 802.46, 177.09, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rum - Coconut, Malibu', 824.93, 284.82, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream Bar - Hagen Daz', 793.5, 189.75, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Moosehead', 991.83, 394.05, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - Black Tiger 8 - 12', 563.89, 290.75, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rice - Wild', 884.35, 228.11, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Island Oasis - Ice Cream Mix', 769.78, 122.22, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Salsa', 684.83, 285.69, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Morels, Dry', 794.13, 289.03, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Sugar Free Semi Choc', 531.33, 345.63, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salmon Atl.whole 8 - 10 Lb', 828.12, 397.26, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Honey Green Tea', 793.27, 198.27, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Decaf Lipton', 816.14, 291.94, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Celery', 659.92, 420.93, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee Cup 12oz 5342cd', 791.44, 162.49, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Water - Spring Water, 355 Ml', 749.28, 219.54, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Catfish - Fillets', 769.59, 415.56, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Gallo, Merlot', 723.6, 134.52, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Marjoram - Dried, Rubbed', 563.86, 328.24, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Duck - Legs', 872.28, 395.52, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Kobe Striploin', 937.3, 426.99, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 54x54 White', 738.5, 128.96, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bar Mix - Lemon', 718.96, 275.48, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Calypso - Black Cherry Lemonade', 872.86, 415.68, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Syrup - Monin - Granny Smith', 986.52, 322.95, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Molson Excel', 825.49, 144.34, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cabbage - Green', 817.67, 425.25, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pancetta', 883.93, 314.44, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Shortening - All - Purpose', 535.71, 355.39, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - Ground', 575.47, 181.56, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Cappellini, Dry', 579.66, 387.95, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Goldschalger', 536.69, 434.92, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemonade - Natural, 591 Ml', 621.09, 299.97, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Crab And Brie', 576.23, 232.89, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cup - 6oz, Foam', 886.74, 170.99, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Steampan Lid', 973.65, 126.97, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Brie, Triple Creme', 586.57, 211.54, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Black Currant', 665.78, 163.6, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Extract - Raspberry', 673.28, 380.84, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tart - Raisin And Pecan', 817.81, 267.38, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Red Thai', 847.26, 159.56, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Shank', 721.53, 252.65, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Corn - On The Cob', 679.52, 423.38, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin - Mix - Bran And Maple 15l', 521.1, 298.35, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Peas Snow', 500.58, 110.54, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cabbage - Red', 763.21, 139.91, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Redchard Merritt', 596.93, 121.16, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Yellow Bell', 976.37, 272.47, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cups 10oz Trans', 663.47, 326.54, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobak', 564.8, 281.35, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gelatine Leaves - Envelopes', 945.57, 202.39, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Curry Powder', 663.88, 116.38, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cleaner - Pine Sol', 688.91, 233.32, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Barolo Fontanafredda', 506.89, 186.64, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Waffle Stix', 765.7, 289.4, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Cheese Bites', 902.28, 289.08, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chablis 2003 Champs', 698.81, 166.77, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Amaretto', 507.3, 440.73, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Trail Mix', 840.12, 189.13, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - Prawn', 536.3, 142.64, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Cubes', 817.26, 177.71, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cocoa Powder - Natural', 881.59, 435.84, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - Soup Base', 974.92, 151.15, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Instant Coffee', 698.92, 132.77, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salmon - Canned', 672.36, 185.89, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Ricotta', 520.49, 388.36, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Colby', 521.28, 203.74, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apple - Fuji', 705.07, 198.61, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mudslide', 539.74, 224.73, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Roe - White Fish', 586.54, 175.66, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pate Pans Yellow', 586.28, 246.41, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells, Beef Barley', 759.12, 271.32, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Jalapeno', 908.58, 387.63, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Lambs Mash', 530.0, 365.08, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Canada Dry', 538.6, 265.64, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Morel Frozen', 688.72, 109.09, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Decaf 1 Cup', 788.03, 119.19, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Bones', 701.72, 197.82, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bandage - Fexible 1x3', 906.36, 118.8, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Carbonated Water - Raspberry', 671.64, 266.87, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gelatine Powder', 860.19, 349.69, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef Dry Aged Tenderloin Aaa', 767.23, 448.84, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - La Sauvagine', 831.05, 304.36, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kiwano', 754.85, 398.01, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cottage Cheese', 967.21, 292.54, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bag Clear 10 Lb', 757.72, 405.24, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oysters - Smoked', 825.82, 428.76, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apple - Custard', 724.23, 401.17, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Marble', 642.71, 378.44, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sausage - Andouille', 679.37, 445.53, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cloves - Whole', 989.39, 432.58, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nectarines', 993.43, 287.62, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tart Shells - Barquettes, Savory', 586.54, 257.01, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Rubyport', 624.12, 335.28, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pan Grease', 869.23, 140.43, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lid - 10,12,16 Oz', 908.94, 389.12, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chips - Assorted', 748.92, 171.55, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pate - Liver', 744.36, 195.75, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Rolls, Rye', 709.25, 275.14, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastry - Plain Baked Croissant', 940.9, 221.21, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Pineapple, 48 Oz', 517.28, 152.64, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kolrabi', 727.46, 406.67, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Flank Steak', 674.73, 207.31, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Creme De Cacao Mcguines', 883.63, 270.44, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bagel - Ched Chs Presliced', 500.59, 167.15, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bacardi Mojito', 682.73, 305.12, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Rotini, Colour, Dry', 676.14, 441.15, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Canadian Emmenthal', 795.46, 223.89, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Red Bell', 776.51, 222.74, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oregano - Dry, Rubbed', 755.14, 301.63, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Touraine Azay - Le - Rideau', 927.81, 108.73, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie - Dough Variety', 577.43, 213.61, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Peppercorns - Pink', 856.95, 225.92, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mace', 747.67, 149.58, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells Mushroom', 505.96, 320.26, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Cayenne', 740.64, 116.5, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Straw - Regular', 679.79, 353.6, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cup - Translucent 7 Oz Clear', 751.6, 151.17, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sterno - Chafing Dish Fuel', 696.98, 259.16, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mousse - Passion Fruit', 832.26, 129.63, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - 10 Grain Parisian', 519.04, 438.59, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coconut - Shredded, Unsweet', 798.97, 420.18, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mudslide', 736.5, 251.35, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies - Fortune', 972.03, 130.29, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sour Cream', 914.84, 304.59, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Quiche Assorted', 505.35, 417.39, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ham Black Forest', 506.83, 302.12, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Alize Red Passion', 770.49, 132.89, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cherries - Fresh', 653.37, 141.57, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Pearl', 662.96, 430.79, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - 10 Grain', 614.75, 287.0, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - White, Ej Gallo', 531.63, 394.67, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gatorade - Lemon Lime', 688.58, 238.78, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemonade - Black Cherry, 591 Ml', 776.7, 401.98, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Peas - Pigeon, Dry', 713.7, 304.64, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Glaze - Clear', 574.49, 341.69, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - White Meat With Tender', 926.54, 402.34, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sage - Rubbed', 863.91, 302.73, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream Bar - Oreo Cone', 575.62, 445.18, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Latex Rubber Gloves Size 9', 558.87, 254.04, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crackers - Water', 587.73, 141.62, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Amaretto', 607.94, 139.28, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Energy Drink - Redbull 355ml', 530.06, 256.39, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Fine', 726.92, 312.34, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Puree - Raspberry', 587.24, 332.55, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Phyllo Dough', 734.2, 301.86, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee - Colombian, Portioned', 938.58, 182.35, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mix - Cappucino Cocktail', 928.46, 422.84, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tortillas - Flour, 12', 756.09, 175.15, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Octopus - Baby, Cleaned', 652.94, 326.82, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nut - Pine Nuts, Whole', 944.28, 317.86, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Danishes - Mini Cheese', 750.15, 186.04, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Puree - Blackcurrant', 735.77, 346.08, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream Bar - Oreo Sandwich', 794.58, 443.0, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nut - Walnut, Pieces', 807.57, 390.56, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Longos - Chicken Wings', 576.88, 292.52, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rum - Mount Gay Eclipes', 837.56, 237.74, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ham - Cooked Italian', 980.92, 233.88, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate Bar - Smarties', 583.81, 341.05, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Milk - 1%', 900.24, 280.11, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Demi Glace', 744.72, 362.06, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sprouts - Onion', 779.56, 426.93, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Smirnoff Green Apple Twist', 995.09, 156.25, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Smoked Paprika', 839.21, 424.88, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Frangelico', 951.29, 282.31, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ground', 582.09, 269.77, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cheddarsliced', 879.32, 373.12, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Meat Combo', 584.66, 309.3, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apple - Northern Spy', 676.99, 352.62, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Trumpet, Dry', 814.7, 312.84, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Unsweetened', 929.71, 447.74, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cinnamon Buns Sticky', 644.59, 371.99, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Butt, Boneless', 688.26, 192.84, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Demi Glace', 903.37, 282.12, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Maple Syrup', 786.45, 331.66, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wild Boar - Tenderloin', 620.72, 237.41, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Milk Coating', 962.44, 209.55, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Edible Flower - Mixed', 960.45, 132.11, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Meat', 809.62, 177.98, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Phyllo Dough', 831.33, 232.39, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Ciabatta Buns', 600.33, 325.16, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - White Packet', 783.74, 221.83, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Venison - Striploin', 795.26, 269.58, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Meat', 537.65, 347.14, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Lemon Green Tea', 686.24, 381.88, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Higashimaru Usukuchi Soy', 602.07, 357.42, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onion - Dried', 591.48, 162.16, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Samosa - Veg', 579.15, 201.4, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Squash - Sunburst', 685.53, 370.08, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chinese Foods - Chicken', 863.56, 128.71, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake - Cake Sheet Macaroon', 661.79, 353.24, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Instant Coffee', 831.61, 244.92, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Food Colouring - Pink', 948.19, 409.34, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee - Decafenated', 930.06, 446.4, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells - Tomato', 963.6, 398.44, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Multigrain', 779.58, 190.56, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Carbonated Water - Blackberry', 709.07, 253.31, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Mcauslan Apricot', 819.25, 246.63, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Angel Hair', 710.7, 154.77, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ecolab - Solid Fusion', 678.48, 298.65, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Eggroll', 623.08, 114.67, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastry - Chocolate Chip Muffin', 735.76, 256.75, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('French Pastries', 527.82, 227.2, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Sausage, Medium', 871.78, 134.78, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Pumpkinseed', 670.23, 428.87, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Alexander Kieths, Pale Ale', 867.27, 217.52, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Prosecco Valdobiaddene', 775.63, 319.79, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bag - Bread, White, Plain', 621.49, 271.47, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Asparagus - White, Canned', 755.48, 409.66, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Suckling Pig', 998.48, 151.39, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ham, Virginia', 520.95, 387.79, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ecolab - Mikroklene 4/4 L', 632.78, 151.81, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 54x72 Colour', 568.87, 252.95, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flower - Commercial Bronze', 785.79, 424.12, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sausage - Chorizo', 717.05, 129.51, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Extract - Almond', 992.9, 135.6, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lid - 10,12,16 Oz', 915.22, 278.41, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermouth - Sweet, Cinzano', 831.18, 429.0, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Italian Corn Meal Poly', 718.9, 412.41, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce Tomato Pouch', 633.83, 418.44, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Banana - Leaves', 768.68, 273.89, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Gravy, Au Jus, Mix', 548.1, 130.86, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Shred Cheddar / Mozza', 828.1, 411.28, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coconut - Shredded, Unsweet', 966.89, 448.15, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dr. Pepper - 355ml', 510.17, 277.37, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Macaroons - Homestyle Two Bit', 626.19, 445.16, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pie Filling - Cherry', 962.36, 286.82, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Mascarpone', 604.36, 214.67, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ham - Cooked', 571.19, 233.47, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Asparagus - Mexican', 920.66, 341.58, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Breakfast Quesadillas', 509.77, 303.98, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bananas', 925.9, 252.23, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Strong Pizza', 889.49, 322.53, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef Striploin Aaa', 983.71, 288.29, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Seasoned', 887.34, 443.55, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Curry Paste - Madras', 553.05, 370.46, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mountain Dew', 920.39, 354.05, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bag - Regular Kraft 20 Lb', 671.4, 236.51, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Dough - Chocolate Chip', 837.43, 199.23, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef Flat Iron Steak', 958.11, 233.64, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Longos - Lasagna Veg', 925.97, 370.59, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Egg - Salad Premix', 785.6, 340.27, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake - Mini Potato Pancake', 840.63, 241.33, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cherries - Fresh', 914.95, 424.03, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Buffalo - Striploin', 510.04, 386.88, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Marsala - Sperone, Fine, D.o.c.', 688.25, 195.41, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Quail - Eggs, Fresh', 874.49, 101.75, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - White, Riesling, Semi - Dry', 550.03, 260.68, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pineapple - Canned, Rings', 904.87, 357.11, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Spumante Bambino White', 971.47, 296.85, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gingerale - Schweppes, 355 Ml', 890.79, 240.19, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chardonnay Mondavi', 985.87, 163.19, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Lolla Rosa', 520.24, 149.93, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Fat Bastard Merlot', 934.6, 316.77, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Shortening,liqud, Fry', 828.06, 136.16, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - White, Pelee Island', 751.64, 433.38, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Pilsner Urquell', 711.26, 362.63, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Veg Assortment', 608.23, 429.01, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Cooked, Corned', 701.18, 172.81, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Metus Rose', 948.48, 320.62, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vinegar - Tarragon', 845.02, 243.14, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Kidney White', 949.43, 326.31, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bay Leaf', 603.1, 210.06, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beets - Candy Cane, Organic', 695.85, 217.5, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Green', 662.83, 356.39, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - European Side Bacon', 886.87, 271.69, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Rib Roast, Capless', 669.61, 198.76, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gherkin - Sour', 574.8, 368.1, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Colby', 517.77, 125.72, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Spice - Pepper Portions', 745.05, 302.56, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ham, Virginia', 662.54, 386.43, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Scallops - In Shell', 982.65, 305.71, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sausage - Breakfast', 607.53, 369.28, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Iceberg', 574.84, 146.65, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells, Lentil', 900.0, 323.49, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wild Boar - Tenderloin', 909.27, 416.17, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Drambuie', 538.14, 341.96, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Black Bean, Dry', 782.77, 359.59, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Scallops - U - 10', 766.27, 184.78, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Napkin White - Starched', 777.74, 384.52, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Feathers', 663.4, 345.14, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Bocconcini', 742.7, 152.49, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Treviso', 922.59, 102.45, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Gamay Noir', 517.03, 235.69, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Sea', 792.86, 421.69, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Club Soda - Schweppes, 355 Ml', 916.24, 342.97, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Raisin Walnut Oval', 667.2, 404.08, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Apple 284ml', 524.21, 292.2, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Mouton Cadet', 534.38, 228.71, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Broom - Angled', 748.27, 311.07, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cranberries - Dry', 892.06, 439.07, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Peanut', 847.73, 127.6, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bagelers', 743.51, 405.04, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Black Bean, Canned', 845.59, 422.42, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermouth - White, Cinzano', 835.94, 422.28, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice - Clear, 300 Lb For Carving', 788.8, 386.39, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Alsace Riesling Reserve', 923.06, 439.46, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bok Choy - Baby', 779.92, 442.35, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Knorr, Classic Can. Chili', 705.98, 392.7, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Elbows, Macaroni, Dry', 628.61, 183.33, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Grapefruit - White', 703.44, 357.8, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin - Mix - Mango Sour Cherry', 507.06, 201.37, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fond - Neutral', 816.99, 218.41, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells Chili Veg', 646.91, 144.36, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bag - Bread, White, Plain', 531.3, 155.54, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Butt, Boneless', 795.27, 240.0, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pie Filling - Cherry', 782.26, 397.77, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Brie, Triple Creme', 810.03, 176.22, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Bones, Marrow', 935.59, 381.52, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wasabi Paste', 516.39, 432.76, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Carbonated Water - Blackberry', 899.44, 316.59, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Romaine', 567.98, 115.85, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Water - Aquafina Vitamin', 786.95, 287.0, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nutmeg - Ground', 733.66, 443.64, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apron', 620.55, 284.38, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Teff', 603.16, 127.95, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Periguita Fonseca', 545.3, 387.1, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Mas Chicet Rose, Vintage', 628.32, 357.09, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Napkin - Cocktail,beige 2 - Ply', 604.26, 182.64, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Niagara,vqa Reisling', 790.66, 363.13, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobster - Canned Premium', 938.53, 302.88, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 81x81 Colour', 622.16, 429.56, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Rosso Toscano Igt', 911.36, 349.06, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tortillas - Flour, 8', 979.08, 159.97, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chips - Doritos', 796.81, 205.52, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lighter - Bbq', 721.76, 306.28, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Saint - Bris 2002, Sauv', 938.23, 349.07, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobster - Tail, 3 - 4 Oz', 901.63, 205.77, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ranchero - Primerba, Paste', 671.89, 168.8, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin Hinge Container 6', 500.94, 313.09, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Piper Heidsieck Brut', 575.35, 183.58, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Rock, Course', 917.33, 276.0, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flavouring - Orange', 872.36, 431.36, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rhubarb', 888.47, 238.34, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Manchego, Spanish', 958.48, 289.45, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tart Shells - Sweet, 2', 989.29, 361.15, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread Cranberry Foccacia', 883.22, 229.5, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee Decaf Colombian', 703.2, 177.81, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 54x72 Colour', 669.11, 320.01, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nut - Almond, Blanched, Sliced', 859.7, 164.8, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Pain Au Liat X12', 824.79, 150.17, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Knorr, Classic Can. Chili', 765.52, 371.24, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Orange, 341 Ml', 776.63, 370.45, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flavouring - Raspberry', 592.57, 360.57, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Gamay Noir', 698.52, 212.16, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flower - Potmums', 975.57, 295.27, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tamarind Paste', 595.03, 408.58, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jolt Cola', 686.01, 377.01, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream - Turtles Stick Bar', 794.25, 146.72, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kiwi', 513.79, 385.43, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Hp', 637.63, 346.76, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Romaine', 902.07, 263.66, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Croissants Thaw And Serve', 711.61, 126.4, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chenin Blanc K.w.v.', 544.9, 424.37, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Liners - Baking Cups', 619.2, 266.23, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kellogs Cereal In A Cup', 585.11, 355.81, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Split Peas - Green, Dry', 598.97, 400.33, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Granary Small Pull', 957.7, 106.06, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Canelloni, Single Serve', 814.11, 299.26, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gatorade - Xfactor Berry', 888.7, 262.33, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Magnotta, White', 624.85, 284.24, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Container - Hngd Cll Blk 7x7x3', 751.56, 322.7, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Halibut - Whole, Fresh', 868.44, 407.42, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Dubouef Macon - Villages', 786.38, 318.16, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Watercress', 734.88, 118.33, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lamb - Racks, Frenched', 569.58, 387.62, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions Granulated', 844.58, 141.41, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Banana - Green', 535.54, 294.55, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nantucket Pine Orangebanana', 512.4, 228.32, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Base Broth Chix', 937.52, 148.84, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Sea / Sea Asparagus', 979.79, 173.48, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Vidalia', 578.39, 188.82, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jolt Cola', 983.89, 384.06, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Curry Paste - Madras', 930.38, 444.88, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Napkin - Beverage 1 Ply', 860.4, 318.72, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Versatainer Nc - 9388', 637.47, 253.05, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Trumpet, Dry', 662.66, 337.84, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream Bar - Oreo Sandwich', 888.73, 225.32, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dish Towel', 805.29, 168.56, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Celery', 722.85, 415.89, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Sugar Free Semi Choc', 587.6, 113.38, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Clams - Bay', 815.46, 382.99, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Corn - On The Cob', 789.99, 121.97, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onion - Dried', 623.05, 111.69, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sword Pick Asst', 565.41, 181.12, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Spice - Onion Powder Granulated', 891.1, 124.33, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Daikon Radish', 853.15, 303.01, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lotus Root', 535.85, 318.94, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Puree - Kiwi', 671.37, 278.82, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Anchovy In Oil', 737.17, 111.02, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemonade - Island Tea, 591 Ml', 768.56, 254.59, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Water - Mineral, Natural', 870.02, 446.42, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee Beans - Chocolate', 589.67, 113.05, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Victor Et Berthold', 723.11, 128.72, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mayonnaise - Individual Pkg', 712.86, 259.18, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Sauvignon Blanc Oyster', 666.46, 232.02, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - V8 Splash', 841.25, 181.62, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Water - Green Tea Refresher', 704.43, 405.91, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee Guatemala Dark', 929.48, 162.88, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chardonnay South', 653.23, 237.64, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Delicato Merlot', 948.01, 373.52, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Arizona - Green Tea', 656.44, 390.95, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ground', 611.97, 277.98, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mayonnaise - Individual Pkg', 878.7, 296.22, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hold Up Tool Storage Rack', 649.34, 267.88, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Roll, Italian', 552.59, 437.03, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Yellow Bell', 821.71, 309.11, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Jasmin Green', 916.94, 100.81, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Red, Mouton Cadet', 538.62, 184.93, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 54x54 White', 727.17, 403.32, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Gypsy Pepper', 688.8, 371.22, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin Mix - Raisin Bran', 581.97, 201.45, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Top Butt Aaa', 710.94, 412.13, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Long, Chinese', 828.22, 355.65, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Kwv Chenin Blanc South', 949.53, 276.43, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Lemon Green Tea', 682.94, 155.43, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Cream Of Broccoli', 752.75, 411.08, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Placemat - Scallop, White', 938.14, 110.51, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Stock - Chicken, White', 567.08, 112.93, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Chicken Satay', 909.28, 195.28, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Buckwheat, Dark', 587.57, 102.92, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Idaho 80 Count', 526.11, 343.75, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Trout - Rainbow, Fresh', 540.84, 218.6, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pail For Lid 1537', 702.91, 371.07, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Jackson Triggs Okonagan', 782.47, 339.2, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Malbec Trapiche Reserve', 623.14, 248.5, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Dough - Chocolate Chip', 755.43, 274.82, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chickensplit Half', 529.5, 402.27, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Walkers Special Old Whiskey', 858.15, 369.61, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Magnotta - Bel Paese White', 630.84, 133.42, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake - Lemon Chiffon', 730.42, 307.89, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermouth - Sweet, Cinzano', 991.33, 285.55, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Langers - Cranberry Cocktail', 526.06, 283.81, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - St. Paulin', 769.9, 218.11, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermouth - White, Cinzano', 702.55, 303.95, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crackers - Water', 541.46, 277.74, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Buffalo - Short Rib Fresh', 979.06, 191.36, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermouth - Sweet, Cinzano', 579.11, 106.37, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Spinach - Packaged', 540.26, 331.59, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Capon - Breast, Wing On', 743.81, 324.31, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork Salted Bellies', 772.41, 212.46, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Pistoles, White', 947.81, 132.22, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Salted', 780.41, 325.4, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tabasco Sauce, 2 Oz', 767.09, 317.07, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Cranberry', 713.07, 102.6, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Knorr, French Onion', 978.94, 133.69, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gelatine Leaves - Bulk', 526.72, 423.81, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Black Bean, Preserved', 903.67, 429.85, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Egg Patty Fried', 715.24, 314.73, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Barbera Alba Doc 2001', 646.34, 299.54, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jicama', 867.88, 306.56, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Steam Pan Full Lid', 657.25, 113.98, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gherkin - Sour', 513.29, 343.44, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Orzo, Dry', 505.5, 170.09, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake - Lemon Chiffon', 659.66, 388.19, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Sorrano', 998.69, 408.14, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Shred Cheddar / Mozza', 989.74, 410.0, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Mozzarella, Shredded', 920.27, 231.22, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Venison - Racks Frenched', 676.66, 281.78, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Linguini, Dry', 696.25, 396.7, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Marble', 557.33, 310.04, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oranges', 942.56, 263.6, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Relish', 841.09, 177.6, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepsi - 600ml', 595.17, 335.05, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Touraine Azay - Le - Rideau', 926.35, 328.62, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Sausage, Medium', 957.87, 444.49, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Sesame Thai Dressing', 922.57, 146.4, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kiwano', 960.91, 399.62, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sea Bass - Fillets', 912.04, 231.19, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Top Butt', 826.65, 298.33, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Turnip - White, Organic', 777.33, 385.56, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Turkey - Oven Roast Breast', 812.96, 102.41, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Stock - Veal, Brown', 583.71, 322.71, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Multigrain, Loaf', 682.25, 152.6, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coriander - Ground', 901.58, 383.96, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Persimmons', 673.69, 168.91, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Rosso Toscano Igt', 598.97, 200.19, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Parsnip', 510.11, 229.65, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermacelli - Sprinkles, Assorted', 574.15, 245.11, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Food Colouring - Red', 702.84, 252.57, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Broom - Corn', 580.19, 271.79, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Green', 891.35, 426.9, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - French Can Pea', 644.07, 262.83, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Roasted Red Pepper', 723.1, 246.06, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rice - Aborio', 884.84, 238.69, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ecolab Digiclean Mild Fm', 865.34, 204.13, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Stock - Beef, White', 839.6, 373.81, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Yellow', 529.87, 281.01, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vodka - Lemon, Absolut', 660.41, 188.69, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Triple Sec - Mcguinness', 936.87, 146.78, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tomatoes - Cherry', 861.04, 283.49, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gloves - Goldtouch Disposable', 731.97, 225.63, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Island Oasis - Raspberry', 898.66, 371.03, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken Breast Wing On', 943.8, 301.45, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Samosa - Veg', 762.72, 153.44, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chickensplit Half', 653.18, 344.8, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crawfish', 551.0, 174.24, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Flat Bread', 647.82, 269.54, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Buckwheat, Dark', 946.06, 139.38, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chenin Blanc K.w.v.', 766.15, 337.18, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Riesling Alsace Ac 2001', 580.95, 407.41, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vermacelli - Sprinkles, Assorted', 782.19, 381.67, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Prune', 678.39, 247.19, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hot Chocolate - Individual', 570.2, 237.28, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beans - Navy, Dry', 758.74, 206.92, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bay Leaf Fresh', 982.61, 246.15, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Brisket, Provimi,bnls', 965.72, 138.1, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream - Super Sandwich', 567.09, 404.5, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Garlic - Elephant', 895.01, 155.42, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coconut - Shredded, Unsweet', 682.24, 329.22, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Bourgogne 2002, La', 776.09, 311.99, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Sicilia Igt Nero Avola', 814.19, 395.3, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Canada Dry', 674.54, 141.23, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pears - Anjou', 686.34, 308.54, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Longos - Lasagna Beef', 764.06, 307.94, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sea Bass - Fillets', 841.41, 163.21, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apple - Custard', 932.38, 375.79, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemon Balm - Fresh', 674.86, 225.33, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Loin, Boneless', 512.08, 117.34, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Zinfandel Rosenblum', 820.85, 294.02, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Breakfast Quesadillas', 714.24, 285.69, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gloves - Goldtouch Disposable', 826.02, 241.31, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Strawberries', 626.75, 294.32, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies - Englishbay Wht', 697.81, 224.27, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salt - Kosher', 846.25, 247.25, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Maintenance Removal Charge', 866.15, 121.0, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Parissienne', 555.42, 306.04, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream - Super Sandwich', 770.7, 247.8, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - 150 - 250', 677.27, 244.15, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Brown', 809.19, 142.39, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Curry Powder Madras', 882.99, 188.71, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Grapefruit Green Tea', 515.83, 277.62, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Swiss Chard - Red', 542.44, 134.72, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mustard - Dry, Powder', 709.36, 286.68, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cherries - Maraschino,jar', 622.31, 225.23, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 72x144 White', 703.16, 405.71, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gingerale - Diet - Schweppes', 664.57, 239.63, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cardamon Seed / Pod', 754.31, 317.56, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tilapia - Fillets', 803.5, 199.13, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rice Pilaf, Dry,package', 996.04, 124.13, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Easy Off Oven Cleaner', 615.86, 256.74, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fish - Soup Base, Bouillon', 663.97, 190.45, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wasabi Powder', 675.7, 366.08, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef Dry Aged Tenderloin Aaa', 694.23, 368.15, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Napkin - Beverge, White 2 - Ply', 750.0, 100.55, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Manchego, Spanish', 920.18, 229.53, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kohlrabi', 541.54, 427.3, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Grouper - Fresh', 721.43, 377.73, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Basil - Primerba, Paste', 651.46, 436.23, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Zinfandel California 2002', 575.71, 138.96, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Parsnip', 533.36, 423.25, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Island Oasis - Magarita Mix', 874.35, 226.78, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - White, Ground', 629.21, 347.63, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Grenadine', 794.35, 264.71, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Arizona - Green Tea', 921.05, 278.51, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies Oatmeal Raisin', 732.68, 291.87, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Fingerling 4 Oz', 977.29, 291.25, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee Guatemala Dark', 839.64, 191.17, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Neckerchief Blck', 670.1, 167.9, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salmon Steak - Cohoe 8 Oz', 654.82, 367.57, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tomato Paste', 871.93, 420.37, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vodka - Smirnoff', 543.62, 160.61, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Acient Coast Caberne', 570.08, 254.01, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies Cereal Nut', 649.78, 445.79, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Teriyaki Sauce', 987.95, 305.94, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cleaner - Bleach', 851.53, 415.27, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sping Loaded Cup Dispenser', 649.77, 305.21, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tia Maria', 517.92, 377.54, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ocean Spray - Ruby Red', 891.25, 411.93, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread Base - Toscano', 641.84, 379.74, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Yogurt - French Vanilla', 878.36, 320.83, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Insides, Grains', 539.09, 214.93, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Arctic Char - Fresh, Whole', 957.14, 167.49, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Glycerine', 871.07, 175.08, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken Breast Wing On', 751.87, 187.74, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Creme De Cacao White', 575.02, 434.0, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin - Mix - Mango Sour Cherry', 631.73, 256.86, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gelatine Leaves - Envelopes', 858.76, 260.21, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee - Colombian, Portioned', 995.85, 444.61, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Fume Blanc Fetzer', 772.0, 228.96, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fuji Apples', 577.91, 366.56, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread Fig And Almond', 501.37, 345.6, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sausage - Breakfast', 829.08, 356.08, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fennel', 736.78, 214.09, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Truffle Cups - Red', 881.46, 175.98, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('The Pop Shoppe - Lime Rickey', 926.21, 192.17, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chinese Foods - Cantonese', 505.53, 139.58, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('V8 - Berry Blend', 977.35, 163.37, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Scotch - Queen Anne', 505.0, 238.06, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cheddar, Old White', 687.76, 314.14, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - Black Tiger 13/15', 975.16, 347.46, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hand Towel', 800.43, 150.26, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Pita', 671.34, 175.0, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Lemon Green Tea', 943.34, 376.48, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Doilies - 12, Paper', 845.51, 146.98, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Plate Foam Laminated 9in Blk', 631.09, 196.28, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Dungeness, Whole, live', 507.55, 281.64, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rice - Sushi', 990.7, 327.73, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Peanut', 861.86, 426.03, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Leg, Provimi - 50 Lb Max', 949.8, 159.79, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Samosa - Veg', 556.64, 340.6, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Sake', 596.54, 104.43, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Brie, Triple Creme', 700.13, 146.34, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Brisket, Provimi, Bone - In', 830.57, 202.54, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Two Oceans Sauvignon', 679.63, 410.94, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Foam Dinner Plate', 558.84, 235.96, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Brandy Apricot', 733.58, 355.16, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fish - Bones', 508.79, 388.27, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tortillas - Flour, 8', 580.44, 342.98, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Suckling Pig', 751.81, 430.7, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Clams - Littleneck, Whole', 838.37, 194.06, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Strong', 812.12, 277.14, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Soya, Light', 610.6, 219.06, 12);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Sleemans Honey Brown', 838.66, 314.29, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Persimmons', 849.83, 440.78, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ham - Cooked Bayonne Tinned', 736.58, 429.25, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Sticks, Thin, Plain', 712.93, 216.34, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Southwestern', 997.52, 261.46, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nestea - Iced Tea', 758.77, 219.98, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lid - 10,12,16 Oz', 878.3, 344.73, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Orange - Tangerine', 897.96, 124.24, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells Beef Stew', 647.31, 170.89, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Roe - Lump Fish, Red', 846.94, 242.16, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Pumpernickle, Rounds', 859.89, 243.26, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soupfoamcont12oz 112con', 759.42, 436.39, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Red, Finger Hot', 660.65, 128.93, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Artichoke - Bottom, Canned', 616.85, 264.67, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Crusty Italian Poly', 862.12, 237.57, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sobe - Lizard Fuel', 756.03, 412.77, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Meldea Green Tea Liquor', 664.07, 143.31, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Clementine', 963.11, 339.71, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Green Tea Refresher', 664.52, 435.81, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sobe - Orange Carrot', 921.53, 258.26, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Italian Corn Meal Poly', 931.25, 223.5, 39);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Calypso - Strawberry Lemonade', 732.63, 305.96, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup V8 Roasted Red Pepper', 614.58, 351.36, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Brandy - Bar', 613.17, 350.86, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Rioja Campo Viejo', 885.54, 178.57, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Olive, Extra Virgin', 962.2, 183.53, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Mini Hamburger Bun', 974.21, 321.66, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('External Supplier', 924.04, 193.55, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Seedlings - Mix, Organic', 758.57, 301.09, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pineapple - Regular', 507.45, 142.08, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Gato Negro Cabernet', 839.03, 307.66, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sea Bass - Whole', 808.01, 416.81, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Ranch Dressing', 531.07, 362.37, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Thermometer Digital', 558.13, 273.0, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Artichokes - Knobless, White', 819.54, 418.88, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jameson - Irish Whiskey', 745.1, 275.14, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coconut - Creamed, Pure', 837.89, 288.06, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sobe - Lizard Fuel', 950.32, 390.53, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Turkey Leg With Drum And Thigh', 828.75, 381.5, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ham, Virginia', 737.19, 262.73, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Apple, 341 Ml', 990.8, 344.69, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Pei 10 Oz', 944.27, 384.83, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Doilies - 10, Paper', 874.52, 327.03, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Schnappes Peppermint - Walker', 501.57, 341.34, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Turkey Tenderloin Frozen', 635.03, 367.81, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin - Blueberry Individual', 636.71, 376.02, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Skirt - 29 Foot', 830.96, 104.77, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Foam Tray S2', 773.07, 171.87, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fudge - Cream Fudge', 638.36, 174.58, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Wine', 844.9, 380.97, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Assorted Box', 881.51, 329.44, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Chocolate Chip With', 842.05, 145.29, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Numi - Assorted Teas', 871.06, 326.68, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Table Cloth 90x90 White', 570.94, 433.62, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake - Night And Day Choclate', 941.16, 434.0, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wakami Seaweed', 853.07, 327.22, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Apricots Fresh', 982.27, 414.89, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Numi - Assorted Teas', 606.65, 167.53, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fish - Bones', 986.38, 141.97, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ham - Cooked', 638.27, 162.42, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Ej Gallo Sierra Valley', 863.06, 438.82, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - French Stick', 755.76, 170.43, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Outside, Round', 621.52, 314.95, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Fusili Tri - Coloured', 591.06, 314.51, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sambuca - Opal Nera', 574.86, 212.83, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oranges', 788.41, 323.1, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobster - Base', 929.23, 206.16, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Dark Rye', 880.72, 129.02, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wonton Wrappers', 644.36, 390.86, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dried Cherries', 983.03, 143.53, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salmon - Canned', 642.28, 403.08, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Split Peas - Yellow, Dry', 635.16, 213.28, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pie Shells 10', 786.62, 318.5, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Cake', 798.42, 335.18, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Basil - Thai', 974.51, 292.19, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Sorrano', 545.08, 315.77, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jello - Assorted', 580.41, 291.2, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Basil - Fresh', 534.23, 370.1, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Swiss Chard - Red', 889.14, 171.08, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Moosehead', 849.47, 185.28, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Cippolini', 514.29, 335.57, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chardonnay South', 731.0, 360.2, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Gelatine Leaves - Envelopes', 523.8, 363.39, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('V8 - Berry Blend', 637.93, 176.33, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dawn Professionl Pot And Pan', 571.02, 424.59, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Corn - Cream, Canned', 618.54, 412.66, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Chanterelle, Dry', 959.88, 320.77, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Container Clear 8 Oz', 952.07, 124.82, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cheddar, Mild', 571.36, 217.72, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - Livers', 803.86, 194.57, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemonade - Island Tea, 591 Ml', 739.42, 340.07, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cake Slab', 834.08, 149.52, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Extract - Lemon', 500.04, 209.21, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cheddar, Old White', 957.87, 441.45, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cape Capensis - Fillet', 593.59, 181.11, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cucumber - Pickling Ontario', 570.21, 217.0, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Water, Tap', 992.15, 365.54, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Octopus - Baby, Cleaned', 979.56, 214.06, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Loaf Pan - 2 Lb, Foil', 605.16, 425.89, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dried Figs', 691.61, 407.57, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Mondavi Coastal Private', 683.06, 230.47, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Tongue, Fresh', 523.14, 391.38, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Chardonnay Mondavi', 915.43, 448.98, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Goat', 635.81, 431.34, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pears - Bartlett', 808.14, 200.31, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dikon', 719.47, 110.59, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee - Espresso', 787.16, 198.37, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bacardi Mojito', 868.43, 211.43, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Heinekin', 609.95, 333.79, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Venison - Denver Leg Boneless', 730.98, 151.15, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mangoes', 517.56, 278.99, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Sunflower', 567.38, 123.24, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kiwi Gold Zespri', 566.19, 347.49, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Orzo, Dry', 667.97, 413.56, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Muffin - Blueberry Individual', 821.9, 304.22, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Peller Estates Late', 965.89, 373.65, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Red Snapper - Fresh, Whole', 852.13, 274.41, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - French Can Pea', 557.43, 430.54, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pickles - Gherkins', 673.0, 280.94, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ham, Virginia', 552.43, 320.55, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Versatainer Nc - 888', 703.92, 401.45, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('C - Plus, Orange', 549.19, 270.77, 38);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Tenderloin', 911.54, 227.42, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lamb - Whole, Fresh', 806.84, 229.07, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lid - 10,12,16 Oz', 560.35, 190.89, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup Campbells', 958.38, 228.98, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Salmon Steak - Cohoe 6 Oz', 670.26, 365.63, 40);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Verve - Chipotle Chicken', 714.11, 285.26, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rum - White, Gg White', 862.86, 279.12, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flower - Dish Garden', 879.47, 347.7, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Guava', 849.89, 228.57, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Taro Leaves', 879.2, 173.38, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastrami', 615.39, 405.7, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese Cloth No 60', 695.51, 179.79, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Montreal Smoked Brisket', 824.71, 198.67, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pork - Ground', 765.78, 344.17, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Pineapple, 341 Ml', 909.62, 399.61, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Butcher Twine 4r', 859.48, 380.32, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mushroom - Lg - Cello', 839.97, 176.08, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cloves - Whole', 561.92, 213.86, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobster - Tail 6 Oz', 683.86, 188.75, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lettuce - Green Leaf', 752.13, 447.03, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kippers - Smoked', 918.73, 141.17, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chicken - Leg / Back Attach', 681.28, 429.93, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Magnotta - Bel Paese White', 825.68, 349.76, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Onions - Green', 862.37, 229.52, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Onion Focaccia', 899.31, 310.4, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Manchego, Spanish', 583.5, 350.63, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Calypso - Lemonade', 541.86, 359.9, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Puligny Montrachet A.', 824.02, 136.48, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Extract - Almond', 900.1, 392.56, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Petit Baguette', 583.14, 109.97, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Texas Style Burger', 978.78, 185.54, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Cubanelle', 541.24, 397.05, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sprite, Diet - 355ml', 555.72, 329.23, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Carbonated Water - Peach', 589.21, 164.84, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - German Riesling', 560.21, 310.99, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Poppy Seed', 951.35, 421.76, 20);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Capon - Breast, Wing On', 665.78, 395.68, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Ocean Spray Kiwi', 990.93, 273.54, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice Peach Nectar', 536.18, 409.35, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Godiva White Chocolate', 681.93, 121.24, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beer - Maudite', 895.73, 155.69, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Hamburger Buns', 745.48, 282.66, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea Leaves - Oolong', 645.88, 167.95, 31);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Nantucket - 518ml', 824.41, 248.16, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - Tiger 21/25', 928.3, 268.53, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hickory Smoke, Liquid', 827.36, 240.41, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Ice Cream Bar - Drumstick', 546.86, 180.51, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chinese Foods - Thick Noodles', 717.22, 307.28, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - White, Lindemans Bin 95', 590.83, 149.02, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Halibut - Whole, Fresh', 613.15, 428.83, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Smoked Salmon / Dill', 803.16, 120.1, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sobe - Tropical Energy', 557.95, 294.24, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Juice - Grapefruit, 341 Ml', 735.83, 296.13, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Top Sirloin - Aaa', 617.4, 357.05, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Paprika, Hungarian', 667.76, 424.95, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Black Currant', 986.43, 379.8, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies Cereal Nut', 876.31, 199.66, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jam - Raspberry,jar', 614.03, 395.66, 18);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shichimi Togarashi Peppeers', 771.76, 335.7, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Sweet N Low, Individual', 599.95, 277.77, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dragon Fruit', 509.68, 388.44, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chips Potato Salt Vinegar 43g', 723.2, 361.47, 23);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Decaf 1 Cup', 869.66, 308.89, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Barolo Fontanafredda', 546.17, 252.89, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lamb - Bones', 581.78, 210.95, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Roasted Red Pepper', 609.99, 231.05, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Seedlings - Buckwheat, Organic', 766.01, 316.06, 6);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Veal - Brisket, Provimi, Bone - In', 907.12, 138.78, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chambord Royal', 601.26, 447.23, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Canadian Pea, Dry Mix', 823.38, 151.51, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cornflakes', 556.26, 439.65, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coconut - Shredded, Unsweet', 613.89, 238.82, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Lasagne, Fresh', 546.97, 176.86, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Orecchiette', 719.72, 230.25, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Snapple - Iced Tea Peach', 871.1, 364.73, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pastry - Raisin Muffin - Mini', 676.02, 367.15, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Artichoke - Fresh', 708.49, 302.81, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bar - Granola Trail Mix Fruit Nut', 595.14, 230.87, 3);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bandage - Flexible Neon', 720.81, 152.89, 48);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Magnotta Bel Paese Red', 753.99, 204.05, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crab - Claws, 26 - 30', 516.26, 352.36, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rosemary - Fresh', 930.63, 425.08, 35);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - 16 - 20 Cooked, Peeled', 750.51, 397.22, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - White Cab Sauv.on', 712.86, 364.52, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Dough - Peanut Butter', 699.52, 275.81, 44);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Guy Sage Touraine', 503.47, 323.42, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shrimp - 150 - 250', 582.54, 130.16, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Alize Gold Passion', 717.54, 305.74, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Basil - Pesto Sauce', 749.86, 421.52, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Mousse - Passion Fruit', 932.1, 339.25, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Venison - Ground', 532.05, 261.91, 11);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Broom Handle', 988.52, 422.89, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Marsala - Sperone, Fine, D.o.c.', 570.88, 375.54, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Rice Pilaf, Dry,package', 618.48, 104.31, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Vol Au Vents', 888.31, 377.37, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Red, Finger Hot', 973.79, 416.59, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookies - Englishbay Oatmeal', 688.41, 322.52, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cornish Hen', 714.05, 379.42, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Amarula Cream', 734.76, 432.19, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tea - Decaf 1 Cup', 670.26, 117.62, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Yukon Gold 5 Oz', 542.92, 159.87, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sugar - Monocystal / Rock', 554.89, 102.77, 32);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Coffee - Irish Cream', 982.29, 151.22, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells - Tomato', 794.58, 310.5, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Halibut - Whole, Fresh', 898.78, 356.86, 14);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Marlbourough Sauv Blanc', 527.54, 310.69, 21);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Garbage Bags - Clear', 526.1, 394.6, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pepper - Chili Powder', 528.58, 309.86, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chocolate - Semi Sweet, Calets', 937.78, 431.79, 27);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Soup - Campbells Mac N Cheese', 836.73, 298.89, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Banana Turning', 638.32, 386.27, 34);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cream - 10%', 694.37, 204.34, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Iced Tea Concentrate', 808.37, 250.17, 24);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Chinese Foods - Thick Noodles', 944.14, 101.15, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lid - 16 Oz And 32 Oz', 734.0, 269.56, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sloe Gin - Mcguinness', 988.5, 215.25, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wasabi Paste', 667.12, 160.53, 47);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sauce - Caesar Dressing', 714.77, 192.86, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Turkey - Breast, Double', 873.59, 116.23, 5);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cookie Chocolate Chip With', 502.75, 192.52, 50);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Pumpernickle, Rounds', 511.46, 306.78, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Dill - Primerba, Paste', 633.27, 184.52, 17);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lemon Grass', 781.43, 378.47, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Bread - Roll, Italian', 664.99, 115.86, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Beef - Outside, Round', 600.59, 273.17, 33);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Toasted Head', 628.56, 134.3, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Duck - Fat', 897.92, 359.89, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Eggplant - Regular', 830.33, 249.35, 41);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Squash - Pattypan, Yellow', 659.13, 409.01, 45);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hickory Smoke, Liquid', 766.85, 295.0, 7);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wine - Domaine Boyar Royal', 637.21, 378.34, 37);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Wild Boar - Tenderloin', 967.81, 148.59, 28);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Flour - Rye', 535.49, 401.37, 4);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cinnamon - Ground', 609.75, 410.85, 42);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lobster - Tail 6 Oz', 529.3, 430.05, 30);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cornstarch', 802.56, 373.19, 16);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Hot Chocolate - Individual', 900.88, 377.28, 15);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Hazelnut', 532.89, 369.64, 22);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Jam - Strawberry, 20 Ml Jar', 917.17, 429.13, 29);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Lychee - Canned', 765.77, 369.21, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Squash - Acorn', 778.66, 415.6, 36);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Fish - Soup Base, Bouillon', 591.51, 104.74, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sprouts - Peppercress', 668.62, 373.83, 2);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Tequila Rose Cream Liquor', 908.12, 294.85, 1);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Melon - Cantaloupe', 594.58, 230.05, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Sage - Fresh', 586.64, 364.78, 25);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Oil - Coconut', 813.81, 276.64, 43);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Elbows, Macaroni, Dry', 752.06, 185.91, 49);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Appetizer - Crab And Brie', 685.6, 242.32, 13);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Cheese - Cheddar With Claret', 861.31, 101.59, 10);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Kahlua', 938.51, 388.18, 8);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pears - Fiorelle', 593.45, 282.32, 46);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Pasta - Lasagna, Dry', 611.98, 222.21, 9);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Crush - Cream Soda', 988.63, 356.2, 26);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Potatoes - Yukon Gold 5 Oz', 503.56, 352.59, 19);
insert into produtos (descricao, precoVenda, precoCusto, idCategoria) values ('Shortbread - Cookie Crumbs', 885.09, 212.98, 27);
*/

-- FUNÇÃO MAX - mostra maior valor
SELECT MAX(precoVenda)
	FROM produtos;
    
SELECT MIN(precoCusto)
	FROM produtos;
    
-- avarage / média    
SELECT AVG(precoVenda)
	FROM produtos;
    
-- ROUND / ARREDONDAMENTO de casas decimais
SELECT ROUND(precoVenda)
	FROM produtos;
    
SELECT ROUND(AVG(precoVenda), 2) 
FROM produtos;
    
-- contagem
SELECT COUNT(descricao)
	FROM produtos;

SELECT COUNT(precoVenda) AS quant
	FROM produtos
	WHERE idCategoria = 50;

-- group by max com outras informações precisa do group by pra funcionar
SELECT idCategoria, MAX(precoVenda)
	FROM produtos
    GROUP BY idCategoria;

-- HAVING
SELECT idCategoria, MAX(precoVenda)
	FROM produtos
    GROUP BY idCategoria
    HAVING MAX(precoVenda) > 997;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    