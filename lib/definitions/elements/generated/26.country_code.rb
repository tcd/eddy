module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 26
    # - Name: Country Code
    # - Type: ID
    # - Min/Max: 2/3
    # - Description: Code identifying the country
    class E26 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "26"
        @name = "Country Code"
        @description = "Code identifying the country"
        super(
          min: 2,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AF", # Afghanistan
          "AFG", # Afghanistan
          "AX", # Åland Islands
          "ALA", # Åland Islands
          "AL", # Albania
          "ALB", # Albania
          "DZ", # Algeria
          "DZA", # Algeria
          "AS", # American Samoa
          "ASM", # American Samoa
          "AD", # Andorra
          "AND", # Andorra
          "AO", # Angola
          "AGO", # Angola
          "AI", # Anguilla
          "AIA", # Anguilla
          "AQ", # Antarctica
          "ATA", # Antarctica
          "AG", # Antigua and Barbuda
          "ATG", # Antigua and Barbuda
          "AR", # Argentina
          "ARG", # Argentina
          "AM", # Armenia
          "ARM", # Armenia
          "AW", # Aruba
          "ABW", # Aruba
          "AU", # Australia
          "AUS", # Australia
          "AT", # Austria
          "AUT", # Austria
          "AZ", # Azerbaijan
          "AZE", # Azerbaijan
          "BS", # Bahamas
          "BHS", # Bahamas
          "BH", # Bahrain
          "BHR", # Bahrain
          "BD", # Bangladesh
          "BGD", # Bangladesh
          "BB", # Barbados
          "BRB", # Barbados
          "BY", # Belarus
          "BLR", # Belarus
          "BE", # Belgium
          "BEL", # Belgium
          "BZ", # Belize
          "BLZ", # Belize
          "BJ", # Benin
          "BEN", # Benin
          "BM", # Bermuda
          "BMU", # Bermuda
          "BT", # Bhutan
          "BTN", # Bhutan
          "BO", # Bolivia (Plurinational State of)
          "BOL", # Bolivia (Plurinational State of)
          "BQ", # Bonaire, Sint Eustatius and Saba
          "BES", # Bonaire, Sint Eustatius and Saba
          "BA", # Bosnia and Herzegovina
          "BIH", # Bosnia and Herzegovina
          "BW", # Botswana
          "BWA", # Botswana
          "BV", # Bouvet Island
          "BVT", # Bouvet Island
          "BR", # Brazil
          "BRA", # Brazil
          "IO", # British Indian Ocean Territory
          "IOT", # British Indian Ocean Territory
          "BN", # Brunei Darussalam
          "BRN", # Brunei Darussalam
          "BG", # Bulgaria
          "BGR", # Bulgaria
          "BF", # Burkina Faso
          "BFA", # Burkina Faso
          "BI", # Burundi
          "BDI", # Burundi
          "CV", # Cabo Verde
          "CPV", # Cabo Verde
          "KH", # Cambodia
          "KHM", # Cambodia
          "CM", # Cameroon
          "CMR", # Cameroon
          "CA", # Canada
          "CAN", # Canada
          "KY", # Cayman Islands
          "CYM", # Cayman Islands
          "CF", # Central African Republic
          "CAF", # Central African Republic
          "TD", # Chad
          "TCD", # Chad
          "CL", # Chile
          "CHL", # Chile
          "CN", # China
          "CHN", # China
          "CX", # Christmas Island
          "CXR", # Christmas Island
          "CC", # Cocos (Keeling) Islands
          "CCK", # Cocos (Keeling) Islands
          "CO", # Colombia
          "COL", # Colombia
          "KM", # Comoros
          "COM", # Comoros
          "CG", # Congo
          "COG", # Congo
          "CD", # Congo, Democratic Republic of the
          "COD", # Congo, Democratic Republic of the
          "CK", # Cook Islands
          "COK", # Cook Islands
          "CR", # Costa Rica
          "CRI", # Costa Rica
          "CI", # Côte d'Ivoire
          "CIV", # Côte d'Ivoire
          "HR", # Croatia
          "HRV", # Croatia
          "CU", # Cuba
          "CUB", # Cuba
          "CW", # Curaçao
          "CUW", # Curaçao
          "CY", # Cyprus
          "CYP", # Cyprus
          "CZ", # Czechia
          "CZE", # Czechia
          "DK", # Denmark
          "DNK", # Denmark
          "DJ", # Djibouti
          "DJI", # Djibouti
          "DM", # Dominica
          "DMA", # Dominica
          "DO", # Dominican Republic
          "DOM", # Dominican Republic
          "EC", # Ecuador
          "ECU", # Ecuador
          "EG", # Egypt
          "EGY", # Egypt
          "SV", # El Salvador
          "SLV", # El Salvador
          "GQ", # Equatorial Guinea
          "GNQ", # Equatorial Guinea
          "ER", # Eritrea
          "ERI", # Eritrea
          "EE", # Estonia
          "EST", # Estonia
          "SZ", # Eswatini
          "SWZ", # Eswatini
          "ET", # Ethiopia
          "ETH", # Ethiopia
          "FK", # Falkland Islands (Malvinas)
          "FLK", # Falkland Islands (Malvinas)
          "FO", # Faroe Islands
          "FRO", # Faroe Islands
          "FJ", # Fiji
          "FJI", # Fiji
          "FI", # Finland
          "FIN", # Finland
          "FR", # France
          "FRA", # France
          "GF", # French Guiana
          "GUF", # French Guiana
          "PF", # French Polynesia
          "PYF", # French Polynesia
          "TF", # French Southern Territories
          "ATF", # French Southern Territories
          "GA", # Gabon
          "GAB", # Gabon
          "GM", # Gambia
          "GMB", # Gambia
          "GE", # Georgia
          "GEO", # Georgia
          "DE", # Germany
          "DEU", # Germany
          "GH", # Ghana
          "GHA", # Ghana
          "GI", # Gibraltar
          "GIB", # Gibraltar
          "GR", # Greece
          "GRC", # Greece
          "GL", # Greenland
          "GRL", # Greenland
          "GD", # Grenada
          "GRD", # Grenada
          "GP", # Guadeloupe
          "GLP", # Guadeloupe
          "GU", # Guam
          "GUM", # Guam
          "GT", # Guatemala
          "GTM", # Guatemala
          "GG", # Guernsey
          "GGY", # Guernsey
          "GN", # Guinea
          "GIN", # Guinea
          "GW", # Guinea-Bissau
          "GNB", # Guinea-Bissau
          "GY", # Guyana
          "GUY", # Guyana
          "HT", # Haiti
          "HTI", # Haiti
          "HM", # Heard Island and McDonald Islands
          "HMD", # Heard Island and McDonald Islands
          "VA", # Holy See
          "VAT", # Holy See
          "HN", # Honduras
          "HND", # Honduras
          "HK", # Hong Kong
          "HKG", # Hong Kong
          "HU", # Hungary
          "HUN", # Hungary
          "IS", # Iceland
          "ISL", # Iceland
          "IN", # India
          "IND", # India
          "ID", # Indonesia
          "IDN", # Indonesia
          "IR", # Iran (Islamic Republic of)
          "IRN", # Iran (Islamic Republic of)
          "IQ", # Iraq
          "IRQ", # Iraq
          "IE", # Ireland
          "IRL", # Ireland
          "IM", # Isle of Man
          "IMN", # Isle of Man
          "IL", # Israel
          "ISR", # Israel
          "IT", # Italy
          "ITA", # Italy
          "JM", # Jamaica
          "JAM", # Jamaica
          "JP", # Japan
          "JPN", # Japan
          "JE", # Jersey
          "JEY", # Jersey
          "JO", # Jordan
          "JOR", # Jordan
          "KZ", # Kazakhstan
          "KAZ", # Kazakhstan
          "KE", # Kenya
          "KEN", # Kenya
          "KI", # Kiribati
          "KIR", # Kiribati
          "KP", # Korea (Democratic People's Republic of)
          "PRK", # Korea (Democratic People's Republic of)
          "KR", # Korea, Republic of
          "KOR", # Korea, Republic of
          "KW", # Kuwait
          "KWT", # Kuwait
          "KG", # Kyrgyzstan
          "KGZ", # Kyrgyzstan
          "LA", # Lao People's Democratic Republic
          "LAO", # Lao People's Democratic Republic
          "LV", # Latvia
          "LVA", # Latvia
          "LB", # Lebanon
          "LBN", # Lebanon
          "LS", # Lesotho
          "LSO", # Lesotho
          "LR", # Liberia
          "LBR", # Liberia
          "LY", # Libya
          "LBY", # Libya
          "LI", # Liechtenstein
          "LIE", # Liechtenstein
          "LT", # Lithuania
          "LTU", # Lithuania
          "LU", # Luxembourg
          "LUX", # Luxembourg
          "MO", # Macao
          "MAC", # Macao
          "MG", # Madagascar
          "MDG", # Madagascar
          "MW", # Malawi
          "MWI", # Malawi
          "MY", # Malaysia
          "MYS", # Malaysia
          "MV", # Maldives
          "MDV", # Maldives
          "ML", # Mali
          "MLI", # Mali
          "MT", # Malta
          "MLT", # Malta
          "MH", # Marshall Islands
          "MHL", # Marshall Islands
          "MQ", # Martinique
          "MTQ", # Martinique
          "MR", # Mauritania
          "MRT", # Mauritania
          "MU", # Mauritius
          "MUS", # Mauritius
          "YT", # Mayotte
          "MYT", # Mayotte
          "MX", # Mexico
          "MEX", # Mexico
          "FM", # Micronesia (Federated States of)
          "FSM", # Micronesia (Federated States of)
          "MD", # Moldova, Republic of
          "MDA", # Moldova, Republic of
          "MC", # Monaco
          "MCO", # Monaco
          "MN", # Mongolia
          "MNG", # Mongolia
          "ME", # Montenegro
          "MNE", # Montenegro
          "MS", # Montserrat
          "MSR", # Montserrat
          "MA", # Morocco
          "MAR", # Morocco
          "MZ", # Mozambique
          "MOZ", # Mozambique
          "MM", # Myanmar
          "MMR", # Myanmar
          "NA", # Namibia
          "NAM", # Namibia
          "NR", # Nauru
          "NRU", # Nauru
          "NP", # Nepal
          "NPL", # Nepal
          "NL", # Netherlands
          "NLD", # Netherlands
          "NC", # New Caledonia
          "NCL", # New Caledonia
          "NZ", # New Zealand
          "NZL", # New Zealand
          "NI", # Nicaragua
          "NIC", # Nicaragua
          "NE", # Niger
          "NER", # Niger
          "NG", # Nigeria
          "NGA", # Nigeria
          "NU", # Niue
          "NIU", # Niue
          "NF", # Norfolk Island
          "NFK", # Norfolk Island
          "MK", # North Macedonia
          "MKD", # North Macedonia
          "MP", # Northern Mariana Islands
          "MNP", # Northern Mariana Islands
          "NO", # Norway
          "NOR", # Norway
          "OM", # Oman
          "OMN", # Oman
          "PK", # Pakistan
          "PAK", # Pakistan
          "PW", # Palau
          "PLW", # Palau
          "PS", # Palestine, State of
          "PSE", # Palestine, State of
          "PA", # Panama
          "PAN", # Panama
          "PG", # Papua New Guinea
          "PNG", # Papua New Guinea
          "PY", # Paraguay
          "PRY", # Paraguay
          "PE", # Peru
          "PER", # Peru
          "PH", # Philippines
          "PHL", # Philippines
          "PN", # Pitcairn
          "PCN", # Pitcairn
          "PL", # Poland
          "POL", # Poland
          "PT", # Portugal
          "PRT", # Portugal
          "PR", # Puerto Rico
          "PRI", # Puerto Rico
          "QA", # Qatar
          "QAT", # Qatar
          "RE", # Réunion
          "REU", # Réunion
          "RO", # Romania
          "ROU", # Romania
          "RU", # Russian Federation
          "RUS", # Russian Federation
          "RW", # Rwanda
          "RWA", # Rwanda
          "BL", # Saint Barthélemy
          "BLM", # Saint Barthélemy
          "SH", # Saint Helena, Ascension and Tristan da Cunha
          "SHN", # Saint Helena, Ascension and Tristan da Cunha
          "KN", # Saint Kitts and Nevis
          "KNA", # Saint Kitts and Nevis
          "LC", # Saint Lucia
          "LCA", # Saint Lucia
          "MF", # Saint Martin (French part)
          "MAF", # Saint Martin (French part)
          "PM", # Saint Pierre and Miquelon
          "SPM", # Saint Pierre and Miquelon
          "VC", # Saint Vincent and the Grenadines
          "VCT", # Saint Vincent and the Grenadines
          "WS", # Samoa
          "WSM", # Samoa
          "SM", # San Marino
          "SMR", # San Marino
          "ST", # Sao Tome and Principe
          "STP", # Sao Tome and Principe
          "SA", # Saudi Arabia
          "SAU", # Saudi Arabia
          "SN", # Senegal
          "SEN", # Senegal
          "RS", # Serbia
          "SRB", # Serbia
          "SC", # Seychelles
          "SYC", # Seychelles
          "SL", # Sierra Leone
          "SLE", # Sierra Leone
          "SG", # Singapore
          "SGP", # Singapore
          "SX", # Sint Maarten (Dutch part)
          "SXM", # Sint Maarten (Dutch part)
          "SK", # Slovakia
          "SVK", # Slovakia
          "SI", # Slovenia
          "SVN", # Slovenia
          "SB", # Solomon Islands
          "SLB", # Solomon Islands
          "SO", # Somalia
          "SOM", # Somalia
          "ZA", # South Africa
          "ZAF", # South Africa
          "GS", # South Georgia and the South Sandwich Islands
          "SGS", # South Georgia and the South Sandwich Islands
          "SS", # South Sudan
          "SSD", # South Sudan
          "ES", # Spain
          "ESP", # Spain
          "LK", # Sri Lanka
          "LKA", # Sri Lanka
          "SD", # Sudan
          "SDN", # Sudan
          "SR", # Suriname
          "SUR", # Suriname
          "SJ", # Svalbard and Jan Mayen
          "SJM", # Svalbard and Jan Mayen
          "SE", # Sweden
          "SWE", # Sweden
          "CH", # Switzerland
          "CHE", # Switzerland
          "SY", # Syrian Arab Republic
          "SYR", # Syrian Arab Republic
          "TW", # Taiwan
          "TWN", # Taiwan
          "TJ", # Tajikistan
          "TJK", # Tajikistan
          "TZ", # Tanzania, United Republic of
          "TZA", # Tanzania, United Republic of
          "TH", # Thailand
          "THA", # Thailand
          "TL", # Timor-Leste
          "TLS", # Timor-Leste
          "TG", # Togo
          "TGO", # Togo
          "TK", # Tokelau
          "TKL", # Tokelau
          "TO", # Tonga
          "TON", # Tonga
          "TT", # Trinidad and Tobago
          "TTO", # Trinidad and Tobago
          "TN", # Tunisia
          "TUN", # Tunisia
          "TR", # Turkey
          "TUR", # Turkey
          "TM", # Turkmenistan
          "TKM", # Turkmenistan
          "TC", # Turks and Caicos Islands
          "TCA", # Turks and Caicos Islands
          "TV", # Tuvalu
          "TUV", # Tuvalu
          "UG", # Uganda
          "UGA", # Uganda
          "UA", # Ukraine
          "UKR", # Ukraine
          "AE", # United Arab Emirates
          "ARE", # United Arab Emirates
          "GB", # United Kingdom of Great Britain and Northern Ireland
          "GBR", # United Kingdom of Great Britain and Northern Ireland
          "UM", # United States Minor Outlying Islands
          "UMI", # United States Minor Outlying Islands
          "US", # United States of America
          "USA", # United States of America
          "UY", # Uruguay
          "URY", # Uruguay
          "UZ", # Uzbekistan
          "UZB", # Uzbekistan
          "VU", # Vanuatu
          "VUT", # Vanuatu
          "VE", # Venezuela (Bolivarian Republic of)
          "VEN", # Venezuela (Bolivarian Republic of)
          "VN", # Viet Nam
          "VNM", # Viet Nam
          "VG", # Virgin Islands (British)
          "VGB", # Virgin Islands (British)
          "VI", # Virgin Islands (U.S.)
          "VIR", # Virgin Islands (U.S.)
          "WF", # Wallis and Futuna
          "WLF", # Wallis and Futuna
          "EH", # Western Sahara
          "ESH", # Western Sahara
          "YE", # Yemen
          "YEM", # Yemen
          "ZM", # Zambia
          "ZMB", # Zambia
          "ZW", # Zimbabwe
          "ZWE", # Zimbabwe
        ]
      end

    end
  end
end
