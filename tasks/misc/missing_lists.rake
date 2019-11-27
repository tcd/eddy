require "eddy"

namespace :misc do
  task :missing_lists do

    missing_lists = [
      "4",
      "5",
      "24",
      "35",
      "116",
      "140",
      "141",
      "154",
      "168",
      "177",
      "196",
      "215",
      "218",
      "222",
      "230",
      "254",
      "264",
      "265",
      "268",
      "269",
      "277",
      "296",
      "298",
      "301",
      "333",
      "348",
      "464",
      "498",
      "540",
      "541",
      "556",
      "573",
      "581",
      "597",
      "638",
      "702",
      "712",
      "721",
      "746",
      "758",
      "781",
      "806",
      "807",
      "819",
      "833",
      "860",
      "874",
      "876",
      "899",
      "930",
      "1003",
      "1011",
      "1014",
      "1034",
      "1049",
      "1072",
      "1096",
      "1126",
      "1148",
      "1149",
      "1155",
      "1158",
      "1245",
      "1252",
      "1253",
      "1255",
      "1256",
      "1276",
      "1314",
      "1315",
      "1318",
      "1325",
      "1334",
      "1352",
      "1354",
      "1397",
      "1415",
      "1460",
      "1482",
      "1490",
      "1494",
      "1654",
      "1655",
      "1661",
      "1684",
      "1688",
      "I38",
    ]

    elements_file = File.join(Eddy.data_dir, "004010", "elements.tsv")
    out_file = File.join(Eddy.root_dir, "tmp", "missing_lists.tsv")
    data = Eddy.parse_tsv(elements_file)

    File.open(out_file, "a") do |f|
      f.write(%w[id name min max description].join("\t") + "\n")
      data.each do |d|
        if missing_lists.include?(d[:id].strip)
          line = [
            d[:id],
            d[:name],
            d[:min],
            d[:max],
            d[:description],
          ].map(&:strip).join("\t")
          f.write(line + "\n")
        end
      end
    end


  end
end
