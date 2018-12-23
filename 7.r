source("https://raw.githubusercontent.com/izeh/i/master/i.r")

eta <- scan("https://raw.githubusercontent.com/izeh/i/master/e.csv")

boxdens.plot(eta, dens.curve = T, violin = T, box.plot = T, descriptives = T, xlab = bquote("Common"~eta[p]^2~"in L2"),
               sampling = T, reflect.fade = .4, reflect.col = "purple", hist.bars = 30)
