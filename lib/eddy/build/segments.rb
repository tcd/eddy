module Eddy
  module Build

    segment_file = File.join(Eddy.data_dir, "004010", "segments.tsv")
    segment_data = Eddy.parse_tsv(segment_file)

    headers = [
      "Ref",
      "Id",
      "ElementName",
      "Description",
      "Req",
      "Type",
      "Min",
      "Max",
      "Usage",
      "Default",
    ].join("\t")

    segment_data.each do |segment|
      File.open("tmp/segments/#{segment[:id]}.tsv", "a") { |f| f.write(headers) }
    end

  end
end
