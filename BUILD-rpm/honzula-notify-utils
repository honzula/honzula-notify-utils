%global debug_package %{nil}

Name:		honzula-notify-utils
Version:	1.0
Release:	1%{?dist}
Summary:	send_message when user logged in via ssh,etc...

License:	Honzula Licence
URL:		https://github.com/honzula/honzula-notify-utils

Requires:	send_telegram

%description


%prep
rm -rf %{_builddir}
mkdir -p %{_builddir}
cd %{_builddir}
git clone https://github.com/honzula/honzula-notify-utils
%build

%install
rsync -aur %{_builddir}/%{name}/%{name}/ $RPM_BUILD_ROOT/

%files
#%doc
/etc/profile.d/login_notify.sh

%changelog

