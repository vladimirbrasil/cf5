URI = "http://www.portalcoren-rs.gov.br/index.php?categoria=servicos&pagina=oportunidades"

filename = 'temp_corem.txt'

require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

page = a.get(URL)
page.links.each do |link|
  puts link.text
end
