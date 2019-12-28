module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 140
    # - Name: Standard Carrier Alpha Code
    # - Type: ID
    # - Min/Max: 2/4
    # - Description: Code uniquely identifying a Transaction Set
    #
    # ### Notes:
    #
    # - This code list is frequently updated.
    #     - [Academic Dictionaries and Encyclopedias](https://enacademic.com/dic.nsf/enwiki/6012706)
    #     - [Harley Davidson EDI Implementation Guide](https://www.h-dsn.com/genbus/PublicDocServlet?docID=340&docExt=pdf)
    #     - [Standard Carrier Alpha Code - Wikipedia](https://en.wikipedia.org/wiki/Standard_Carrier_Alpha_Code)
    class E140 < Eddy::Element::AN

      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "140"
        @name = "Standard Carrier Alpha Code"
        @description = "Standard Carrier Alpha Code"
        super(
          min: 2,
          max: 4,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          # https://enacademic.com/dic.nsf/enwiki/6012706
          "YFSY", # Yellow Transportation - A Less than truckload (LTL) carrier
          "RDWY", # Roadway Express - A Less than truckload (LTL) carrier
          "UPSN", # United Parcel Service - A package delivery company
          "UPSS", # United Parcel Service - A package delivery company
          "UPSC", # United Parcel Service - A package delivery company
          "UPSZ", # United Parcel Service - A package delivery company
          "USPS", # United States Postal Service
          "FDE",  # FedEx Express
          "FDEG", # FedEx Ground - A package delivery company
          "FDCC", # FedEx Custom Critical
          "FEXF", # FedEx Freight
          "FXFE", # FedEx LTL Freight East
          "FXFW", # FedEx LTL Freight West (formerly VIKN - Viking)
          "FXNL", # FedEx Freight National (formerly Watkins)
          "PTWT", # Panther II Expedited Services, Inc. - An expediting company
          "PLNZ", # Penske/Quality Express
          "PSKL", # Penske/Quality Express
          "HAEI", # Heartland Express
          "HYWK", # Hyway Trucking
          "HGTN", # Hogan Transport
          "SCNN", # Schneider National
          "WESV", # Wes Pro Fleet Services
          "AAIE", # ALG Admiral
          "SWFT", # Swift Transportation
          "FTLC", # Findlay Truck Line Company
          "ANTT", # Arnold Transportation
          "KLFU", # "K" Line
          "SNLU", # SinoTrans
          "USIT", # USA Truck
          "UDRY", # USA Logistics
          "USAW", # USA Logistics
          "USXI", # U.S. Express
          "CMDU", # Canadian-American Transport
          "YODA", # D&D Sexton
          "DMLI", # Diamond Logistics
          "SALT", # Salser and Sons
          # https://en.wikipedia.org/wiki/Standard_Carrier_Alpha_Code
          "AYAF", # AAFES PRIVATE FLEET
          "ABFS", # ABF FREIGHT
          "ALLV", # ALLIED VAN LINES
          "ARFW", # AMERICAN FREIGHTWAYS
          "ANRM", # ALIANCA
          "ANTC", # AMINO TRANSPORT
          "BAXG", # BAX GLOBAL
          "BKFB", # Bulk FR8 (Liquid Bulk)
          "BLOJ", # Bridge Logistics
          "BNAF", # BAX GLOBAL (air)
          "BTEY", # BT EXPRESS FREIGHT SYSTEMS
          "CHRP", # CHEEMA TRANSPORT INC
          "CBNP", # CARBONITE LOGISTICS
          "CTII", # CENTRAL TRANSPORT
          "CNPC", # Carolina Transportation Inc
          "CGSQ", # Carolina Logistics Inc
          "CDNK", # Celadon
          "CHKA", # Chermak Cartage, LLC
          "CJRF", # CJR Trucking, Inc.
          "CJRQ", # Cheeseman Transport
          "CMDU", # CMA CGM
          "COSU", # China Ocean Shipping Lines
          "COTO", # Country Transport
          "CPGP", # Container Port Group
          "CSXT", # CSX TRANSPORTATION
          "CWAS", # Cowan systems, LLC
          "CWCE", # CON-WAY CENTRAL EXPRESS
          "CWIM", # CON-WAY INTERMODAL
          "CWSE", # CON-WAY SOUTHERN EXPRESS
          "CWWE", # CON-WAY WESTERN EXPRESS
          "DYLT", # Daylight Transport LLC
          "DAFG", # DAYTON FREIGHT
          "DBGB", # DBO Bahnoperator
          "DMLI", # Diamond Logistics
          "DOLR", # DOT-LINE TRANSPORTATION
          "ELOI", # Ease Logistics
          "EGLV", # Evergreen
          "EWCF", # EMERY WORLDWIDE
          "EXLA", # Estes Express
          "EXPD", # Expeditors International Ocean
          "FDCC", # FedEx Custom Critical
          "FDEG", # FEDEX GROUND
          "FDE",  # FedEx Express (AIR)
          "FLJF", # FLT LOGISTICS LLC
          "FTNA", # Fortune Transportation
          "FWFG", # FIFTH WHEEL FREIGHT LLC
          "FXFE", # FedEx Freight
          "FXFE", # FedEx LTL Freight East
          "FXFW", # FedEx LTL Freight West (formerly VIKN - Viking)
          "FXNL", # FedEx Freight National (formerly Watkins)
          "GPTC", # G & P Trucking, Inc.
          "GBEA", # GILBERT EAST CORP
          "GBXI", # GILBERT EXPRESS
          "HAEI", # Heartland Express
          "HJBT", # J.B. Hunt Transport Services, Inc.
          "HOYO", # HOYER Deep Sea
          "HRCF", # Hercules Forwarding Inc
          "HUBT", # Hub Group
          "IEXA", # Intelcom Express
          "INML", # INTERMODAL SERVICES
          "ITFC", # INTER TRANS FREIGHT
          "HJBT", # J.B. HUNT
          "KAEJ", # KANE IS ABLE
          "KHNN", # KUEHNE + NAGEL
          "KNIG", # Knight Transportation
          "LDYN", # Logistic Dynamics, Inc.
          "LDYQ", # LDI Trucking, Inc.
          "MAEU", # Maersk Line
          "MCPU", # MCC Transport Singapore Pte Ltd.
          "MGMC", # MGM TRANSPORT
          "MSCU", # Mediterranean Shipping Company S.A.
          "MTEN", # Marten Transport LTD.
          "NAFT", # NATIONAL FREIGHT
          "NAVI", # North American Van Lines, Inc.
          "NXPL", # National Xpress Logistics
          "NYKS", # NYK
          "NYKU", # NYK
          "ODFL", # OLD DOMINION FREIGHT LINE
          "OOLU", # Orient Overseas Container Line
          "PAYL", # PAYSTAR LOGISTICS
          "PENS", # Peninsula Truck Lines
          "PFLP", # PACIFIC LOGISTICS CORP
          "PAMT", # PAM Transport Inc
          "PSQL", # PERFORMANCE LOGISTICS
          "PDME", # PIEDMONT EXPRESS
          "PLGQ", # Precision Logistics Group
          "PNEP", # Panalpina (Pantainer Express Line)
          "PRIJ", # Prime Inc.
          "PRML", # Prime Logistics & Intermodal
          "PYLE", # A. Duie Pyle
          "GMLS", # R and L Carriers
          "RGLN", # Radiant Global Logistics
          "ROWL", # Rowl Trucking
          "RXLI", # Route Transportation & Logistics
          "RYOM", # Royal Oil
          "RDSS", # Rail Delivery Services, Inc.
          "RUSS", # Russel Delivery Services, Inc.
          "SAFM", # Safmarine
          "SAIA", # Saia LTL Freight
          "SCNN", # Schneider National
          "SDYA", # Same Day Air Logistics
          "SNCY", # Schneider National
          "SNLU", # Schneider National
          "STVV", # Stevens Transport
          "SUDU", # Hamburg Sud
          "SWFT", # SWIFT TRANSPORTATION
          "TCKM", # Truckers America
          "TPNW", # Triple A Logistics
          "TRKU", # TURKON LINE INC
          "UDRY", # USAW - USA Logistics
          "UPGF", # UPS FREIGHT (FKA Overnite Transportation Co / OVNT)
          "UPSN", # United Parcel Service
          "UPSS", # United Parcel Service
          "UPSC", # United Parcel Service
          "UPSZ", # United Parcel Service
          "USAU", # U.S. Government
          "USAX", # U.S. Government
          "UQEP", # UNIQUE EXPRESS
          "UYSN", # UNYSON
          "USIT", # USA Truck
          "USNW", # U.S. Northwest Express or USNW Express
          "USPS", # United States Postal Service
          "USXI", # U.S. Xpress
          "VCTS", # Vocar Transportation Services, LLC.
          "VLOQ", # VANEDGE LOGISTICS
          "VSRD", # Vistar Transportation Ltd.
          "XUI",  # Xpress United Inc.
          "XPOC", # XPO Logistics
          "FICS", # First International courier sys.
        ]
      end

    end
  end
end
