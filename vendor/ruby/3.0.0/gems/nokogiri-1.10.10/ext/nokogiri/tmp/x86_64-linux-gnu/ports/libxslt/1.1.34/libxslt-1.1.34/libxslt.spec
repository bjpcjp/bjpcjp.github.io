Summary: Library providing the GNOME XSLT engine
Name: libxslt
Version: 1.1.34
Release: 1%{?dist}%{?extra_release}
License: MIT
Group: Development/Libraries
Source: ftp://xmlsoft.org/XSLT/libxslt-%{version}.tar.gz
BuildRoot: %{_tmppath}/%{name}-%{version}-root
URL: http://xmlsoft.org/XSLT/
Requires: libxml2 >= 2.6.27
BuildRequires: libxml2-devel >= 2.6.27
BuildRequires: python python-devel
BuildRequires: libxml2-python
BuildRequires: libgcrypt-devel
Prefix: %{_prefix}
Docdir: %{_docdir}

%description
This C library allows to transform XML files into other XML files
(or HTML, text, ...) using the standard XSLT stylesheet transformation
mechanism. To use it you need to have a version of libxml2 >= 2.6.27
installed. The xsltproc command is a command line interface to the XSLT engine

%package devel
Summary: Libraries, includes, etc. to embed the GNOME XSLT engine
Group: Development/Libraries
Requires: libxslt = %{version}-%{release}
Requires: libxml2-devel >= 2.6.27
Requires: libgcrypt-devel
Requires: pkgconfig

%description devel
This C library allows to transform XML files into other XML files
(or HTML, text, ...) using the standard XSLT stylesheet transformation
mechanism. To use it you need to have a version of libxml2 >= 2.6.27
installed.

%package python
Summary: Python bindings for the libxslt library
Group: Development/Libraries
Requires: libxslt = %{version}-%{release}
Requires: libxml2 >= 2.6.27
Requires: libxml2-python >= 2.6.27
Requires: python

%description python
The libxslt-python package contains a module that permits applications
written in the Python programming language to use the interface
supplied by the libxslt library to apply XSLT transformations.

This library allows to parse sytlesheets, uses the libxml2-python
to load and save XML and HTML files. Direct access to XPath and
the XSLT transformation context are possible to extend the XSLT language
with XPath functions written in Python.

%prep
%setup -q

%build
%configure
make
gzip -9 ChangeLog

%install
rm -fr %{buildroot}

%makeinstall

rm -f $RPM_BUILD_ROOT%{_libdir}/*.la
rm -rf $RPM_BUILD_ROOT%{_datadir}/doc/%{name}{,-python}-%{version}

%check
make tests

%clean
rm -fr %{buildroot}

%post
/sbin/ldconfig

%postun
/sbin/ldconfig

%files
%defattr(-, root, root)

%doc AUTHORS ChangeLog.gz NEWS README Copyright TODO FEATURES
%doc doc/*.html doc/html doc/tutorial doc/tutorial2 doc/*.gif
%doc doc/EXSLT
%doc %{_mandir}/man1/xsltproc.1*
%{_libdir}/lib*.so.*
%{_libdir}/libxslt-plugins
%{prefix}/bin/xsltproc

%files devel
%defattr(-, root, root)

%doc AUTHORS ChangeLog.gz NEWS README Copyright TODO FEATURES
%doc doc/libxslt-api.xml
%doc doc/libxslt-refs.xml
%doc doc/EXSLT/libexslt-api.xml
%doc doc/EXSLT/libexslt-refs.xml
%doc %{_mandir}/man3/libxslt.3*
%doc %{_mandir}/man3/libexslt.3*
%doc doc/*.html doc/html doc/*.gif doc/*.png
%doc doc/tutorial
%doc doc/tutorial2
%doc doc/images
%doc doc/EXSLT
%{_libdir}/lib*.so
%{_libdir}/*a
%{_libdir}/*.sh
%{prefix}/share/aclocal/libxslt.m4
%{prefix}/include/*
%{prefix}/bin/xslt-config
%{_libdir}/pkgconfig/libxslt.pc
%{_libdir}/pkgconfig/libexslt.pc

%files python
%defattr(-, root, root)

%doc AUTHORS ChangeLog.gz NEWS README Copyright FEATURES
%{_libdir}/python*/site-packages/libxslt.py*
%{_libdir}/python*/site-packages/libxsltmod*
%doc python/libxsltclass.txt
%doc python/tests/*.py
%doc python/tests/*.xml
%doc python/tests/*.xsl

%changelog
* Fri May 27 2022 Daniel Veillard <veillard@redhat.com>
- upstream release 1.1.34 see http://xmlsoft.org/XSLT/news.html
