tours = {
    destinations: { 
            California: 'San francisco', 
        transporation: {
            bus_seats: 10,
            boat_space: 15
        },
            tour_type: [
            "Alcatraz", "Angle Island", "Anchor Steam Brewery",
            "Magnolia Brewery"
             ]

    },
    destinations2: { 
                Hawaii: 'Kona',
            transporation: {
                bus_seats: 6,
                boat_space: 5    
            },
            tour_type: [
                "Zipline", "Volcano", "Snorkeling", "Deep Sea Fishing" 
                ]
    },
    destinations3: {
            Oregon: 'Portland',
        transporation: {
            bus_seats: 20,
        },
        tour_type: [
            "Mississippi Food Tour", "Brewery Bike Tour", 
            "Portlandia", "MT Hood" 
        ]
    }    
}

p tours[:destinations3][:Oregon] 
p tours[:destinations][:transporation][:boat_space]
p tours[:destinations2][:tour_type][1]
p tours[:destinations2][:tour_type].push("Helicopter")
p tours[:destinations][:tour_type].reverse
p tours[:destinations3][:transporation][:bus_seats]
