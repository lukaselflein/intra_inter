**** computation of consistency, treating the 2 conditionals as separate, 1 = triangle-square, 2 = card-number.

get file = 'c:\daten\spss\logik\multinomial\multinomial.daten.gefiltert.sav'.
exe.

do repeat
  a = antw11, antw12, antw13, antw14, antw21, antw22, antw23, antw24.
recode a (2 = 0).
end repeat.
exe.

do if (aussage1 = 1).
   if (urteil11 = 1) mp1 = antw11.
   if (urteil12 = 1) mp1 = antw12.
   if (urteil13 = 1) mp1 = antw13.
   if (urteil14 = 1) mp1 = antw14.
   if (urteil11 = 3) ac1 = antw11.
   if (urteil12 = 3) ac1 = antw12.
   if (urteil13 = 3) ac1 = antw13.
   if (urteil14 = 3) ac1 = antw14.
   if (urteil11 = 4) da1 = antw11.
   if (urteil12 = 4) da1 = antw12.
   if (urteil13 = 4) da1 = antw13.
   if (urteil14 = 4) da1 = antw14.
   if (urteil11 = 2) mt1 = antw11.
   if (urteil12 = 2) mt1 = antw12.
   if (urteil13 = 2) mt1 = antw13.
   if (urteil14 = 2) mt1 = antw14.

   if (urteil21 = 1) mp2 = antw21.
   if (urteil22 = 1) mp2 = antw22.
   if (urteil23 = 1) mp2 = antw23.
   if (urteil24 = 1) mp2 = antw24.
   if (urteil21 = 3) ac2 = antw21.
   if (urteil22 = 3) ac2 = antw22.
   if (urteil23 = 3) ac2 = antw23.
   if (urteil24 = 3) ac2 = antw24.
   if (urteil21 = 4) da2 = antw21.
   if (urteil22 = 4) da2 = antw22.
   if (urteil23 = 4) da2 = antw23.
   if (urteil24 = 4) da2 = antw24.
   if (urteil21 = 2) mt2 = antw21.
   if (urteil22 = 2) mt2 = antw22.
   if (urteil23 = 2) mt2 = antw23.
   if (urteil24 = 2) mt2 = antw24.
end if.

do if (aussage1 = 2).
   if (urteil21 = 1) mp1 = antw21.
   if (urteil22 = 1) mp1 = antw22.
   if (urteil23 = 1) mp1 = antw23.
   if (urteil24 = 1) mp1 = antw24.
   if (urteil21 = 3) ac1 = antw21.
   if (urteil22 = 3) ac1 = antw22.
   if (urteil23 = 3) ac1 = antw23.
   if (urteil24 = 3) ac1 = antw24.
   if (urteil21 = 4) da1 = antw21.
   if (urteil22 = 4) da1 = antw22.
   if (urteil23 = 4) da1 = antw23.
   if (urteil24 = 4) da1 = antw24.
   if (urteil21 = 2) mt1 = antw21.
   if (urteil22 = 2) mt1 = antw22.
   if (urteil23 = 2) mt1 = antw23.
   if (urteil24 = 2) mt1 = antw24.

   if (urteil11 = 1) mp2 = antw11.
   if (urteil12 = 1) mp2 = antw12.
   if (urteil13 = 1) mp2 = antw13.
   if (urteil14 = 1) mp2 = antw14.
   if (urteil11 = 3) ac2 = antw11.
   if (urteil12 = 3) ac2 = antw12.
   if (urteil13 = 3) ac2 = antw13.
   if (urteil14 = 3) ac2 = antw14.
   if (urteil11 = 4) da2 = antw11.
   if (urteil12 = 4) da2 = antw12.
   if (urteil13 = 4) da2 = antw13.
   if (urteil14 = 4) da2 = antw14.
   if (urteil11 = 2) mt2 = antw11.
   if (urteil12 = 2) mt2 = antw12.
   if (urteil13 = 2) mt2 = antw13.
   if (urteil14 = 2) mt2 = antw14.
