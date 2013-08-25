'''
This program will calculate the GC content of a gene
'''
# open the appropriate gene file in the proper pwd
gene = raw_input('Enter the file name please: ')
try:
    fname = open(gene,'r')
except:
    print 'The file',gene,'could not be found'
    exit()
    
# Set g a c t values to initialize at 0
g = 0.0;
a = 0.0;
c = 0.0;
t = 0.0;

# Skipe the first line, the header
gene.readline()

# Now use a for loop to count all g,a,c,t's and get the gc content
for line in gene:
    line = line.lower()
    for char in line:
        if char == 'g':
            g+=1
        if char == 'a':
            a+=1
        if char == 'c':
            c+=1
        if char == 't':
            t+=1
        
print 'The number of g(s)',g
print 'The number of a(s)',a
print 'The number of c(s)',c
print 'The number of t(s)',t

# GC content
gc = (g + c) / (g + c + a + t)
print 'The GC content of the gene',gene,'is',gc
