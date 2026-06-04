use "G:\My Drive\working paper\Covid and attitude toward china\data for analysis.dta", replace

//**analysis for model 1
mixed newq176  sup_inc##c.new_c_vaccin##c.newq48  ||country:

//*plotting the marginal plot 
margins sup_inc, at(new_c_vaccin=(0 0.5 1 1.5 2) newq48=(1 2 3 4 5))
marginsplot, noci xdimension(newq48) plotdimension(at(new_c_vaccin)) bydimension(sup_inc)

//**analysis for model 2
mixed newq176  sup_inc##c.new_c_vaccin##c.newq48  newq139* c.newq140 newq120 newq142 c.newq174 age gender edu2 rural west_vaccine R_death||country:

