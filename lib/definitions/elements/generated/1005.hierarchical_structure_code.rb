module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1005
    # - Name: Hierarchical Structure Code
    # - Type: ID
    # - Min/Max: 4/4
    # - Description: Code indicating the hierarchical application structure of a transaction set that utilizes the HL segment to define the structure of the transaction set
    class E1005 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1005"
        @name = "Hierarchical Structure Code"
        @description = "Code indicating the hierarchical application structure of a transaction set that utilizes the HL segment to define the structure of the transaction set"
        super(
          min: 4,
          max: 4,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "0001", # Shipment, Order, Packaging, Item
          "0002", # Shipment, Order, Item, Packaging
          "0003", # Shipment, Packaging, Order, Item
          "0004", # Shipment, Order, Item
          "0010", # Information Source, Information Receiver, Provider of Service, Subscriber, Dependent
          "0011", # Information Receiver, Information Source, Provider of Service, Subscriber, Dependent
          "0012", # Information Source, Provider of Service, Subscriber, Dependent
          "0013", # Provider of Service, Information Source, Subscriber, Dependent
          "0014", # Provider of Service, Information Source, Information Receiver, Subscriber, Dependent
          "0015", # Information Receiver, Provider of Service, Subscriber, Dependent
          "0016", # Provider of Service, Subscriber, Dependent
          "0017", # Subscriber, Dependent
          "0018", # Information Receiver, Subscriber, Dependent
          "0019", # Information Source, Subscriber, Dependent
          "0020", # Information Source, Information Receiver, Group Coverage Options, Subscriber, Dependent
          "0021", # Information Source, Information Receiver, Group Coverage Options
          "0022", # Information Source, Information Receiver, Subscriber, Dependent
          "0023", # Information Receiver, Information Source, Subscriber, Dependent
          "0035", # Address, Shipment, Order
          "0036", # Address, Transaction Reference Number, Suffix, Serial Number
          "0055", # Supergroup, Group, Subgroup, Member
          "0056", # Supergroup, subgroup, member, ancillary facility or department
          "0057", # Supergroup, subgroup, member
          "0058", # Group, member, ancillary facility or department
          "0059", # Group, member
          "0060", # Hospital, ancillary facility or department
          "0061", # Health Industry Business Communications Council (HIBCC) Health Industry Number (HIN) database, facility record, location record
          "0062", # Franchisor, franchisee
          "0063", # Franchisee association, franchisee
          "0064", # Company, Company
          "0065", # Company, Operating Unit
          "0066", # Operating Unit, Operating Unit
          "0067", # Company, Property
          "0068", # Company, Property Property, Property
          "0069", # Operating Unit, Property
          "0070", # Property, Property
          "0071", # Company, Tradename
          "0072", # Operating Unit, Tradename
          "0073", # Property, Tradename
          "0074", # Company, Operating Unit, Operating Unit, Operating Unit
          "0075", # Operating Unit, Operating Unit, Operating Unit, Operating Unit
          "0076", # Company, Operating Unit, Operating Unit, Property
          "0077", # Tradename, Property
          "0078", # Information Source, Information Receiver, Subscriber, Dependent, Provider of Service, Services
          "0079", # Information Source, Information Receiver, Company/Corporation, Operating Unit
          "0080", # Information Source, Employer, Patient
          "0081", # Information Source, Patient
          "0082", # Information Source, Employer, Subscriber, Dependent
          "0083", # Information Source, Information Receiver, Subscriber, Dependent, Referring Provider, Provider of Service, Services
          "0200", # Credential Action (AP), Company/Corporation (35), Quantity (R), Transportation Equipment (E), Fleet (FL), Jurisdiction (JU)
          "0201", # Credential Action (AP), Company/Corporation (35), Transportation Equipment (E)
          "0202", # Credential Action (AP), Company/Corporation (35), Transportation Equipment (E), Quantity (R), Jurisdiction (JU)
          "0203", # Credential Action (AP), Company/Corporation (35), Transportation Equipment (E), Quantity (R)
          "0204", # Report (RP), Jurisdiction (JU), Company/Corporation (35)
          "0205", # Report (RP), Company/Corporation (35), Fleet (FL), Jurisdiction (JU), Transportation Equipment (E)
          "0206", # Credential Action (AP), Company/Corporation (35), Jurisdiction (JU), Transportation Equipment (E)
          "0207", # Credential Action (AP), Company/Corporation (35), Transportation Equipment (E), Component (F), Measurement (M), Jurisdiction (JU)
          "0208", # Credential Action (AP), Company/Corporation (35), Cost Type (CT), Jurisdiction (JU)
          "0209", # Credential Action (AP), Company/Corporation (35)
          "0210", # Credential Action (AP)
          "ZZZZ", # Mutually Defined
        ]
      end

    end
  end
end
