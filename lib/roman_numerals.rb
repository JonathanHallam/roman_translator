class Numerator
  def numerator(value)
    translation = {
      '1' => "I",  '2' => "II",  '3' => "III",  '4' => "IV",  '5' => "V",
      '6' => "VI",  '7' => "VII",  '8' => "VIII",  '9' => "IX",  '10' => "X",
      '20' => "XX",  '30' => "XXX",  '40' => "XL",  '50' => "L",
      '60' => "LX",  '70' => "LXX",  '80' => "LXXX",  '90' => "XC",  '100' => "C",
      '200' => "CC",  '300' => "CCC",  '400' => "CD",  '500' => "D",
      '600' => "DC",  '700' => "DCC",  '800' => "DCCC",  '900' => "CM",  '1000' => "M",
      '2000' => "MM",  '3000' => "MMM",  '4000' => "MF",  '5000' => "F", '0' => "", '00' => "", '000' => ""
    }
    split_up = value.to_s.split('')
    if split_up.length == 1
      return translation[value.to_s]
    elsif split_up.length == 2
      split_up[0] = split_up[0] + "0"
      return translation[split_up[0]] + translation[split_up[1]]
    elsif split_up.length == 3
      split_up[0] = split_up[0] + "00"
      split_up[1] = split_up[1] + "0"
      return translation[split_up[0]] + translation[split_up[1]] + translation[split_up[2]]
    elsif split_up.length == 4
      split_up[0] = split_up[0] + "000"
      split_up[1] = split_up[1] + "00"
      split_up[2] = split_up[2] + "0"
      return translation[split_up[0]] + translation[split_up[1]] + translation[split_up[2]] + translation[split_up[3]]
    end
  end
end
