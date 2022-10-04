#Data analysis 
#wihtout looping 

library(lostruct)
library(tools)
library (data.table)

#computes the local PCA coordinates with eigen_windows
eig_win_lg1 <- eigen_windows(lg_1[,2:77], k=2, win=25)
eig_win_lg2 <- eigen_windows(lg_2 [,2:77], k=2, win=25)
eig_win_lg3<- eigen_windows(lg_3 [,2:77], k=2, win=25)
eig_win_lg4 <- eigen_windows(lg_4 [,2:77], k=2, win=25)
eig_win_lg5 <- eigen_windows(lg_5[,2:77], k=2, win=25)
eig_win_lg6 <- eigen_windows(lg_6 [,2:77], k=2, win=25)
eig_win_lg7 <- eigen_windows(lg_7 [,2:77], k=2, win=25)
eig_win_lg8<- eigen_windows(lg_8 [,2:77], k=2, win=25)
eig_win_lg9 <- eigen_windows(lg_9 [,2:77], k=2, win=25)
eig_win_lg10 <- eigen_windows(lg_10 [,2:77], k=2, win=25)
eig_win_lg11 <- eigen_windows(lg_11 [,2:77], k=2, win=25)
eig_win_lg12 <- eigen_windows(lg_12 [,2:77], k=2, win=25)
eig_win_lg13 <- eigen_windows(lg_13 [,2:77], k=2, win=25)
eig_win_lg14 <- eigen_windows(lg_14 [,2:77], k=2, win=25)
eig_win_lg15 <- eigen_windows(lg_15 [,2:77], k=2, win=25)
eig_win_lg16 <- eigen_windows(lg_16 [,2:77], k=2, win=25)
eig_win_lg17 <- eigen_windows(lg_17 [,2:77], k=2, win=25)
eig_win_lg18 <- eigen_windows(lg_18 [,2:77], k=2, win=25)
eig_win_lg19 <- eigen_windows(lg_19 [,2:77], k=2, win=25)
eig_win_lg20 <- eigen_windows(lg_20 [,2:77], k=2, win=25)

#computes the distance matrix between windows using pc_dist on the output of eigen_windows
win_dist_lg1 <- pc_dist(eig_win_lg1, npc=2)
win_dist_lg2 <- pc_dist(eig_win_lg2, npc=2)
win_dist_lg3 <- pc_dist(eig_win_lg3, npc=2)
win_dist_lg4 <- pc_dist(eig_win_lg4, npc=2)
win_dist_lg5 <- pc_dist(eig_win_lg5, npc=2)
win_dist_lg6 <- pc_dist(eig_win_lg6, npc=2)
win_dist_lg7 <- pc_dist(eig_win_lg7, npc=2)
win_dist_lg8 <- pc_dist(eig_win_lg8, npc=2)
win_dist_lg9 <- pc_dist(eig_win_lg9, npc=2)
win_dist_lg10 <- pc_dist(eig_win_lg10, npc=2)
win_dist_lg11 <- pc_dist(eig_win_lg11, npc=2)
win_dist_lg12 <- pc_dist(eig_win_lg12, npc=2)
win_dist_lg13 <- pc_dist(eig_win_lg13, npc=2)
win_dist_lg14 <- pc_dist(eig_win_lg14, npc=2)
win_dist_lg15 <- pc_dist(eig_win_lg15, npc=2)
win_dist_lg16 <- pc_dist(eig_win_lg16, npc=2)
win_dist_lg17 <- pc_dist(eig_win_lg17, npc=2)
win_dist_lg18 <- pc_dist(eig_win_lg18, npc=2)
win_dist_lg19 <- pc_dist(eig_win_lg19, npc=2)
win_dist_lg20 <- pc_dist(eig_win_lg20, npc=2)

