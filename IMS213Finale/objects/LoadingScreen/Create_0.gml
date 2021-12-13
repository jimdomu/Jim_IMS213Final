tipString = array_create(5, "");
tipString[0] = "Berries dried out when not wet or when trembled upon. Watch the number of berries."
tipString[1] = "Roses can pierce through targets. Use this to your advantage."
tipString[2] = "Keep your plants hydrated. You don't want the bugs to ruin your farm."
tipString[3] = "Manage your plants. Harvesting plants can give you extra scores, but you will have less defense."
tipString[4] = "Don't rush to expand. Watering them would be a problem."

randomize();
quoteNum = irandom_range(0, array_length(tipString) -1)

alarm_set(0, 300);