end if.
exe.

compute mp = mean(mp1, mp2).
compute ac = mean(ac1, ac2).
compute da = mean(da1, da2).
compute mt = mean(mt1, mt2).
exe.


if (mp1 = 1) and (ac1 = 1) and (da1 = 1) and (mt1 = 1) patt1 = 1. 
if (mp1 = 1) and (ac1 = 1) and (da1 = 1) and (mt1 = 0) patt1 = 2. 
if (mp1 = 1) and (ac1 = 1) and (da1 = 0) and (mt1 = 1) patt1 = 3. 
if (mp1 = 1) and (ac1 = 1) and (da1 = 0) and (mt1 = 0) patt1 = 4. 
if (mp1 = 1) and (ac1 = 0) and (da1 = 1) and (mt1 = 1) patt1 = 5. 
if (mp1 = 1) and (ac1 = 0) and (da1 = 1) and (mt1 = 0) patt1 = 6. 
if (mp1 = 1) and (ac1 = 0) and (da1 = 0) and (mt1 = 1) patt1 = 7. 
if (mp1 = 1) and (ac1 = 0) and (da1 = 0) and (mt1 = 0) patt1 = 8. 
if (mp1 = 0) and (ac1 = 1) and (da1 = 1) and (mt1 = 1) patt1 = 9. 
if (mp1 = 0) and (ac1 = 1) and (da1 = 1) and (mt1 = 0) patt1 = 10. 
if (mp1 = 0) and (ac1 = 1) and (da1 = 0) and (mt1 = 1) patt1 = 11. 
if (mp1 = 0) and (ac1 = 1) and (da1 = 0) and (mt1 = 0) patt1 = 12. 
if (mp1 = 0) and (ac1 = 0) and (da1 = 1) and (mt1 = 1) patt1 = 13. 
if (mp1 = 0) and (ac1 = 0) and (da1 = 1) and (mt1 = 0) patt1 = 14. 
if (mp1 = 0) and (ac1 = 0) and (da1 = 0) and (mt1 = 1) patt1 = 15. 
if (mp1 = 0) and (ac1 = 0) and (da1 = 0) and (mt1 = 0) patt1 = 16. 
exe. 

if (mp2 = 1) and (ac2 = 1) and (da2 = 1) and (mt2 = 1) patt2 = 1. 
if (mp2 = 1) and (ac2 = 1) and (da2 = 1) and (mt2 = 0) patt2 = 2. 
if (mp2 = 1) and (ac2 = 1) and (da2 = 0) and (mt2 = 1) patt2 = 3. 
if (mp2 = 1) and (ac2 = 1) and (da2 = 0) and (mt2 = 0) patt2 = 4. 
if (mp2 = 1) and (ac2 = 0) and (da2 = 1) and (mt2 = 1) patt2 = 5. 
if (mp2 = 1) and (ac2 = 0) and (da2 = 1) and (mt2 = 0) patt2 = 6. 
if (mp2 = 1) and (ac2 = 0) and (da2 = 0) and (mt2 = 1) patt2 = 7. 
if (mp2 = 1) and (ac2 = 0) and (da2 = 0) and (mt2 = 0) patt2 = 8. 
if (mp2 = 0) and (ac2 = 1) and (da2 = 1) and (mt2 = 1) patt2 = 9. 
if (mp2 = 0) and (ac2 = 1) and (da2 = 1) and (mt2 = 0) patt2 = 10. 
if (mp2 = 0) and (ac2 = 1) and (da2 = 0) and (mt2 = 1) patt2 = 11. 
if (mp2 = 0) and (ac2 = 1) and (da2 = 0) and (mt2 = 0) patt2 = 12. 
if (mp2 = 0) and (ac2 = 0) and (da2 = 1) and (mt2 = 1) patt2 = 13. 
if (mp2 = 0) and (ac2 = 0) and (da2 = 1) and (mt2 = 0) patt2 = 14. 
if (mp2 = 0) and (ac2 = 0) and (da2 = 0) and (mt2 = 1) patt2 = 15. 
if (mp2 = 0) and (ac2 = 0) and (da2 = 0) and (mt2 = 0) patt2 = 16. 
exe. 

