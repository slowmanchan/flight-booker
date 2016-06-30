airport_codes = ["YYZ", "TTO", "RRK", "SEO", "NYC",
                 "LAX", "CON", "FDR", "FFB", "SSB", "CCH",
                 "LLB", "SSO"]

airport_codes.each do |airport_code|
  Airport.create(code: airport_code)
end


200.times do
  airport_code1 = Airport.find_by(id: 1+rand(airport_codes.length))
  airport_code2 = Airport.find_by(id: 1+rand(airport_codes.length))

  unless airport_code1 == airport_code2
    Flight.create(origin_id: airport_code1.id,
                  departure_id: airport_code2.id,
                  duration: rand(1000), datetime: "sunday#{rand(100)}" )
  end
end
