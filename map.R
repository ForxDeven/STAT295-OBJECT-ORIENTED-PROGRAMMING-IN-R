world_map <- getMap(resolution = "coarse")
#plot the world map
plot(world_map, col= "dark gray",
     border = "dark gray",
     xlim = c(-180, 180), ylim = c (-90,90),
     bg = "aliceblue",
     asp = 1)

world <- ne_contries(scale = "medium", returnclass = "sf")

#create a world map
ggplot(data = world) + geom_sf() + 