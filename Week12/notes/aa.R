f <- factor(c("a","b","c"))

typeof(f)
attributes(f)

unclass(f)

ftype(print)

print(f)
print(unclass(f))

time <- strptime(c("2017-01-01", "2020-05-04 03:21"), "%Y-%m-%d")

str(time)
str(unclass(time))
s3_dispatch(print(f))