value labels patt1 patt2 1 'allfour' 2 'mp.ac.da' 3 'mp.ac.mt' 4 'mp.ac' 5 'mp.da.mt' 6 'mp.da' 7 'mp.mt' 8 'mp'
   9 'ac.da.mt' 10 'ac.da' 11 'ac.mt' 12 'ac' 13 'da.mt' 14 'da' 15 'mt' 16 'none'.
exe.

compute match = 0.
if (patt1 = patt2) match = 1.
exe.

compute change.mp = 1.
compute change.ac = 1.
compute change.da = 1.
compute change.mt = 1.
if (mp1 = mp2) change.mp = 0.
if (ac1 = ac2) change.ac = 0.
if (da1 = da2) change.da = 0.
if (mt1 = mt2) change.mt = 0.
compute change = mean (change.mp to change.mt).
exe.

compute diff.mp = mp1 - mp2.
compute diff.ac = ac1 - ac2.
compute diff.da = da1 - da2.
compute diff.mt = mt1 - mt2.
compute diff = mean(diff.mp to diff.mt).
exe. 


**** Reihenfolgeeffekte.

if (urteil11 = 1) and (urteil12 = 2) and (urteil13 = 3) and (urteil14 = 4) reihenfolge1 = 1.
if (urteil11 = 1) and (urteil12 = 2) and (urteil13 = 4) and (urteil14 = 3) reihenfolge1 = 2.
if (urteil11 = 1) and (urteil12 = 3) and (urteil13 = 2) and (urteil14 = 4) reihenfolge1 = 3.
if (urteil11 = 1) and (urteil12 = 3) and (urteil13 = 4) and (urteil14 = 2) reihenfolge1 = 4.
if (urteil11 = 1) and (urteil12 = 4) and (urteil13 = 2) and (urteil14 = 3) reihenfolge1 = 5.
if (urteil11 = 1) and (urteil12 = 4) and (urteil13 = 3) and (urteil14 = 2) reihenfolge1 = 6.

if (urteil11 = 2) and (urteil12 = 3) and (urteil13 = 4) and (urteil14 = 1) reihenfolge1 = 7.
if (urteil11 = 2) and (urteil12 = 3) and (urteil13 = 1) and (urteil14 = 4) reihenfolge1 = 8.
if (urteil11 = 2) and (urteil12 = 4) and (urteil13 = 3) and (urteil14 = 1) reihenfolge1 = 9.
if (urteil11 = 2) and (urteil12 = 4) and (urteil13 = 1) and (urteil14 = 3) reihenfolge1 = 10.
if (urteil11 = 2) and (urteil12 = 1) and (urteil13 = 3) and (urteil14 = 4) reihenfolge1 = 11.
if (urteil11 = 2) and (urteil12 = 1) and (urteil13 = 4) and (urteil14 = 3) reihenfolge1 = 12.

if (urteil11 = 3) and (urteil12 = 4) and (urteil13 = 1) and (urteil14 = 2) reihenfolge1 = 13.
if (urteil11 = 3) and (urteil12 = 4) and (urteil13 = 2) and (urteil14 = 1) reihenfolge1 = 14.
if (urteil11 = 3) and (urteil12 = 1) and (urteil13 = 4) and (urteil14 = 2) reihenfolge1 = 15.
if (urteil11 = 3) and (urteil12 = 1) and (urteil13 = 2) and (urteil14 = 4) reihenfolge1 = 16.
if (urteil11 = 3) and (urteil12 = 2) and (urteil13 = 4) and (urteil14 = 1) reihenfolge1 = 17.
if (urteil11 = 3) and (urteil12 = 2) and (urteil13 = 1) and (urteil14 = 4) reihenfolge1 = 18.

