# R
#### Stat243
#### Problem Set 4
#### 6. "Garbage" digits

rm(list = ls(all = TRUE)) # remove all objects
options(digits = 22)

x <- c(0.12345678123456780000,
       0.12345678123456781000,
       0.12345678123456782000,
       0.12345678123456783000,
       0.12345678123456784000,
       0.12345678123456785000,
       0.12345678123456786000,
       0.12345678123456787000,
       0.12345678123456788000,
       0.12345678123456789000)
x
x*2^56 # see longdouble.c (consistent)

y <- c(0.0000000012345678123456780000,
       0.0000000012345678123456781000,
       0.0000000012345678123456782000,
       0.0000000012345678123456783000,
       0.0000000012345678123456784000,
       0.0000000012345678123456785000,
       0.0000000012345678123456786000,
       0.0000000012345678123456787000,
       0.0000000012345678123456788000,
       0.0000000012345678123456789000)
y
y*2^82 # see longdouble.c (minor inconsistency)

