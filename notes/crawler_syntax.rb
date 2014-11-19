# --------------
# Crawler syntax
# --------------

# Phases of processing:
#   - Load all models.
#   - Iterate through templates.
#       Each template requires its dependent crawlers.


# #find is singular (.first)
Models.find(name:'sanyo_projector').functions.power_on
Models[name:'sanyo_projector'].functions.power_on


# #select always returns an array, even if empty
Models.select(type:'class').each { ... }


# Returns entire tree or empty array
Models.all




Models[name:'bar_proj_1'].functions.power_on