if (urteil11 = 4) and (urteil12 = 1) and (urteil13 = 2) and (urteil14 = 3) reihenfolge1 = 19.
if (urteil11 = 4) and (urteil12 = 1) and (urteil13 = 3) and (urteil14 = 2) reihenfolge1 = 20.
if (urteil11 = 4) and (urteil12 = 2) and (urteil13 = 1) and (urteil14 = 3) reihenfolge1 = 21.
if (urteil11 = 4) and (urteil12 = 2) and (urteil13 = 3) and (urteil14 = 1) reihenfolge1 = 22.
if (urteil11 = 4) and (urteil12 = 3) and (urteil13 = 1) and (urteil14 = 2) reihenfolge1 = 23.
if (urteil11 = 4) and (urteil12 = 3) and (urteil13 = 2) and (urteil14 = 1) reihenfolge1 = 24.


if (urteil21 = 1) and (urteil22 = 2) and (urteil23 = 3) and (urteil24 = 4) reihenfolge2 = 1.
if (urteil21 = 1) and (urteil22 = 2) and (urteil23 = 4) and (urteil24 = 3) reihenfolge2 = 2.
if (urteil21 = 1) and (urteil22 = 3) and (urteil23 = 2) and (urteil24 = 4) reihenfolge2 = 3.
if (urteil21 = 1) and (urteil22 = 3) and (urteil23 = 4) and (urteil24 = 2) reihenfolge2 = 4.
if (urteil21 = 1) and (urteil22 = 4) and (urteil23 = 2) and (urteil24 = 3) reihenfolge2 = 5.
if (urteil21 = 1) and (urteil22 = 4) and (urteil23 = 3) and (urteil24 = 2) reihenfolge2 = 6.

if (urteil21 = 2) and (urteil22 = 3) and (urteil23 = 4) and (urteil24 = 1) reihenfolge2 = 7.
if (urteil21 = 2) and (urteil22 = 3) and (urteil23 = 1) and (urteil24 = 4) reihenfolge2 = 8.
if (urteil21 = 2) and (urteil22 = 4) and (urteil23 = 3) and (urteil24 = 1) reihenfolge2 = 9.
if (urteil21 = 2) and (urteil22 = 4) and (urteil23 = 1) and (urteil24 = 3) reihenfolge2 = 10.
if (urteil21 = 2) and (urteil22 = 1) and (urteil23 = 3) and (urteil24 = 4) reihenfolge2 = 11.
if (urteil21 = 2) and (urteil22 = 1) and (urteil23 = 4) and (urteil24 = 3) reihenfolge2 = 12.

if (urteil21 = 3) and (urteil22 = 4) and (urteil23 = 1) and (urteil24 = 2) reihenfolge2 = 13.
if (urteil21 = 3) and (urteil22 = 4) and (urteil23 = 2) and (urteil24 = 1) reihenfolge2 = 14.
if (urteil21 = 3) and (urteil22 = 1) and (urteil23 = 4) and (urteil24 = 2) reihenfolge2 = 15.
if (urteil21 = 3) and (urteil22 = 1) and (urteil23 = 2) and (urteil24 = 4) reihenfolge2 = 16.
if (urteil21 = 3) and (urteil22 = 2) and (urteil23 = 4) and (urteil24 = 1) reihenfolge2 = 17.
if (urteil21 = 3) and (urteil22 = 2) and (urteil23 = 1) and (urteil24 = 4) reihenfolge2 = 18.

