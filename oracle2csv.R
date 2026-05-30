# load the orcacle JSON and make a nice CSV file

library(jsonlite)
library(tidyverse)


or <- read_json("oracle-cards-20260503090239.json")

cn <- c("name", "mana_cost", "type_line", "oracle_text", "power", "toughness")

#         "colors"            "color_identity"   
#[25] "keywords"          "all_parts"         "legalities"       
#[28] "games"             "reserved"          "game_changer"     
#[31] "foil"              "nonfoil"           "finishes"         
#[34] "oversized"         "promo"             "reprint"          
#[37] "variation"         "set_id"            "set"              
#[40] "set_name"          "set_type"          "set_uri"          
#[43] "set_search_uri"    "scryfall_set_uri"  "rulings_uri"      
#[46] "prints_search_uri" "collector_number"  "digital"          
#[49] "rarity"            "watermark"         "flavor_text"      
#[52] "card_back_id"      "artist"            "artist_ids"       
#[55] "illustration_id"   "border_color"      "frame"            
#[58] "frame_effects"     "security_stamp"    "full_art"         
#[61] "textless"          "booster"           "story_spotlight"  
#[64] "edhrec_rank"       "preview"           "prices"           
#[67] "related_uris"      "purchase_uris"    


or_proc <- lapply(or, \(x) x[cn])

or_proc <- do.call(rbind, or_proc)

write.csv(or_proc, row.names=FALSE, file="oractle.csv")



