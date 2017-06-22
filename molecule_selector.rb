#select molecules such that:
# 1) ic50 is in the 20th percentile
# 2) pH is <= 5

test_lib = {
  "mol1" => {"ic50" => -11.26, "pH" => 7.2},
  "mol2" => {'ic50' => 1.35, "pH" => 5},
  "mol3" => {'ic50' => 9, "pH" => 0},
  "mol4" => {'ic50' => -45, "pH" =>12},
  "mol5" => {'ic50' => 0, "pH" => -10},
  "mol6" => {'ic50'=> -45, "pH" => 5},
  "mol7" => {'ic50'=> -23, "pH" => -12},
  "mol8" => {'ic50' => 16.34, "pH" => -10},
  "mol9" => {'ic50' => 1000, "pH" => 0},
  "mol10" => {'ic50' => -5.44, "pH" => 5},
  "mol11" => {'ic50' => 1, "pH" => 10}
}


def molecule_selector (lib)
  
  ic50_array = []
  
  lib.each do |molecule, sub_lib|
    sub_lib.each do |k, v|
      ic50_array << v if k == "ic50"
    end
  end
  
  per_20 = ic50_array.length/5
  
  ic50_limit = ic50_array.sort[0..per_20].max
  
  prospective_molecules1 = []
  prospective_molecules2 = []
  
  lib.each do |molecule, sub_lib|
    sub_lib.each do |k, v|
      prospective_molecules1 << molecule if ((k == "ic50") && (v <= ic50_limit)) 
    end
    sub_lib.each do |k, v|
      prospective_molecules2 << molecule if ((k == "pH") && (v <= 5)) 
    end
  end
  
  prospective_molecules1.select {|el| prospective_molecules2.include?(el)}
  
end