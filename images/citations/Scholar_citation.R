install.packages('scholar')

library(scholar)
library(ggplot2)
cit <- get_citation_history('l_m8pKsAAAAJ')
png('scholar_citations.png',width=800,height=300,res=150)
ggplot(cit,aes(x=year,y=cites))+
  geom_bar(stat='identity')+
  theme_bw()+
  xlab('Year of citation')+
  ylab('Google Scholar\n cites')+
  annotate('text',label=format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z"),x=-Inf,y=Inf,vjust=1,hjust=-0.05,size=3,colour='gray')
dev.off()