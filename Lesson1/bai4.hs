-- Cau hoi
--Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
dientichHinhtron r = pi * r^2
thetichHinhtron r h = (dientichHinhtron r) * h