#writes the results from the above analysis 
write.table (eig_win_lg1, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg1_eigwin.txt'))
write.table (eig_win_lg2, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg2_eigwin.txt'))
write.table (eig_win_lg3, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg3_eigwin.txt'))
write.table (eig_win_lg4, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg4_eigwin.txt'))
write.table (eig_win_lg5, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg5_eigwin.txt'))
write.table (eig_win_lg6, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg6_eigwin.txt'))
write.table (eig_win_lg7, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg7_eigwin.txt'))
write.table (eig_win_lg8, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg8_eigwin.txt'))
write.table (eig_win_lg9, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg9_eigwin.txt'))
write.table (eig_win_lg10, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg10_eigwin.txt'))
write.table (eig_win_lg11, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg11_eigwin.txt'))
write.table (eig_win_lg12, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg12_eigwin.txt'))
write.table (eig_win_lg13, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg13_eigwin.txt'))
write.table (eig_win_lg14, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg14_eigwin.txt'))
write.table (eig_win_lg15, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg15_eigwin.txt'))
write.table (eig_win_lg16, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg16_eigwin.txt'))
write.table (eig_win_lg17, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg17_eigwin.txt'))
write.table (eig_win_lg18, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg18_eigwin.txt'))
write.table (eig_win_lg19, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg19_eigwin.txt'))
write.table (eig_win_lg20, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg20_eigwin.txt'))

#writes the results as a matrix
eig_win_lg1 <- as.matrix(eig_win_lg1)
eig_win_lg2 <- as.matrix(eig_win_lg2)
eig_win_lg3 <- as.matrix(eig_win_lg3)
eig_win_lg4 <- as.matrix(eig_win_lg4)
eig_win_lg5 <- as.matrix(eig_win_lg5)
eig_win_lg6 <- as.matrix(eig_win_lg6)
eig_win_lg7 <- as.matrix(eig_win_lg7)
eig_win_lg8 <- as.matrix(eig_win_lg8)
eig_win_lg9 <- as.matrix(eig_win_lg9)
eig_win_lg10 <- as.matrix(eig_win_lg10)
eig_win_lg11 <- as.matrix(eig_win_lg11)
eig_win_lg12 <- as.matrix(eig_win_lg12)
eig_win_lg13 <- as.matrix(eig_win_lg13)
eig_win_lg14 <- as.matrix(eig_win_lg14)
eig_win_lg15 <- as.matrix(eig_win_lg15)
eig_win_lg16 <- as.matrix(eig_win_lg16)
eig_win_lg17 <- as.matrix(eig_win_lg17)
eig_win_lg18 <- as.matrix(eig_win_lg18)
eig_win_lg19 <- as.matrix(eig_win_lg19)
eig_win_lg20 <- as.matrix(eig_win_lg20)

#defines what the function eig mean is, using the eig win distance
eig_mean_lg1 <- colMeans(eig_win_lg1[ , 2:3])
eig_mean_lg2 <- colMeans(eig_win_lg2[ , 2:3])
eig_mean_lg3 <- colMeans(eig_win_lg3[ , 2:3])
eig_mean_lg4 <- colMeans(eig_win_lg4[ , 2:3])
eig_mean_lg5 <- colMeans(eig_win_lg5[ , 2:3])
eig_mean_lg6 <- colMeans(eig_win_lg6[ , 2:3])
eig_mean_lg7 <- colMeans(eig_win_lg7[ , 2:3])
eig_mean_lg8 <- colMeans(eig_win_lg8[ , 2:3])
eig_mean_lg9 <- colMeans(eig_win_lg9[ , 2:3])
eig_mean_lg10 <- colMeans(eig_win_lg10[ , 2:3])
eig_mean_lg11 <- colMeans(eig_win_lg11[ , 2:3])
eig_mean_lg12 <- colMeans(eig_win_lg12[ , 2:3])
eig_mean_lg13 <- colMeans(eig_win_lg13[ , 2:3])
eig_mean_lg14 <- colMeans(eig_win_lg14[ , 2:3])
eig_mean_lg15 <- colMeans(eig_win_lg15[ , 2:3])
eig_mean_lg16 <- colMeans(eig_win_lg16[ , 2:3])
eig_mean_lg17 <- colMeans(eig_win_lg17[ , 2:3])
eig_mean_lg18 <- colMeans(eig_win_lg18[ , 2:3])
eig_mean_lg19 <- colMeans(eig_win_lg19[ , 2:3])
eig_mean_lg20 <- colMeans(eig_win_lg20[ , 2:3])

#writes the results from the above analysis #writes the results from the above analysis 
write.table (eig_mean_lg1, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg1_eigmean.txt'))
write.table (eig_mean_lg2, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg2_eigmean.txt'))
write.table (eig_mean_lg3, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg3_eigmean.txt'))
write.table (eig_mean_lg4, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg4_eigmean.txt'))
write.table (eig_mean_lg5, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg5_eigmean.txt'))
write.table (eig_mean_lg6, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg6_eigmean.txt'))
write.table (eig_mean_lg7, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg7_eigmean.txt'))
write.table (eig_mean_lg8, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg8_eigmean.txt'))
write.table (eig_mean_lg9, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg9_eigmean.txt'))
write.table (eig_mean_lg10, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg10_eigmean.txt'))
write.table (eig_mean_lg11, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg11_eigmean.txt'))
write.table (eig_mean_lg12, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg12_eigmean.txt'))
write.table (eig_mean_lg13, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg13_eigmean.txt'))
write.table (eig_mean_lg14, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg14_eigmean.txt'))
write.table (eig_mean_lg15, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg15_eigmean.txt'))
write.table (eig_mean_lg16, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg16_eigmean.txt'))
write.table (eig_mean_lg17, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg17_eigmean.txt'))
write.table (eig_mean_lg18, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg18_eigmean.txt'))
write.table (eig_mean_lg19, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg19_eigmean.txt'))
write.table (eig_mean_lg20, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg20_eigmean.txt'))

#writes the results from the above analysis 
write.table (win_dist_lg1, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg1_windist.txt'))
write.table (win_dist_lg2, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg2_windist.txt'))
write.table (win_dist_lg3, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg3_windist.txt'))
write.table (win_dist_lg4, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg4_windist.txt'))
write.table (win_dist_lg5, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg5_windist.txt'))
write.table (win_dist_lg6, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg6_windist.txt'))
write.table (win_dist_lg7, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg7_windist.txt'))
write.table (win_dist_lg8, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg8_windist.txt'))
write.table (win_dist_lg9, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg9_windist.txt'))
write.table (win_dist_lg10, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg10_windist.txt'))
write.table (win_dist_lg11, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg11_windist.txt'))
write.table (win_dist_lg12, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg12_windist.txt'))
write.table (win_dist_lg13, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg13_windist.txt'))
write.table (win_dist_lg14, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg14_windist.txt'))
write.table (win_dist_lg15, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg15_windist.txt'))
write.table (win_dist_lg16, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg16_windist.txt'))
write.table (win_dist_lg17, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg17_windist.txt'))
write.table (win_dist_lg18, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg18_windist.txt'))
write.table (win_dist_lg19, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg19_windist.txt'))
write.table (win_dist_lg20, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg20_windist.txt'))

#creates MDS function, defining the co-ordinates as 2
mds_lg1 <- cmdscale(win_dist_lg1, eig=TRUE, k=2)
mds_lg2 <- cmdscale(win_dist_lg2, eig=TRUE, k=2)
mds_lg3 <- cmdscale(win_dist_lg3, eig=TRUE, k=2)
mds_lg4 <- cmdscale(win_dist_lg4, eig=TRUE, k=2)
mds_lg5 <- cmdscale(win_dist_lg5, eig=TRUE, k=2)
mds_lg6 <- cmdscale(win_dist_lg6, eig=TRUE, k=2)
mds_lg7 <- cmdscale(win_dist_lg7, eig=TRUE, k=2)
mds_lg8 <- cmdscale(win_dist_lg8, eig=TRUE, k=2)
mds_lg9 <- cmdscale(win_dist_lg9, eig=TRUE, k=2)
mds_lg10 <- cmdscale(win_dist_lg10, eig=TRUE, k=2)
mds_lg11 <- cmdscale(win_dist_lg11, eig=TRUE, k=2)
mds_lg12 <- cmdscale(win_dist_lg12, eig=TRUE, k=2)
mds_lg13 <- cmdscale(win_dist_lg13, eig=TRUE, k=2)
mds_lg14 <- cmdscale(win_dist_lg14, eig=TRUE, k=2)
mds_lg15 <- cmdscale(win_dist_lg15, eig=TRUE, k=2)
mds_lg16 <- cmdscale(win_dist_lg16, eig=TRUE, k=2)
mds_lg17 <- cmdscale(win_dist_lg17, eig=TRUE, k=2)
mds_lg18 <- cmdscale(win_dist_lg18, eig=TRUE, k=2)
mds_lg19 <- cmdscale(win_dist_lg19, eig=TRUE, k=2)
mds_lg20 <- cmdscale(win_dist_lg20, eig=TRUE, k=2)

#label co-ordinate 1 and 2
MDS1_lg1 <- mds_lg1$points[,1]
MDS2_lg1 <- mds_lg1$points[,2]
mds_lg1 <- cbind(MDS1_lg1,MDS2_lg1)
mds_lg1 <- as.matrix(mds_lg1)
write.table (mds_lg1, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg1_mdscoords.txt'))

MDS1_lg2 <- mds_lg2$points[,1]
MDS2_lg2 <- mds_lg2$points[,2]
mds_lg2 <- cbind(MDS1_lg2,MDS2_lg2)
mds_lg2 <- as.matrix(mds_lg2)
write.table (mds_lg2, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg2_mdscoords.txt'))

MDS1_lg3 <- mds_lg3$points[,1]
MDS2_lg3 <- mds_lg3$points[,2]
mds_lg3 <- cbind(MDS1_lg3,MDS2_lg3)
mds_lg3 <- as.matrix(mds_lg3)
write.table (mds_lg3, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg3_mdscoords.txt'))

MDS1_lg4 <- mds_lg4$points[,1]
MDS2_lg4 <- mds_lg4$points[,2]
mds_lg4 <- cbind(MDS1_lg4,MDS2_lg4)
mds_lg4 <- as.matrix(mds_lg4)
write.table (mds_lg4, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg4_mdscoords.txt'))

MDS1_lg5 <- mds_lg5$points[,1]
MDS2_lg5 <- mds_lg5$points[,2]
mds_lg5 <- cbind(MDS1_lg5,MDS2_lg5)
mds_lg5 <- as.matrix(mds_lg5)
write.table (mds_lg5, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg5_mdscoords.txt'))

MDS1_lg6 <- mds_lg6$points[,1]
MDS2_lg6 <- mds_lg6$points[,2]
mds_lg6 <- cbind(MDS1_lg6,MDS2_lg6)
mds_lg6 <- as.matrix(mds_lg6)
write.table (mds_lg6, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg6_mdscoords.txt'))

MDS1_lg7 <- mds_lg7$points[,1]
MDS2_lg7 <- mds_lg7$points[,2]
mds_lg7 <- cbind(MDS1_lg7,MDS2_lg7)
mds_lg7 <- as.matrix(mds_lg7)
write.table (mds_lg7, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg7_mdscoords.txt'))

MDS1_lg8 <- mds_lg8$points[,1]
MDS2_lg8 <- mds_lg8$points[,2]
mds_lg8 <- cbind(MDS1_lg8,MDS2_lg8)
mds_lg8 <- as.matrix(mds_lg8)
write.table (mds_lg8, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg8_mdscoords.txt'))

MDS1_lg9 <- mds_lg9$points[,1]
MDS2_lg9 <- mds_lg9$points[,2]
mds_lg9 <- cbind(MDS1_lg9,MDS2_lg9)
mds_lg9 <- as.matrix(mds_lg9)
write.table (mds_lg9, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg9_mdscoords.txt'))

MDS1_lg10 <- mds_lg10$points[,1]
MDS2_lg10 <- mds_lg10$points[,2]
mds_lg10 <- cbind(MDS1_lg10,MDS2_lg10)
mds_lg10 <- as.matrix(mds_lg10)
write.table (mds_lg10, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg10_mdscoords.txt'))

MDS1_lg11 <- mds_lg11$points[,1]
MDS2_lg11 <- mds_lg11$points[,2]
mds_lg11 <- cbind(MDS1_lg11,MDS2_lg11)
mds_lg11 <- as.matrix(mds_lg11)
write.table (mds_lg11, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg11_mdscoords.txt'))

MDS1_lg12 <- mds_lg12$points[,1]
MDS2_lg12 <- mds_lg12$points[,2]
mds_lg12 <- cbind(MDS1_lg12,MDS2_lg12)
mds_lg12 <- as.matrix(mds_lg12)
write.table (mds_lg12, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg12_mdscoords.txt'))

MDS1_lg13 <- mds_lg13$points[,1]
MDS2_lg13 <- mds_lg13$points[,2]
mds_lg13 <- cbind(MDS1_lg13,MDS2_lg13)
mds_lg13 <- as.matrix(mds_lg13)
write.table (mds_lg13, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg13_mdscoords.txt'))

MDS1_lg14 <- mds_lg14$points[,1]
MDS2_lg14 <- mds_lg14$points[,2]
mds_lg14 <- cbind(MDS1_lg14,MDS2_lg14)
mds_lg14 <- as.matrix(mds_lg14)
write.table (mds_lg14, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg14_mdscoords.txt'))

MDS1_lg15 <- mds_lg15$points[,1]
MDS2_lg15 <- mds_lg15$points[,2]
mds_lg15 <- cbind(MDS1_lg15,MDS2_lg15)
mds_lg15 <- as.matrix(mds_lg15)
write.table (mds_lg15, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg15_mdscoords.txt'))

MDS1_lg16 <- mds_lg16$points[,1]
MDS2_lg16 <- mds_lg16$points[,2]
mds_lg16 <- cbind(MDS1_lg16,MDS2_lg16)
mds_lg16 <- as.matrix(mds_lg16)
write.table (mds_lg16, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg16_mdscoords.txt'))

MDS1_lg17 <- mds_lg17$points[,1]
MDS2_lg17 <- mds_lg17$points[,2]
mds_lg17 <- cbind(MDS1_lg17,MDS2_lg17)
mds_lg17 <- as.matrix(mds_lg17)
write.table (mds_lg17, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg17_mdscoords.txt'))

MDS1_lg18 <- mds_lg18$points[,1]
MDS2_lg18 <- mds_lg18$points[,2]
mds_lg18 <- cbind(MDS1_lg18,MDS2_lg18)
mds_lg18 <- as.matrix(mds_lg18)
write.table (mds_lg18, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg18_mdscoords.txt'))

MDS1_lg19 <- mds_lg19$points[,1]
MDS2_lg19 <- mds_lg19$points[,2]
mds_lg19 <- cbind(MDS1_lg19,MDS2_lg19)
mds_lg19 <- as.matrix(mds_lg19)
write.table (mds_lg19, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg19_mdscoords.txt'))

MDS1_lg20 <- mds_lg20$points[,1]
MDS2_lg20 <- mds_lg20$points[,2]
mds_lg20 <- cbind(MDS1_lg20,MDS2_lg20)
mds_lg20 <- as.matrix(mds_lg20)
write.table (mds_lg20, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg20_mdscoords.txt'))


#calculates extreme values from the co-ordinates at each linkage group
ext_val_lg20 <- corners(mds_lg20, prop=0.05, k=3)
ext_val_lg20 <- as.matrix(ext_val_lg20)
write.table (ext_val_lg20, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg20_ext_val.txt'))

ext_val_lg19 <- corners(mds_lg19, prop=0.05, k=3)
ext_val_lg19 <- as.matrix(ext_val_lg19)
write.table (ext_val_lg19, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg19_ext_val.txt'))

ext_val_lg18 <- corners(mds_lg18, prop=0.05, k=3)
ext_val_lg18 <- as.matrix(ext_val_lg18)
write.table (ext_val_lg18, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg18_ext_val.txt'))

ext_val_lg17 <- corners(mds_lg17, prop=0.05, k=3)
ext_val_lg17 <- as.matrix(ext_val_lg17)
write.table (ext_val_lg17, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg17_ext_val.txt'))

ext_val_lg16 <- corners(mds_lg16, prop=0.05, k=3)
ext_val_lg16 <- as.matrix(ext_val_lg16)
write.table (ext_val_lg16, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg16_ext_val.txt'))

ext_val_lg15 <- corners(mds_lg15, prop=0.05, k=3)
ext_val_lg15 <- as.matrix(ext_val_lg15)
write.table (ext_val_lg15, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg15_ext_val.txt'))

ext_val_lg14 <- corners(mds_lg14, prop=0.05, k=3)
ext_val_lg14 <- as.matrix(ext_val_lg14)
write.table (ext_val_lg14, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg14_ext_val.txt'))

ext_val_lg13 <- corners(mds_lg13, prop=0.05, k=3)
ext_val_lg13 <- as.matrix(ext_val_lg13)
write.table (ext_val_lg13, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg13_ext_val.txt'))

ext_val_lg12 <- corners(mds_lg12, prop=0.05, k=3)
ext_val_lg12 <- as.matrix(ext_val_lg12)
write.table (ext_val_lg12, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg12_ext_val.txt'))

ext_val_lg11 <- corners(mds_lg11, prop=0.05, k=3)
ext_val_lg11 <- as.matrix(ext_val_lg11)
write.table (ext_val_lg11, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg11_ext_val.txt'))

ext_val_lg10 <- corners(mds_lg10, prop=0.05, k=3)
ext_val_lg10 <- as.matrix(ext_val_lg10)
write.table (ext_val_lg10, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg10_ext_val.txt'))

ext_val_lg9 <- corners(mds_lg9, prop=0.05, k=3)
ext_val_lg9 <- as.matrix(ext_val_lg9)
write.table (ext_val_lg9, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg9_ext_val.txt'))

ext_val_lg8 <- corners(mds_lg8, prop=0.05, k=3)
ext_val_lg8 <- as.matrix(ext_val_lg8)
write.table (ext_val_lg8, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg8_ext_val.txt'))

ext_val_lg7 <- corners(mds_lg7, prop=0.05, k=3)
ext_val_lg7<- as.matrix(ext_val_lg7)
write.table (ext_val_lg7, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg7_ext_val.txt'))

ext_val_lg6 <- corners(mds_lg6, prop=0.05, k=3)
ext_val_lg6 <- as.matrix(ext_val_lg6)
write.table (ext_val_lg6, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg6_ext_val.txt'))

ext_val_lg5 <- corners(mds_lg5, prop=0.05, k=3)
ext_val_lg5 <- as.matrix(ext_val_lg5)
write.table (ext_val_lg5, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg5_ext_val.txt'))

ext_val_lg4 <- corners(mds_lg4, prop=0.05, k=3)
ext_val_lg4 <- as.matrix(ext_val_lg4)
write.table (ext_val_lg4, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg4_ext_val.txt'))

ext_val_lg3 <- corners(mds_lg3, prop=0.05, k=3)
ext_val_lg3 <- as.matrix(ext_val_lg3)
write.table (ext_val_lg3, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg3_ext_val.txt'))

ext_val_lg2 <- corners(mds_lg2, prop=0.05, k=3)
ext_val_lg2 <- as.matrix(ext_val_lg2)
write.table (ext_val_lg2, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg2_ext_val.txt'))

ext_val_lg1 <- corners(mds_lg1, prop=0.05, k=3)
ext_val_lg1 <- as.matrix(ext_val_lg1)
write.table (ext_val_lg1, file = ('C:/Users/Stefano/Documents/University/ComBio/Data Tables/lg1_ext_val.txt'))


