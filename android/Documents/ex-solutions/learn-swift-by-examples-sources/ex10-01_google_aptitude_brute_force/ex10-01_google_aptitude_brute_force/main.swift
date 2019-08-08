
for w in 1...9 {
  
  for d in 1...9 {
    if (d == w) {
        continue
    }
    
    for o in 0...9 {
      if (o == d  || o == w) {
          continue
      }

      for t in 0...9 {
        if (t == o || t == d  || t == w) {
            continue
        }
        
        for g in 0...9 {
          if (g == t || g == o || g == d ||  g == w) {
              continue
          }
          
          for l in 0...9  {
            if (l == g || l == t || l == o || l == d || l == w) {
                continue
            }
            
            for e in 0...9 {
              if (e == l || e == g || e == t || e == o || e == d || e == w) {
                continue
              }
              
              for c in 0...9 {
                if (c==e || c==l || c==g || c==t || c==o || c==d || c==w) {
                    continue
                }
                
                for m in 0...9  {
                  if (m==c || m==e || m==l || m==g || m==t || m==o || m==d || m==w) {
                    continue
                  }                  
                 
                  let top_no =    w * 100000 + w * 10000 + w * 1000 + d * 100 + o * 10 + t
                  let bottom_no = g * 100000 + o * 10000 + o * 1000 + g * 100 + l * 10 + e
                  let result =    d * 100000 + o * 10000 + t * 1000 + c * 100 + o * 10  + m
                  
                  // println("\(top_no) - \(bottom_no) = \(result)")

                  if ( (top_no - bottom_no) == result) {
                      print("\(top_no) - \(bottom_no) = \(result)")
                      // puts "g => #{g}, o => #{o}, l => #{l}, e => #{e}, d => #{d}, t => #{t}, c => #{c}, m => #{m}, w => #{w}"
                  }
                  
                }
              }
            }
          }
        }
      }
        
    }
  }
}