if (urteil21 = 4) and (urteil22 = 1) and (urteil23 = 2) and (urteil24 = 3) reihenfolge2 = 19.
if (urteil21 = 4) and (urteil22 = 1) and (urteil23 = 3) and (urteil24 = 2) reihenfolge2 = 20.
if (urteil21 = 4) and (urteil22 = 2) and (urteil23 = 1) and (urteil24 = 3) reihenfolge2 = 21.
if (urteil21 = 4) and (urteil22 = 2) and (urteil23 = 3) and (urteil24 = 1) reihenfolge2 = 22.
if (urteil21 = 4) and (urteil22 = 3) and (urteil23 = 1) and (urteil24 = 2) reihenfolge2 = 23.
if (urteil21 = 4) and (urteil22 = 3) and (urteil23 = 2) and (urteil24 = 1) reihenfolge2 = 24.

value lables reihenfolge1 reihenfolge2 
1 'MP-MT-AC-DA'
2 'MP-MT-DA-AC'
3 'MP-AC-MT-DA'
4 'MP-AC-DA-MT'
5 'MP-DA-MT-AC'
6 'MP-DA-AC-MT'
7 'MT-AC-DA-MP'
8 'MT-AC-MP-DA'
9 'MT-DA-AC-MP'
10 'MT-DA-MP-AC'
11 'MT-MP-AC-DA'
12 'MT-MP-DA-AC'
13 'AC-DA-MP-MT'
14 'AC-DA-MT-MP'
15 'AC-MP-DA-MT'
16 'AC-MP-MT-DA'
17 'AC-MT-DA-MP'
18 'AC-MT-MP-DA'
19 'DA-MP-MT-AC'
20 'DA-MP-AC-MT'
21 'DA-MT-MP-AC'
22 'DA-MT-AC-MP'
23 'DA-AC-MP-MT'
24 'DA-AC-MT-MP'.
exe.

if (urteil11 = 1) ordpos.mp.1 = 1.
if (urteil11 = 2) ordpos.mt.1 = 1.
if (urteil11 = 3) ordpos.ac.1 = 1.
if (urteil11 = 4) ordpos.da.1 = 1.
if (urteil12 = 1) ordpos.mp.1 = 2.
if (urteil12 = 2) ordpos.mt.1 = 2.
if (urteil12 = 3) ordpos.ac.1 = 2.
if (urteil12 = 4) ordpos.da.1 = 2.
if (urteil13 = 1) ordpos.mp.1 = 3.
if (urteil13 = 2) ordpos.mt.1 = 3.
if (urteil13 = 3) ordpos.ac.1 = 3.
if (urteil13 = 4) ordpos.da.1 = 3.
if (urteil14 = 1) ordpos.mp.1 = 4.
if (urteil14 = 2) ordpos.mt.1 = 4.
if (urteil14 = 3) ordpos.ac.1 = 4.
if (urteil14 = 4) ordpos.da.1 = 4.

if (urteil21 = 1) ordpos.mp.2 = 1.
if (urteil21 = 2) ordpos.mt.2 = 1.
if (urteil21 = 3) ordpos.ac.2 = 1.
if (urteil21 = 4) ordpos.da.2 = 1.
if (urteil22 = 1) ordpos.mp.2 = 2.
if (urteil22 = 2) ordpos.mt.2 = 2.
if (urteil22 = 3) ordpos.ac.2 = 2.
if (urteil22 = 4) ordpos.da.2 = 2.
if (urteil23 = 1) ordpos.mp.2 = 3.
if (urteil23 = 2) ordpos.mt.2 = 3.
if (urteil23 = 3) ordpos.ac.2 = 3.
if (urteil23 = 4) ordpos.da.2 = 3.
if (urteil24 = 1) ordpos.mp.2 = 4.
if (urteil24 = 2) ordpos.mt.2 = 4.
if (urteil24 = 3) ordpos.ac.2 = 4.
if (urteil24 = 4) ordpos.da.2 = 4.
exe.

compute mt_ac1 = 1.
if (ordpos.mt.1 < ordpos.ac.1) mt_ac1 = 2.
compute mt_ac2 = 1.
if (ordpos.mt.2 < ordpos.ac.2) mt_ac2 = 2.
exe.





 