function erasezero, data
  newdata= data
  y = where(data eq 0, count, COMPLEMENT=z)
  IF (COUNT ne -1) then newdata = data(z)
  return, newdata
end

function myspec, num, LINE
   file = '../MirImages/eagspectra' + num + LINE + '.dat'
   openr, lun, file, /GET_LUN
   readcol, file, plane, v, sum, mean, npoints, format="(f,f,f,f,f)",  /SILENT
   free_lun, lun

   filenew = 'spectra' + num + LINE + '.dat '
   openw, lun, filenew,  /GET_LUN
   for i=1,N_ELEMENTS(mean)-2 do begin
      printf, lun, v(i), mean(i)
   endfor
   free_lun, lun
   data = [[v[2:N_ELEMENTS(v)-2]],[mean[2:N_ELEMENTS(v)-2]]]
return, data
end

function myspecpel, LINE
   file = '../../Pelican/MirImages/pelspectra' + LINE + '.dat'
   openr, lun, file, /GET_LUN
   readcol, file, plane, v, sum, mean, npoints, format="(f,f,f,f,f)", /SILENT
   free_lun, lun

   filenew = 'spectra' +  LINE + '.dat '
   openw, lun, filenew,  /GET_LUN
   for i=1,N_ELEMENTS(mean)-2 do begin
     printf, lun, v(i), mean(i)
    endfor
   free_lun, lun
   data = [[v[2:N_ELEMENTS(v)-2]],[mean[2:N_ELEMENTS(v)-2]]]
   return, data
end


function mygraphing, LINE
;eagspectra, LINE
;if LINE ne 'n2hp' then pelspectra, LINE
vel = FLTARR(319,3)
mean = FLTARR(319,3)
for num=0,2 do begin
   numst = STRCOMPRESS(string(num+1),/remove_all)
   x = myspec(numst, LINE )
   v = x[*,0]
   m = x[*,1]
   for i=0,N_ELEMENTS(v)-2 do begin
      vel[i,num] = v[i]
      mean[i,num] = m[i]
   endfor
endfor
;Pelican
x = myspecpel(LINE)
vp = x[*,0]
mp = x[*,1]
n = 319 - N_ELEMENTS(vp)
padp = FLTARR(n)
;Just for 1b
x = myspec('1b',LINE)
v1b = x[*,0]
m1b = x[*,1]
n = 319 - N_ELEMENTS(v1b)
pad = FLTARR(n)
data = [[vel],[mean],[vp,padp],[mp,padp],[v1b,pad],[m1b,pad]]
return, data
end



pro plotspectra
hcn = mygraphing('HCN')
cs = mygraphing('CS')
hcop = mygraphing('hcop')
co = mygraphing('12co')
nthp = mygraphing('n2hp')

csv1 = cs[*,0]
csv2 = cs[*,1]
csv3 = cs[*,2]
csm1 = cs[*,3]
csm2 = cs[*,4]
csm3 = cs[*,5]
csvp = cs[*,6]
csmp = cs[*,7]* 2.0
csv1b = cs[*,8]
csm1b = cs[*,9]
csv1 = erasezero(csv1)
csv2 = erasezero(csv2)
csv3 = erasezero(csv3)
csm1 = erasezero(csm1)
csm2 = erasezero(csm2)
csm3 = erasezero(csm3)
csvp = erasezero(csvp)
csmp = erasezero(csmp)
csv1b = erasezero(csv1b)
csm1b = erasezero(csm1b)

hcnv1 = hcn[*,0]
hcnv2 = hcn[*,1]
hcnv3 = hcn[*,2]
hcnm1 = hcn[*,3]
hcnm2 = hcn[*,4]
hcnm3 = hcn[*,5]
hcnvp = hcn[*,6]
hcnmp = hcn[*,7]* 2.0
hcnv1b = hcn[*,8]
hcnm1b = hcn[*,9]
hcnv1 = erasezero(hcnv1)
hcnv2 = erasezero(hcnv2)
hcnv3 = erasezero(hcnv3)
hcnm1 = erasezero(hcnm1)
hcnm2 = erasezero(hcnm2)
hcnm3 = erasezero(hcnm3)
hcnvp = erasezero(hcnvp)
hcnmp = erasezero(hcnmp)
hcnv1b = erasezero(hcnv1b)
hcnm1b = erasezero(hcnm1b)

nthpv1 = nthp[*,0]
nthpv2 = nthp[*,1]
nthpv3 = nthp[*,2]
nthpm1 = nthp[*,3]
nthpm2 = nthp[*,4]
nthpm3 = nthp[*,5]
nthpvp = nthp[*,6]
nthpmp = nthp[*,7]* 2.0
nthpv1b = nthp[*,8]
nthpm1b = nthp[*,9]
nthpv1 = erasezero(nthpv1)
nthpv2 = erasezero(nthpv2)
nthpv3 = erasezero(nthpv3)
nthpm1 = erasezero(nthpm1)
nthpm2 = erasezero(nthpm2)
nthpm3 = erasezero(nthpm3)
nthpvp = erasezero(nthpvp)
nthpmp = erasezero(nthpmp)
nthpv1b = erasezero(nthpv1b)
nthpm1b = erasezero(nthpm1b)

