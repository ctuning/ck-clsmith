CK repository: Converting CLsmith tool (PLDI'15 artifact) to CK format
======================================================================

[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-powered-by-ck.png)](http://cKnowledge.org)
[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-validated-by-the-community-simple.png)](http://cTuning.org)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

Status
======
This is a relatively stable repository demonstrating how to share
artifacts (tools and datasets) via CK. We converted CLsmith tool
for fuzz testing of OpenCL compilers into the CK format.

Prerequisites
=============
* Collective Knowledge Framework: http://github.com/ctuning/ck

Description
===========
CLsmith is a tool designed to address the compiler correctness problem 
for many-core systems through novel applications of fuzz testing to 
OpenCL compilers. It was shared as artifact along with the following
PLDI'15 paper:
 
http://multicore.doc.ic.ac.uk/publications/clsmith-pldi-15.html 

"Many-Core Compiler Fuzzing"
Christopher Lidbury, Andrei Lascu, Nathan Chong, Alastair F. Donaldson

We converted this artifact to CK format (finer-grain and reusable components),
shared it as standard CK repository on GitHub
and validated it via experiment crowdsourcing on several machines.

CLsmith converted to CK can also serve as a template to describe 
and share other artifacts in CK format along with publications:
* Artifact Evaluation for PPoPP/CGO/PACT conferences: http://cTuning.org/ae
* ADAPT 2016: http://adapt-workshop.org

This repository also serves as an SDK to let you implement high-level scenarios 
to detect and classify bugs, and to enable further research opportunities 
by analyzing collected knowledge.


Quick installation
============

```
$ sudo pip install ck
$ ck pull repo:ck-clsmith
```

Usage
=====
We provided a very basic usage scenario to compile multiple OpenCL kernels,
run them, detect if there is a bug, and record raw info in the [public CK repos](http://cknowledge.org/repo).
This scenario is described in the CK documentation [here](https://github.com/ctuning/ck/wiki/Autotuning-example-clsmith).

You can see raw local results via CK dashboard:
```
 $ ck dashboard opencl-bug
```

Crowd-results
=============
You can see failed OpenCL kernels in the [live CK repository](http://cknowledge.org/repo/web.php?template=cknowledge&wcid=bc0409fb61f0aa82:1b437e72c74fe782&table_sort=2).
Simply select "crowd-test OpenCL compilers" scenario!

Publications
============

* http://multicore.doc.ic.ac.uk/publications/clsmith-pldi-15.html
* https://arxiv.org/abs/1506.06256

Testimonials and awards
=======================
* 2016: HiPEAC technology transfer award for CK-powered CLsmith: [HiPEAC TT winners](https://www.hipeac.net/research/technology-transfer-awards/2016)
