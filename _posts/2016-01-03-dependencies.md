---
layout: post
title:  "Customize dependencies"
date:   2016-01-03 00:00:00
categories: main
---

Spack allows dependencies of particular installations to be customized
extensively. Suppose that `hdf5` depends on `openmpi` and indirectly on
`hwloc`. Using `^`, users can add custom configurations for dependencies:

{% highlight bash %}
   # Install hdf5 and link it with specific versions of openmpi and hwloc
   $ spack install hdf5@1.10.1 %gcc@4.7.3 +debug ^openmpi+cuda fabrics=auto ^hwloc+gl
{% endhighlight %}
