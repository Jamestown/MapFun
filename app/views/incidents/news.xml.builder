xml.rss(:version => "2.0") {
  xml.channel {
    xml.title("Head First Climbers News")
    xml.link("http://localhost:3000/incidents/")

    @incidents.each do |incident|
      xml.item {
        xml.title(incident.title)
        xml.description(incident.description)
        xml.link("http://localhost:3000/incidents/#{incident.id}")
      }
    end
  }
}