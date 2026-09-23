package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import java.util.EnumMap;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzfqd {

    /* renamed from: a, reason: collision with root package name */
    public final zzdxe f7556a;

    public zzfqd(zzdxe zzdxeVar) {
        this.f7556a = zzdxeVar;
    }

    public final void a(int i, long j, zzfqk zzfqkVar, String str) {
        zzdxd a2 = this.f7556a.a();
        a2.b("action", "start_preload");
        a2.b("sp_ts", Long.toString(j));
        a2.b("ad_format", zzfqkVar.a());
        a2.b("ad_unit_id", zzfqkVar.f7566a);
        a2.b("pid", zzfqkVar.f7567c);
        a2.b("max_ads", Integer.toString(i));
        a2.b("pv", str);
        a2.c();
    }

    public final void b(EnumMap enumMap, long j) {
        zzdxd a2 = this.f7556a.a();
        a2.b("action", "start_preload");
        a2.b("sp_ts", Long.toString(j));
        a2.b("pv", "1");
        for (AdFormat adFormat : enumMap.keySet()) {
            String valueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            a2.b(valueOf.concat("_count"), Integer.toString(((Integer) enumMap.get(adFormat)).intValue()));
        }
        a2.c();
    }

    public final void c(int i, int i2, long j, Long l, String str, zzfqk zzfqkVar, String str2) {
        zzdxd a2 = this.f7556a.a();
        a2.b("plaac_ts", Long.toString(j));
        a2.b("max_ads", Integer.toString(i));
        a2.b("cache_size", Integer.toString(i2));
        a2.b("action", "is_ad_available");
        if (zzfqkVar != null) {
            a2.b("ad_unit_id", zzfqkVar.f7566a);
            a2.b("pid", zzfqkVar.f7567c);
            a2.b("ad_format", zzfqkVar.a());
        }
        if (l != null) {
            a2.b("plaay_ts", Long.toString(l.longValue()));
        }
        if (str != null) {
            a2.b("gqi", str);
        }
        a2.b("pv", str2);
        a2.c();
    }

    public final void d(long j, int i, int i2, String str, zzfqk zzfqkVar, String str2) {
        zzdxd a2 = this.f7556a.a();
        a2.b("ppla_ts", Long.toString(j));
        a2.b("ad_format", zzfqkVar.a());
        a2.b("ad_unit_id", zzfqkVar.f7566a);
        a2.b("pid", zzfqkVar.f7567c);
        a2.b("max_ads", Integer.toString(i));
        a2.b("cache_size", Integer.toString(i2));
        a2.b("action", "poll_ad");
        if (str != null) {
            a2.b("gqi", str);
        }
        a2.b("pv", str2);
        a2.c();
    }

    public final void e(long j, zzfqk zzfqkVar, com.google.android.gms.ads.internal.client.zze zzeVar, int i, int i2, String str) {
        zzdxd a2 = this.f7556a.a();
        a2.b("action", "pftla");
        a2.b("pftlat_ts", Long.toString(j));
        a2.b("pftlaec", Integer.toString(zzeVar.zza));
        a2.b("ad_format", zzfqkVar.a());
        a2.b("max_ads", Integer.toString(i));
        a2.b("cache_size", Integer.toString(i2));
        a2.b("ad_unit_id", zzfqkVar.f7566a);
        a2.b("pid", zzfqkVar.f7567c);
        a2.b("pv", str);
        a2.c();
    }

    public final void f(String str, long j, String str2, String str3, AdFormat adFormat, int i, int i2, int i3) {
        zzdxd a2 = this.f7556a.a();
        a2.b("action", str);
        a2.b("pat", Long.toString(j));
        a2.b("ad_format", adFormat.name().toLowerCase(Locale.ENGLISH));
        a2.b("max_ads", Integer.toString(i));
        a2.b("cache_size", Integer.toString(i2));
        a2.b("pas", Integer.toString(i3));
        a2.b("pv", "2");
        a2.b("ad_unit_id", str3);
        a2.b("pid", str2);
        a2.c();
    }

    public final void g(String str, String str2, long j, int i, int i2, String str3, zzfqk zzfqkVar, String str4) {
        zzdxd a2 = this.f7556a.a();
        a2.b(str2, Long.toString(j));
        if (zzfqkVar != null) {
            a2.b("ad_unit_id", zzfqkVar.f7566a);
            a2.b("ad_format", zzfqkVar.a());
            a2.b("pid", zzfqkVar.f7567c);
        }
        a2.b("action", str);
        if (str3 != null) {
            a2.b("gqi", str3);
        }
        if (i >= 0) {
            a2.b("max_ads", Integer.toString(i));
        }
        if (i2 >= 0) {
            a2.b("cache_size", Integer.toString(i2));
        }
        a2.b("pv", str4);
        a2.c();
    }

    public final void h(String str, long j, String str2, String str3, AdFormat adFormat, int i, int i2, int i3, int i4, int i5) {
        zzdxd a2 = this.f7556a.a();
        a2.b("action", str);
        a2.b("pat", Long.toString(j));
        a2.b("pid", str2);
        a2.b("ad_unit_id", str3);
        a2.b("max_ads", Integer.toString(i));
        a2.b("cache_size", Integer.toString(i2));
        a2.b("tpcnt", Integer.toString(i4));
        a2.b("mpl", Integer.toString(i5));
        if (adFormat != null) {
            a2.b("ad_format", adFormat.name().toLowerCase(Locale.ENGLISH));
        }
        if (i3 > 0) {
            a2.b("nptr", Integer.toString(i3));
        }
        a2.c();
    }
}
