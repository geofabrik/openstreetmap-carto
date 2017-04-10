CREATE INDEX planet_osm_line_idx15465565 ON planet_osm_line USING GIST (way) WHERE (aerialway IS NOT NULL);
CREATE INDEX planet_osm_line_idx16218939 ON planet_osm_line USING GIST (way) WHERE (((railway IS NOT NULL) OR (aeroway IS NOT NULL)) AND ((tunnel = 'yes'::text) OR (tunnel = 'building_passage'::text) OR (covered = 'yes'::text)));
CREATE INDEX planet_osm_line_idx16225232 ON planet_osm_line USING GIST (way) WHERE ("addr:interpolation" IS NOT NULL);
CREATE INDEX planet_osm_line_idx19741303 ON planet_osm_line USING GIST (way) WHERE ((name IS NOT NULL) AND ((man_made = ANY ('{pier,breakwater,groyne,embankment}'::text[])) OR (waterway = ANY ('{dam,weir}'::text[])) OR ("natural" = 'cliff'::text)));
CREATE INDEX planet_osm_line_idx23031039 ON planet_osm_line USING GIST (way) WHERE ("natural" = 'tree_row'::text);
CREATE INDEX planet_osm_line_idx25231780 ON planet_osm_line USING GIST (way) WHERE (man_made = ANY ('{pier,breakwater,groyne}'::text[]));
CREATE INDEX planet_osm_line_idx26795688 ON planet_osm_line USING GIST (way) WHERE ((barrier = ANY ('{chain,city_wall,embankment,ditch,fence,guard_rail,handrail,hedge,kerb,retaining_wall,wall}'::text[])) OR ((historic = 'citywalls'::text) AND ((waterway IS NULL) OR (waterway <> ALL ('{river,canal,derelict_canal,stream,drain,ditch,wadi}'::text[])))));
CREATE INDEX planet_osm_line_idx31688514 ON planet_osm_line USING GIST (way) WHERE ((highway IS NOT NULL) AND ((tunnel = 'yes'::text) OR (tunnel = 'building_passage'::text) OR (covered = 'yes'::text)));
CREATE INDEX planet_osm_line_idx33185133 ON planet_osm_line USING GIST (way) WHERE ((p.way && st_expand(way, '0.1'::double precision)) AND _st_dwithin(p.way, way, '0.1'::double precision));
CREATE INDEX planet_osm_line_idx34456143 ON planet_osm_line USING GIST (way) WHERE ((highway IS NOT NULL) AND (bridge = ANY ('{yes,boardwalk,cantilever,covered,low_water_crossing,movable,trestle,viaduct}'::text[])));
CREATE INDEX planet_osm_line_idx34966162 ON planet_osm_line USING GIST (way) WHERE (man_made = 'cutline'::text);
CREATE INDEX planet_osm_line_idx36669228 ON planet_osm_line USING GIST (way) WHERE (waterway = 'river'::text);
CREATE INDEX planet_osm_line_idx42171288 ON planet_osm_line USING GIST (way) WHERE ((name IS NOT NULL) AND ((tunnel IS NULL) OR (tunnel <> 'culvert'::text)) AND (waterway = ANY ('{river,canal,derelict_canal,stream,drain,ditch,wadi}'::text[])));
CREATE INDEX planet_osm_line_idx47639066 ON planet_osm_line USING GIST (way) WHERE (waterway = ANY ('{stream,drain,ditch}'::text[]));
CREATE INDEX planet_osm_line_idx53967993 ON planet_osm_line USING GIST (way) WHERE (("natural" = 'cliff'::text) OR (man_made = 'embankment'::text));
CREATE INDEX planet_osm_line_idx58361478 ON planet_osm_line USING GIST (way) WHERE ((route = 'ferry'::text));
CREATE INDEX planet_osm_line_idx61529580 ON planet_osm_line USING GIST (way) WHERE (((name IS NOT NULL) OR (oneway = ANY ('{yes,-1}'::text[])) OR (junction = 'roundabout'::text)) AND (highway = ANY ('{motorway,motorway_link,trunk,trunk_link,primary,primary_link,secondary,secondary_link,tertiary,tertiary_link,residential,unclassified,road,service,pedestrian,raceway,living_street,construction}'::text[])));
CREATE INDEX planet_osm_line_idx62096113 ON planet_osm_line USING GIST (way) WHERE (highway = 'bus_guideway'::text);
CREATE INDEX planet_osm_line_idx62665115 ON planet_osm_line USING GIST (way) WHERE ((ref IS NOT NULL) AND (array_length(string_to_array(ref, ';'::text), 1) <= 4) AND ((highway = ANY ('{motorway,trunk,primary,secondary,tertiary,unclassified,residential}'::text[])) OR (aeroway = ANY ('{runway,taxiway}'::text[]))) AND ((SubPlan 2) <= 11));
CREATE INDEX planet_osm_line_idx62984408 ON planet_osm_line USING GIST (way) WHERE (route = 'ferry'::text);
CREATE INDEX planet_osm_line_idx63510964 ON planet_osm_line USING GIST (way) WHERE (((bridge IS NULL) OR (bridge <> ALL ('{yes,aqueduct}'::text[]))) AND (waterway = ANY ('{river,canal,derelict_canal,stream,drain,ditch,wadi}'::text[])));
CREATE INDEX planet_osm_line_idx65184745 ON planet_osm_line USING GIST (way) WHERE (((railway IS NOT NULL) OR (aeroway IS NOT NULL)) AND ((tunnel IS NULL) OR (tunnel <> ALL ('{yes,building_passage}'::text[]))) AND ((covered IS NULL) OR (covered <> 'yes'::text)) AND ((bridge IS NULL) OR (bridge <> ALL ('{yes,boardwalk,cantilever,covered,low_water_crossing,movable,trestle,viaduct}'::text[]))));
CREATE INDEX planet_osm_line_idx65453772 ON planet_osm_line USING GIST (way) WHERE (way && st_expand(p.way, '0.1'::double precision));
CREATE INDEX planet_osm_line_idx67119017 ON planet_osm_line USING GIST (way) WHERE ((bridge = ANY ('{yes,aqueduct}'::text[])) AND (waterway = ANY ('{river,canal,derelict_canal,stream,drain,ditch,wadi}'::text[])));
CREATE INDEX planet_osm_line_idx67531079 ON planet_osm_line USING GIST (way) WHERE (((railway IS NOT NULL) OR (aeroway IS NOT NULL)) AND (bridge = ANY ('{yes,boardwalk,cantilever,covered,low_water_crossing,movable,trestle,viaduct}'::text[])));
CREATE INDEX planet_osm_line_idx70514567 ON planet_osm_line USING GIST (way) WHERE ((name IS NOT NULL) AND (highway = ANY ('{bridleway,footway,cycleway,path,track,steps}'::text[])));
CREATE INDEX planet_osm_line_idx70889319 ON planet_osm_line USING GIST (way) WHERE (waterway = ANY ('{dam,weir,lock_gate}'::text[]));
CREATE INDEX planet_osm_line_idx75788837 ON planet_osm_line USING GIST (way) WHERE ((highway IS NOT NULL) AND ((tunnel IS NULL) OR (tunnel <> ALL ('{yes,building_passage}'::text[]))) AND ((covered IS NULL) OR (covered <> 'yes'::text)) AND ((bridge IS NULL) OR (bridge <> ALL ('{yes,boardwalk,cantilever,covered,low_water_crossing,movable,trestle,viaduct}'::text[]))));
CREATE INDEX planet_osm_line_idx83190393 ON planet_osm_line USING GIST (way) WHERE (power = 'minor_line'::text);
CREATE INDEX planet_osm_line_idx85139954 ON planet_osm_line USING GIST (way) WHERE ((name IS NOT NULL) AND (route = 'ferry'::text));
CREATE INDEX planet_osm_line_idx92103431 ON planet_osm_line USING GIST (way) WHERE (power = 'line'::text);
CREATE INDEX planet_osm_point_idx10386743 ON planet_osm_point USING GIST (way) WHERE (power = 'pole'::text);
CREATE INDEX planet_osm_point_idx18413170 ON planet_osm_point USING GIST (way) WHERE ((name IS NOT NULL) AND (place = ANY ('{city,town}'::text[])) AND ((capital IS NULL) OR (capital <> 'yes'::text)));
CREATE INDEX planet_osm_point_idx20687499 ON planet_osm_point USING GIST (way) WHERE ((("addr:housenumber" IS NOT NULL) OR ("addr:housename" IS NOT NULL)));
CREATE INDEX planet_osm_point_idx21526229 ON planet_osm_point USING GIST (way) WHERE ((aeroway = ANY ('{helipad,aerodrome}'::text[])) OR (tourism = ANY ('{artwork,alpine_hut,camp_site,caravan_site,chalet,wilderness_hut,guest_house,hostel,hotel,motel,information,museum,viewpoint,picnic_site}'::text[])) OR (amenity = ANY ('{shelter,atm,bank,bar,bicycle_rental,bus_station,cafe,car_rental,car_wash,cinema,clinic,community_centre,fire_station,fountain,fuel,hospital,ice_cream,embassy,library,courthouse,townhall,parking,bicycle_parking,motorcycle_parking,pharmacy,doctors,dentist,place_of_worship,police,post_box,post_office,pub,biergarten,recycling,restaurant,food_court,fast_food,telephone,emergency_phone,taxi,theatre,toilets,drinking_water,prison,hunting_stand,nightclub,veterinary,social_facility,charging_station,arts_centre}'::text[])) OR (shop IS NOT NULL) OR (leisure = ANY ('{water_park,playground,miniature_golf,golf_course,picnic_table,slipway,dog_park}'::text[])) OR (man_made = ANY ('{mast,water_tower,lighthouse,windmill,cross,obelisk}'::text[])) OR ("natural" = ANY ('{peak,volcano,saddle,spring,cave_entrance}'::text[])) OR (historic = ANY ('{memorial,monument,archaeological_site,wayside_cross}'::text[])) OR (highway = ANY ('{bus_stop,elevator,traffic_signals,ford}'::text[])) OR ((power = 'generator'::text) AND (("generator:source" = 'wind'::text) OR (power_source = 'wind'::text))));
CREATE INDEX planet_osm_point_idx24038099 ON planet_osm_point USING GIST (way) WHERE ((name IS NOT NULL) AND (((place = ANY ('{village,hamlet}'::text[])) AND ((capital IS NULL) OR (capital <> 'yes'::text))) OR (place = ANY ('{suburb,neighbourhood,locality,isolated_dwelling,farm}'::text[]))));
CREATE INDEX planet_osm_point_idx37076637 ON planet_osm_point USING GIST (way) WHERE ((highway = 'motorway_junction'::text) OR (highway = 'traffic_signals'::text) OR (junction = 'yes'::text));
CREATE INDEX planet_osm_point_idx45347106 ON planet_osm_point USING GIST (way) WHERE ((railway = ANY ('{station,halt,tram_stop,subway_entrance}'::text[])) OR (aerialway = 'station'::text));
CREATE INDEX planet_osm_point_idx46646846 ON planet_osm_point USING GIST (way) WHERE ("natural" = 'tree'::text);
CREATE INDEX planet_osm_point_idx50942855 ON planet_osm_point USING GIST (way) WHERE ((highway = 'mini_roundabout'::text) OR (railway = ANY ('{level_crossing,crossing}'::text[])) OR (amenity = ANY ('{parking,bicycle_parking,motorcycle_parking,bench,waste_basket}'::text[])) OR (historic = 'wayside_cross'::text) OR (man_made = 'cross'::text) OR (barrier = ANY ('{bollard,gate,lift_gate,swing_gate,block}'::text[])));
CREATE INDEX planet_osm_point_idx52550809 ON planet_osm_point USING GIST (way) WHERE (power = 'tower'::text);
CREATE INDEX planet_osm_point_idx56150483 ON planet_osm_point USING GIST (way) WHERE ((name IS NOT NULL) AND (capital = 'yes'::text) AND (place = ANY ('{city,town,village,hamlet}'::text[])));
CREATE INDEX planet_osm_point_idx66310511 ON planet_osm_point USING GIST (way) WHERE ((highway = 'turning_circle'::text) OR (highway = 'turning_loop'::text));
CREATE INDEX planet_osm_point_idx70889319 ON planet_osm_point USING GIST (way) WHERE (waterway = ANY ('{dam,weir,lock_gate}'::text[]));
CREATE INDEX planet_osm_point_idx93768565 ON planet_osm_point USING GIST (way) WHERE (((name IS NOT NULL) OR ((ele IS NOT NULL) AND (("natural" = ANY ('{peak,volcano,saddle}'::text[])) OR (tourism = 'alpine_hut'::text) OR (amenity = 'shelter'::text))) OR ((ref IS NOT NULL) AND (aeroway = 'gate'::text))) AND ((aeroway = ANY ('{gate,apron,helipad,aerodrome}'::text[])) OR (tourism = ANY ('{artwork,alpine_hut,hotel,motel,hostel,chalet,wilderness_hut,guest_house,camp_site,caravan_site,theme_park,museum,viewpoint,attraction,zoo,information,picnic_site}'::text[])) OR (amenity IS NOT NULL) OR (shop IS NOT NULL) OR (leisure IS NOT NULL) OR (landuse = ANY ('{reservoir,basin,recreation_ground,village_green,quarry,vineyard,orchard,cemetery,residential,garages,meadow,grass,allotments,forest,farmyard,farmland,greenhouse_horticulture,retail,industrial,railway,commercial,brownfield,landfill,construction,military,plant_nursery}'::text[])) OR (man_made = ANY ('{lighthouse,windmill,mast,water_tower,cross,obelisk}'::text[])) OR ("natural" IS NOT NULL) OR (place = ANY ('{island,islet}'::text[])) OR (military = 'danger_area'::text) OR (historic = ANY ('{memorial,monument,archaeological_site,wayside_cross}'::text[])) OR (highway = ANY ('{bus_stop,services,rest_area,elevator,ford}'::text[])) OR (power = ANY ('{plant,station,generator,sub_station,substation}'::text[])) OR (boundary = 'national_park'::text) OR (waterway = ANY ('{dam,weir}'::text[]))));
CREATE INDEX planet_osm_polygon_idx11962040 ON planet_osm_polygon USING GIST (way) WHERE ((highway = ANY ('{residential,unclassified,pedestrian,service,footway,living_street,track,path,platform,services}'::text[])) OR (railway = 'platform'::text) OR (aeroway = ANY ('{runway,taxiway,helipad}'::text[])));
CREATE INDEX planet_osm_polygon_idx12089063 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '9348183.08451213'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx12240851 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND (landuse = 'military'::text));
CREATE INDEX planet_osm_polygon_idx12772911 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND ((boundary = 'national_park'::text) OR (leisure = 'nature_reserve'::text)));
CREATE INDEX planet_osm_polygon_idx12969256 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '149570451.621348'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx15484297 ON planet_osm_polygon USING GIST (way) WHERE ((railway = ANY ('{station,halt,tram_stop}'::text[])) OR (aerialway = 'station'::text));
CREATE INDEX planet_osm_polygon_idx23382181 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '9572549033.16736'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx25231780 ON planet_osm_polygon USING GIST (way) WHERE (man_made = ANY ('{pier,breakwater,groyne}'::text[]));
CREATE INDEX planet_osm_polygon_idx30791609 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '598281806.485391'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx31979258 ON planet_osm_polygon USING GIST (way) WHERE (((name IS NOT NULL) OR ((ref IS NOT NULL) AND (aeroway = 'gate'::text))) AND ((aeroway = ANY ('{gate,apron,helipad,aerodrome}'::text[])) OR (tourism = ANY ('{artwork,alpine_hut,hotel,motel,hostel,chalet,wilderness_hut,guest_house,camp_site,caravan_site,theme_park,museum,viewpoint,attraction,zoo,information,picnic_site}'::text[])) OR (amenity IS NOT NULL) OR (shop IS NOT NULL) OR (leisure IS NOT NULL) OR (landuse IS NOT NULL) OR (man_made = ANY ('{lighthouse,windmill,mast,water_tower,pier,breakwater,groyne,obelisk}'::text[])) OR ("natural" IS NOT NULL) OR (place = ANY ('{island,islet}'::text[])) OR (military = 'danger_area'::text) OR (historic = ANY ('{memorial,monument,archaeological_site}'::text[])) OR (highway = ANY ('{services,rest_area,bus_stop,elevator,ford}'::text[])) OR (power = ANY ('{plant,station,generator,sub_station,substation}'::text[])) OR (boundary = 'national_park'::text) OR (waterway = 'dam'::text)));
CREATE INDEX planet_osm_polygon_idx33985907 ON planet_osm_polygon USING GIST (way) WHERE (leisure = 'marina'::text);
CREATE INDEX planet_osm_polygon_idx34769359 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '0'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx34801855 ON planet_osm_polygon USING GIST (way) WHERE ((highway = ANY ('{residential,unclassified,pedestrian,service,footway,track,path,platform}'::text[])) OR (railway = 'platform'::text));
CREATE INDEX planet_osm_polygon_idx36223466 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '37392732.3380485'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx40144358 ON planet_osm_polygon USING GIST (way) WHERE (((aeroway = ANY ('{helipad,aerodrome}'::text[])) OR (tourism = ANY ('{artwork,alpine_hut,camp_site,caravan_site,chalet,wilderness_hut,guest_house,hostel,hotel,motel,information,museum,viewpoint,picnic_site}'::text[])) OR (amenity = ANY ('{shelter,atm,bank,bar,bicycle_rental,bus_station,cafe,car_rental,car_wash,cinema,clinic,community_centre,fire_station,fountain,fuel,hospital,ice_cream,embassy,library,courthouse,townhall,parking,bicycle_parking,motorcycle_parking,pharmacy,doctors,dentist,place_of_worship,police,post_box,post_office,pub,biergarten,recycling,restaurant,food_court,fast_food,telephone,emergency_phone,taxi,theatre,toilets,drinking_water,prison,hunting_stand,nightclub,veterinary,social_facility,charging_station,arts_centre}'::text[])) OR (shop IS NOT NULL) OR (leisure = ANY ('{water_park,playground,miniature_golf,golf_course,picnic_table}'::text[])) OR (man_made = ANY ('{mast,water_tower,lighthouse,windmill,obelisk}'::text[])) OR ("natural" = 'spring'::text) OR (historic = ANY ('{memorial,monument,archaeological_site}'::text[])) OR (highway = ANY ('{bus_stop,elevator,traffic_signals}'::text[])) OR ((power = 'generator'::text) AND (("generator:source" = 'wind'::text) OR (power_source = 'wind'::text)))));
CREATE INDEX planet_osm_polygon_idx42311213 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '37392732.3380485'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx45228058 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND ((landuse = ANY ('{forest,military}'::text[])) OR ("natural" = ANY ('{wood,wetland,mud,sand,scree,shingle,bare_rock}'::text[]))));
CREATE INDEX planet_osm_polygon_idx46456971 ON planet_osm_polygon USING GIST (way) WHERE (barrier IS NOT NULL);
CREATE INDEX planet_osm_polygon_idx46591758 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '149570451.621348'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx47183534 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND (("natural" = ANY ('{marsh,mud,wetland,wood,beach,shoal,reef,scrub}'::text[])) OR (landuse = 'forest'::text)));
CREATE INDEX planet_osm_polygon_idx50844626 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '2393137258.29184'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx51511926 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NOT NULL) AND (building <> 'no'::text) AND ((aeroway = 'terminal'::text) OR (amenity = 'place_of_worship'::text) OR (building = 'train_station'::text)));
CREATE INDEX planet_osm_polygon_idx53424509 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '598281806.485391'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx54211016 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND ((waterway = ANY ('{dock,riverbank}'::text[])) OR (landuse = ANY ('{reservoir,basin}'::text[])) OR ("natural" = ANY ('{water,glacier}'::text[]))));
CREATE INDEX planet_osm_polygon_idx55099074 ON planet_osm_polygon USING GIST (way) WHERE (man_made = 'bridge'::text);
CREATE INDEX planet_osm_polygon_idx56630504 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NOT NULL) AND (name IS NOT NULL) AND (building <> 'no'::text));
CREATE INDEX planet_osm_polygon_idx57511796 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '2393137258.29184'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '4'::text));
CREATE INDEX planet_osm_polygon_idx58505821 ON planet_osm_polygon USING GIST (way) WHERE ((amenity = ANY ('{parking,bicycle_parking,motorcycle_parking}'::text[])) OR (barrier = ANY ('{bollard,gate,lift_gate,swing_gate,block}'::text[])));
CREATE INDEX planet_osm_polygon_idx59659425 ON planet_osm_polygon USING GIST (way) WHERE ((landuse IS NOT NULL) OR (leisure IS NOT NULL) OR (aeroway = ANY ('{apron,aerodrome}'::text[])) OR (amenity = ANY ('{parking,bicycle_parking,motorcycle_parking,university,college,school,hospital,kindergarten,grave_yard,place_of_worship,prison,clinic}'::text[])) OR (military = 'danger_area'::text) OR ("natural" = ANY ('{beach,shoal,heath,mud,marsh,wetland,grassland,wood,sand,scree,shingle,bare_rock,scrub}'::text[])) OR (power = ANY ('{station,sub_station,substation,generator}'::text[])) OR (tourism = ANY ('{attraction,camp_site,caravan_site,picnic_site}'::text[])) OR (highway = ANY ('{services,rest_area}'::text[])) OR (railway = 'station'::text));
CREATE INDEX planet_osm_polygon_idx61527380 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NULL) AND (name IS NOT NULL) AND ((landuse = ANY ('{forest,military}'::text[])) OR ("natural" = ANY ('{wood,glacier,sand,scree,shingle,bare_rock}'::text[])) OR (place = 'island'::text) OR (boundary = 'national_park'::text) OR (leisure = 'nature_reserve'::text)));
CREATE INDEX planet_osm_polygon_idx63062396 ON planet_osm_polygon USING GIST (way) WHERE ((tourism = 'theme_park'::text) OR (tourism = 'zoo'::text));
CREATE INDEX planet_osm_polygon_idx65178169 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '9348183.08451213'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx67056492 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '153161090278.969'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx70889319 ON planet_osm_polygon USING GIST (way) WHERE (waterway = ANY ('{dam,weir,lock_gate}'::text[]));
CREATE INDEX planet_osm_polygon_idx72505525 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (boundary = 'administrative'::text) AND (admin_level = ANY ('{0,1,2,3,4,5,6,7,8,9,10}'::text[])));
CREATE INDEX planet_osm_polygon_idx74474856 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND ((boundary = 'national_park'::text) OR (leisure = 'nature_reserve'::text)));
CREATE INDEX planet_osm_polygon_idx75125233 ON planet_osm_polygon USING GIST (way) WHERE ((building IS NOT NULL) AND (building <> 'no'::text) AND ((aeroway IS NULL) OR (aeroway <> 'terminal'::text)) AND ((amenity IS NULL) OR (amenity <> 'place_of_worship'::text)) AND (building <> 'train_station'::text));
CREATE INDEX planet_osm_polygon_idx79350694 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '9572549033.16736'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx84124032 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (boundary = 'administrative'::text) AND  AND (admin_level = ANY ('{0,1,2,3,4,5,6,7,8,9,10}'::text[])));
CREATE INDEX planet_osm_polygon_idx84588907 ON planet_osm_polygon USING GIST (way) WHERE ((("addr:housenumber" IS NOT NULL) OR ("addr:housename" IS NOT NULL)) AND (building IS NOT NULL));
CREATE INDEX planet_osm_polygon_idx85151155 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '38290272569.7422'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_polygon_idx85333350 ON planet_osm_polygon USING GIST (way) WHERE ((highway = ANY ('{residential,unclassified,pedestrian,service,footway,cycleway,living_street,track,path,platform}'::text[])) OR ((railway = 'platform'::text) AND (name IS NOT NULL)));
CREATE INDEX planet_osm_polygon_idx90958577 ON planet_osm_polygon USING GIST (way) WHERE ((name IS NOT NULL) AND (way_area > '0'::double precision) AND (boundary = 'administrative'::text) AND (admin_level = '2'::text));
CREATE INDEX planet_osm_roads_idx30052465 ON planet_osm_roads USING GIST (way) WHERE (((highway IS NOT NULL) OR ((railway IS NOT NULL) AND (railway <> 'preserved'::text) AND ((service IS NULL) OR (service <> ALL ('{spur,siding,yard}'::text[]))))));
CREATE INDEX planet_osm_roads_idx32021050 ON planet_osm_roads USING GIST (way) WHERE ((highway IS NOT NULL) OR ((railway IS NOT NULL) AND (railway <> 'preserved'::text) AND ((service IS NULL) OR (service <> ALL ('{spur,siding,yard}'::text[])))));
CREATE INDEX planet_osm_roads_idx38515936 ON planet_osm_roads USING GIST (way) WHERE ((ref IS NOT NULL) AND (highway = ANY ('{motorway,trunk,primary,secondary}'::text[])) AND (array_length(string_to_array(ref, ';'::text), 1) <= 4) AND ((SubPlan 2) <= 11));
CREATE INDEX planet_osm_roads_idx58645906 ON planet_osm_roads USING GIST (way) WHERE ((osm_id < 0) AND (boundary = 'administrative'::text) AND (admin_level = ANY ('{0,1,2,3,4,5,6,7,8}'::text[])));
CREATE INDEX planet_osm_roads_idx78845072 ON planet_osm_roads USING GIST (way) WHERE ((osm_id < 0) AND (boundary = 'administrative'::text) AND (admin_level = ANY ('{0,1,2,3,4}'::text[])));
CREATE INDEX planet_osm_roads_idx89688848 ON planet_osm_roads USING GIST (way) WHERE ((osm_id < 0) AND (boundary = 'administrative'::text) AND (admin_level = ANY ('{0,1,2,3,4,5,6,7,8,9,10}'::text[])));
