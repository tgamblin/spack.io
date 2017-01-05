---
layout: post
title:  "Customize dependencies"
date:   2016-01-03 00:00:00
categories: main
---

Spack allows dependencies of particular installations to be
customized extensively.  Suppose that `mpileaks` depends indirectly
on `libelf` and `libdwarf`.  Using `^`, users can add custom
configurations for the dependencies:

{% highlight bash %}
   # Install mpileaks and link it with specific versions of libelf and libdwarf
   $ spack install mpileaks@1.1.2 %gcc@4.7.3 +debug ^libelf@0.8.12 ^libdwarf@20130729+debug
{% endhighlight %}