hcopv1 = hcop[*,0]
hcopv2 = hcop[*,1]
hcopv3 = hcop[*,2]
hcopm1 = hcop[*,3]
hcopm2 = hcop[*,4]
hcopm3 = hcop[*,5]
hcopvp = hcop[*,6]
hcopmp = hcop[*,7]* 2.0
hcopv1b = hcop[*,8]
hcopm1b = hcop[*,9]
hcopv1 = erasezero(hcopv1)
hcopv2 = erasezero(hcopv2)
hcopv3 = erasezero(hcopv3)
hcopm1 = erasezero(hcopm1)
hcopm2 = erasezero(hcopm2)
hcopm3 = erasezero(hcopm3)
hcopvp = erasezero(hcopvp)
hcopmp = erasezero(hcopmp)
hcopv1b = erasezero(hcopv1b)
hcopm1b = erasezero(hcopm1b)

cov1 = co[*,0]
cov2 = co[*,1]
cov3 = co[*,2]
com1 = co[*,3] / 10.
com2 = co[*,4] / 10.
com3 = co[*,5] / 10.
covp = co[*,6]
comp = (co[*,7] / 5.) * 2.0
cov1b = co[*,8]
com1b = co[*,9] / 5.
cov1 = erasezero(cov1)
cov2 = erasezero(cov2)
cov3 = erasezero(cov3)
com1 = erasezero(com1)
com2 = erasezero(com2)
com3 = erasezero(com3)
covp = erasezero(covp)
comp = erasezero(comp)
cov1b = erasezero(cov1b)
com1b = erasezero(com1b)

plotfile='spectra2.ps'
PS_START, plotfile, CHARSIZE=0.8 ; xsize=20.0, ysize=50.0
cgplot, csv1, csm1, xrange=[10,34], yrange=[-1,15], _EXTRA = gang_plot_pos(5,4,0,0), linestyle=0, YSTYLE=1, XSTYLE=1, label='Eagle Pillar I'
AL_Legend, ['CS'], Color=['black'], charsize=0.8

cgplot, hcnv1, hcnm1, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,0,1), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['HCN'], Color=['black'], charsize=0.8

cgplot, hcopv1, hcopm1, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,0,2), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['HCO+'], Color=['black'], charsize=0.8

cgplot, nthpv1, nthpm1, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,0,3), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['N2H+'], Color=['black'], charsize=0.8

cgplot, cov1, com1, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,0,4), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['12CO x 0.1'], Color=['black'], charsize=0.8

cgplot, csv2, csm2, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,1,0), linestyle=0, YSTYLE=1, XSTYLE=1, label='Eagle Pillar II'
cgplot, hcnv2, hcnm2, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,1,1), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, hcopv2, hcopm2, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,1,2), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, nthpv2, nthpm2, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,1,3), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, cov2, com2, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,1,4), linestyle=0, YSTYLE=1, XSTYLE=1

cgplot, csv3, csm3, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,2,0), linestyle=0, YSTYLE=1, XSTYLE=1, label='Eagle Pillar III'
cgplot, hcnv3, hcnm3, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,2,1), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, hcopv3, hcopm3, xrange=[10,34], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,2,2), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, nthpv3, nthpm3, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,2,3), linestyle=0, YSTYLE=1, XSTYLE=1
cgplot, cov3, com3, xrange=[10,34], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,2,4), linestyle=0, YSTYLE=1, XSTYLE=1

cgplot, csvp, csmp, xrange=[-10,10], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,3,0), linestyle=0, YSTYLE=1, XSTYLE=1, label='Pelican Pillar'
AL_Legend, ['CS x 2.0'];, LineStyle=[0], Color=['black'], charsize=0.8
cgplot, hcnvp, hcnmp, xrange=[-10,10], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,3,1), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['HCN x 2.0'];, LineStyle=[4], Color=['black'], charsize=0.8
cgplot, hcopvp, hcopmp, xrange=[-10,10], yrange=[-1.0,15] , _EXTRA = gang_plot_pos(5,4,3,2), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['HCO+ x 2.0'] ;, LineStyle=[2], Color=['black'], charsize=0.8
cgplot, nthpvp, nthpmp, xrange=[-10,10], yrange=[-1.0,15], _EXTRA = gang_plot_pos(5,4,3,3), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['N2H+ x 2.0'];, LineStyle=[1], Color=['black'], charsize=0.8
cgplot, covp, comp, xrange=[-10,10], yrange=[-1.0,15], _EXTRA=gang_plot_pos(5,4,3,4), linestyle=0, YSTYLE=1, XSTYLE=1
AL_Legend, ['12CO x 0.4'];, LineStyle=[1], Color=['black'], charsize=0.8
PS_END, /PNG, /DELETE_PS







end