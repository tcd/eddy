# Data from an EDI document.
#
#   ISA*00*          *00*          *01*031595309      *01*117247019      *190625*1707*U*00401*000272573*0*T*>~
#   GS*PO*031595309*117247019*20191125*1707*1504650*X*004010~
#   ST*850*001504201~
#   BEG*00*DS*00000007283030**20191125~
#   TD5*****UPS3~
#   N1*ST*Donald Trump~
#   N3*1600 Pennsylvania Avenue NW~
#   N4*Washington*DC*20500*US~
#   PO1*1*69*EA*59.95**UP*860001662184*VP*860001662184~
#   CTT*1~
#   SE*9*001504201~
#   GE*1*1504650~
#   IEA*1*000272573~
#
_result = [
  {
    id: "ISA",
    components: {
      ISA01: "00",
      ISA02: "          ",
      ISA03: "00",
      ISA04: "          ",
      ISA05: "01",
      ISA06: "031595309      ",
      ISA07: "01",
      ISA08: "117247019      ",
      ISA09: "190625", # date
      ISA10: "1707",   # time
      ISA11: "U",
      ISA12: "00401",
      ISA13: "000272573",
      ISA14: "0",
      ISA15: "T",
      ISA16: ">",
    },
  },
  {
    id: "GS",
    components: {
      GS01: "PO",
      GS02: "031595309",
      GS03: "117247019",
      GS04: "20191125", # date
      GS05: "1707", # time
      GS06: 1504650,
      GS07: "X",
      GS08: "004010",
    },
  },
  {
    id: "ST",
    components: {
      ST01: "850",
      ST02: "001504201",
    },
  },
  {
    id: "BEG",
    components: {
      BEG01: "00",
      BEG02: "DS",
      BEG03: "00000007283030",
      BEG04: nil,
      BEG05: "20191125", # date
      BEG06: nil,
      BEG07: nil,
      BEG08: nil,
      BEG09: nil,
      BEG10: nil,
      BEG11: nil,
      BEG12: nil,
    },
  },
  {
    id: "TD5",
    components: {
      TD501: nil,
      TD502: nil,
      TD503: nil,
      TD504: nil,
      TD505: "UPS3",
    },
  },
  {
    id: "N1",
    components: {
      N101: "ST",
      N102: "Donald Trump",
      N103: nil,
      N104: nil,
    },
  },
  {
    id: "N3",
    components: {
      N301: "1600 Pennsylvania Avenue NW",
      N302: nil,
    },
  },
  {
    id: "N4",
    components: {
      N401: "Washington",
      N402: "DC",
      N403: "20500",
      N404: "US",
    },
  },
  {
    id: "PO1",
    components: {
      PO101: "1",
      PO102: 69,
      PO103: "EA",
      PO104: 59.95,
      PO105: nil,
      PO106: "UP",
      PO107: "860001662184",
      PO108: "VP",
      PO109: "860001662184",
    },
  },
  {
    id: "CTT",
    components: {
      CTT01: 1,
      CTT02: nil,
      CTT03: nil,
      CTT04: nil,
      CTT05: nil,
      CTT06: nil,
      CTT07: nil,
    },
  },
  {
    id: "SE",
    components: {
      SE01: 9,
      SE02: "001504201",
    },
  },
  {
    id: "GE",
    components: {
      GE01: 1,
      GE02: 1504650,
    },
  },
  {
    id: "IEA",
    components: {
      IEA01: 1,
      IEA02: 272573,
    },
  },
]
