module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 100
    # - Name: Currency Code
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code (Standard ISO) for country in whose currency the charges are specified
    class E100 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "100"
        @name = "Currency Code"
        @description = "Code (Standard ISO) for country in whose currency the charges are specified"
        super(
          min: 3,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AED", # United Arab Emirates Dirhams
          "AFN", # Afghan Afghanis
          "ALL", # Albanian Lek
          "AMD", # Armenian Drams
          "ANG", # Netherlands Antillean Guilders
          "AOA", # Angolan Kwanza
          "ARS", # Argentine Pesos
          "AUD", # Australian Dollars
          "AWG", # Aruban Guilders
          "AZN", # Azerbaijan New Manats
          "BAM", # Convertible Marka
          "BBD", # Barbados Dollars
          "BDT", # Bangladeshi Taka
          "BGN", # Bulgarian Leva
          "BHD", # Bahraini Dinars
          "BIF", # Burundi Francs
          "BMD", # Bermudian Dollars
          "BND", # Brunei Dollars
          "BOB", # Bolivianos
          "BRL", # Brazilian Real
          "BSD", # Bahamian Dollars
          "BTN", # Bhutan Ngultrum
          "BWP", # Botswana Pulas
          "BYR", # Belarussian Rubles
          "BZD", # Belize Dollars
          "CAD", # Canadian Dollars
          "CDF", # Franc
          "CHF", # Switzerland Francs
          "CLP", # Chilean Pesos
          "CNY", # Yuan Renminbi
          "COP", # Colombian Pesos
          "CRC", # Costa Rican Colones
          "CUP", # Cuban Pesos
          "CVE", # Cape Verde Escudos
          "CZK", # Czech Koruny
          "DJF", # Djibouti Francs
          "DKK", # Danish Kroner
          "DOP", # Dominican Pesos
          "DZD", # Algerian Dinar
          "ECS", # Ecuador Sucre
          "EEK", # Krooni
          "EGP", # Egyptian Pounds
          "ETB", # Ethopia Birr
          "EUR", # Euro
          "FJD", # Fiji Dollar
          "FKP", # Falkland Islands Pounds
          "GBP", # Pound Sterling
          "GEL", # Lari
          "GGP", # Pound Sterling
          "GHS", # Ghanaian Cedis
          "GIP", # Gibraltar Pounds
          "GMD", # Gambian Dalasi
          "GNF", # Guinea Francs
          "GTQ", # Quetzales
          "GYD", # Guyana Dollars
          "HKD", # Hong Kong Dollars
          "HNL", # Honduaran Lempiras
          "HRK", # Croatian Kuna
          "HTG", # Haitian Gourde
          "HUF", # Hungarian Forint
          "IDR", # Indonesian Rupiahs
          "ILS", # New Shekels
          "IMP", # Pounds
          "INR", # Indian Rupees
          "IQD", # Iraqi Dinars
          "IRR", # Iranian Riais
          "ISK", # Iceland Kronur
          "JEP", # Pounds
          "JMD", # Jamaican Dollars
          "JOD", # Jordanian Dinar
          "JPY", # Japanese Yen
          "KES", # Kenyan Shillings
          "KGS", # Soms
          "KHR", # Kampuchean Rieis
          "KMF", # Comoros Francs
          "KPW", # North Korean Won
          "KRW", # Korean Won
          "KWD", # Kuwaiti Dinars
          "KYD", # Cayman Islands Dollars
          "KZT", # Kazhakstan Tenege
          "LAK", # Lao Kips
          "LBP", # Lebanese Pounds
          "LKR", # Sri Lanka Rupees
          "LRD", # Liberian Dollars
          "LSL", # Lesotho Maloti
          "LTL", # Lithuanian Litai
          "LVL", # Latvian Lati
          "LYD", # Libyan Dinars
          "MAD", # Moroccan Dirhams
          "MDL", # Moldovan Lei
          "MKD", # Macedonian Denar
          "MGA", # Ariary
          "MMK", # Myanmar Kyat
          "MNK", # Kyats
          "MNT", # Mongolian Tugriks
          "MOP", # Macanese Pataca
          "MRO", # Mauritanian Ouguiyas
          "MUR", # Mauritius Rupees
          "MVR", # Maldive Rufiyaa
          "MWK", # Malawi Kwachas
          "MXN", # Mexican Nuevo Pesos
          "MYR", # Malaysian Ringgits
          "MZN", # Mozambique Meticals
          "NAD", # Namibian Dollars
          "NGN", # Nigerian Nairas
          "NIO", # Nicaraguan Cordobas Oro
          "NOK", # Norwegian Kroner
          "NPR", # Nepalese Rupees
          "NZD", # New Zealand Dollars
          "OMR", # Riais
          "PAB", # Balboa
          "PEN", # Peru Nuevos Soles
          "PGK", # Kina
          "PHP", # Phillippines Pesos
          "PKR", # Pakistani Rupees
          "PLN", # Poland Zlotych
          "PYG", # Paraguay Guarani
          "QAR", # Qatar Rials
          "RON", # Romanian New Lei
          "RSD", # Serbia Dinars
          "RUB", # Russia Rubles
          "RWF", # Francs
          "SAR", # Saudi Arabia Riyals
          "SBD", # Solomon Islands Dollars
          "SCR", # Seychelles Rupees
          "SDG", # Pounds
          "SEK", # Sweden Kronor
          "SGD", # Singapore Dollars
          "SHP", # Saint Helena Pounds
          "SLL", # Leones
          "SOS", # Somalia Shillings
          "SRD", # Surifull_name Dollars
          "STD", # Dobras
          "SVC", # Salvadoran Colón
          "SYP", # Syria Pounds
          "SZL", # Emalangeni
          "THB", # Thailand Baht
          "TJS", # Somoni
          "TMM", # Manat
          "TND", # Tunisian Dinars
          "TOP", # Pa'anga
          "TRY", # Turkey Lira
          "TTD", # Trinidad and Tobago Dollars
          "TVD", # Tuvalu Dollars
          "TWD", # Taiwan New Dollars
          "TZS", # Shillings
          "UAH", # Ukraine Hryvnia
          "UGX", # Shillings
          "USD", # United States Dollars
          "UYU", # Uruguay Pesos
          "UZS", # Uzbekistan Sums
          "VEF", # Venezuela Bolivares Fuertes
          "VND", # Viet Nam Dong
          "VUV", # Vanuatu Vatu
          "WST", # Samoan Tala
          "XAF", # Communauté Financière Africaine Francs
          "XCD", # East Caribbean Dollars
          "XOF", # Communauté Financière Africaine Francs
          "XPF", # Comptoirs Français du Pacifique Francs
          "YER", # Yemen Rials
          "ZAR", # South Africa Rand
          "ZMW", # Zambian Kwacha
          "ZWD", # Zimbabwe Dollars
        ]
      end

    end
  end
end
