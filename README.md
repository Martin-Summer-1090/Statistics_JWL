# About

These are lecture notes for an introductory statistics and data literacy 
course I have been developing as a volunteer for the Pre-Stem Program of
Jesuit Worldwide Learning (JWL, https://www.jwl.org/). These notes are input 
for a series of 8 learning units, provided in a digital format 
by JWL's service provider Seitwerk (https://www.seitwerk.de/de/home). 
together with my colleagues from Seitwerk. 

I would like to thank
Peter Balleis, Mathias Beck, Martha Habash, Stefan Hengst Anna Mayr and
Reda Daugelaviciute for all their generous help and support
in kickstarting this challenging project and bringing it to the
first live deployment. The course has first been
run in the Spring-term of 2024 and will be part of a new Pre-Stem course
program in the collection of courses provided and taught in the overall
program of JWL.

The goal of the notes is to develop the core contents of 
the course systematically and to support
the production of the online units. I also write up in 
these notes material and instructions for
teaching material, which is meant to be used in the local study centers. 


For the time being it is more like a systematic notebook and a scenario. 
This is a first, yet unstable version of the notes. They certainly will
need more than one overhaul in the months and years to come.
This archive helps me to keep a better overview of the overall 
development of the text.

Mainly for the interaction with
my past and future self, I keep a versioning of the notes on this 
public github archive, which may
also be accessed by interested colleagues, other users of GitHub
and of course by the Seitwerk team. 
The github repository's address is:

https://github.com/Martin-Summer-1090/Statistics_JWL

## About the course

Statistics is a standard subject needed in many applied fields, including 
in mathematics itself. Due to the advances in digital 
technology the traditional statistics curriculum has been 
enlarged and enhanced by new computational tools which were 
traditionally not available. These tools significantly enlarged 
the opportunities of learning statistics and data analysis. 
They also provide a much simplified and low cost access to many data. 

The marriage between statistics and computational tools has even 
created an entire new field called data science. The availability 
of low cost computational tools also allows the teaching of 
statistics becoming more practical. This is because many 
ideas and concepts can be implemented and played with hands on. 
It also allows a lower dependence on mathematical formalism and derivations.

The course is assuming in principle no prerequisites except 
for some intellectual maturity and basic knowledge you might 
expect from students who have gone through nine years of basic 
schooling and three to four years of high school, which prepares 
students to start undergraduate studies at a college. It covers 
three main topics:

1.  **Data exploration** or finding patterns in data 
    through visualization and computation.
2.  **Making predictions** which means using available data and 
    information to make informed guesses about data and information 
    we do not have.
3.  **Quantifying uncertainty** we have to attache to predictions 
    and estimates.

The main idea which makes statistics simultaneously practical but also 
subtle and deep is the combination of data analysis with probability theory. 
In this approach probability is really only needed when we come to the 
third item, quantifying uncertainty. This allows a slow and step by 
step build up of ideas without confusing students from the beginning. 
It also allows for a clearer understanding about the roles of both 
data and probability in statistical analysis.

## About the main sources of this course

The course presents standard material which has been described and
presented in many textbooks and other teaching material before in many
places. My contribution is only to present this material in a way
suitable to the needs of the PreStem program of JWL.

I have used and relied on in particular on three main sources, which I
particularly liked and which I think are role models for an interesting
and good exposition of the three high level 
topics - data exploration, prediction and quantifying uncertainty. The
first, an most important source is David Spiegelhalter's wondeful book
@Spi2019. When I read David's book I immediately saw that this is the way
the subject should be developed when you start from zero. The second source
I use is a course taught at UC Berkely and available on the 
internet @AdhDen2022. This course sets a particularly good standard in the
use of computational tools. Finally I use strongly the classical
text of @FrePisPur2009, which I consider as a hallmark of excellence in
teaching. My notes are really a compilation from these sources.

## About the use of data in this course

Each statistics course has to work with data. Also in the 
use of data and datasets I strive to adhere to a set of 
principles, which in my view very important for a 
successful learning experience.

1. **Choose relevant real world data sets** instead of toy data or 
data that happen to be available most easily.
2. **Choose data from relevant contexts for the students**. This 
means that the data should measure concepts that are tangible and 
easy to understand and are relevant to the context of students. I 
think that demographic and health related data are very suitable 
for this purpose, because the concepts are clear (mostly simple 
counts and proportions of people or certain phenomena known to 
everyone from experience.), because it is interesting to 
compare different countries (which is good because students 
usually come from different countries) and some of 
these data - most importantly health related data - show 
spectacular success stories even for the countries of Sub 
Saharan Africa, which gives students a positive outlook 
and perhaps also a sense of agency that something can 
be done to actually improve the life of people.
3. **Choose data where statistical methods can be legitimately applied**. 
This sounds obvious but it is often ignored. Many textbooks do 
spend no effort in explaining why certain methods, especially 
when involving probability, can be legitimately be applied 
to particular data or contexts. 

For the data, I decided to make all datasets available through an R 
package or a library. This library is also on GitHub and can be
installed from there under the adress:

https://github.com/Martin-Summer-1090/JWL

The main reason for doing this, instead of 
teaching the students the messy and important 
work of loading real datasets into the computer, is 
that I am convinced that with an audience of beginners 
indirectly taught via a platform there would be a huge 
inefficiency of trouble shooting all kinds of trivial 
problems, which consume much time. For example, a file 
can not be read because somebody has the wrong path, a 
typo in the path-name, a backslash going into the wrong 
direction, an inappropriate file extension etc.

## About the computational tools used in the course

For the first two topics - data exploration and visualization 
and making predictions - and to some degree also for  the third - 
quantifying uncertainty - the use of a computer and a computing 
language suitable for statistics is useful and also essential. 
This course therefore integrates computational techniques from 
the beginning. When it comes to quantifying uncertainty the 
computer is a unique tool to simulate random devices and 
random processes making the application of probability much 
more tangible than from a purely mathematical discussion.

We have chosen the computing language R because R is very widely 
used in this field, it is free and can be run on many different 
devices, including older hardware and different hardware 
platforms (with some hacking and tweaking even on an android phone). 
One possible alternative would have been to use Python, which would 
be equally useful. 

I was asked by Seitwerk to combine the use of R with Jupyter 
Notebooks, a file format which combines text and code and which 
allows code execution from within the document. I followed 
this demand instead of using the more common computing environment 
RStudio, which is directly and specifically adapted and written for R. 
In principle there are many options that can be used to run R 
and to do statistical analysis in R. The various trade offs 
between different user requirements have to be assessed for the 
given particular situation and for the available hardware and 
computing environment.

The teaching of R in my course also follows some core principles:

1. **Focus on the essentials** instead of being comprehensive and 
introduce only the minimum that is needed for the given context.
2. **Stay within the frame of base R** and not use very 
advanced packages or different paradigms such as the tidyverse.
3. **Develop a minimum set of tools** which enable the students to do 
basic tasks and to independently build specialized and more 
advanced knowledge of R themselves later.

In implementing these principle I follow the excellent exposition
https://faster-site.netlify.app/ by Normann Mattloff, my favorite teacher
of R.
