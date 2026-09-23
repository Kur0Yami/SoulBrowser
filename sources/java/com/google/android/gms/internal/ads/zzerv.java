package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzerv implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfik f6862a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f6863c;

    public zzerv(zzfik zzfikVar, long j, long j2) {
        this.f6862a = zzfikVar;
        this.b = j;
        this.f6863c = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void a(Object obj) {
        boolean z;
        Bundle bundle = ((zzczm) obj).b;
        zzfik zzfikVar = this.f6862a;
        bundle.putString("slotname", zzfikVar.g);
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        boolean z2 = true;
        if (zzmVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        int i = zzmVar.zzg;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        zzfiz.c(bundle, "tag_for_child_directed_treatment", i, z);
        if (zzmVar.zza >= 8) {
            int i2 = zzmVar.zzt;
            if (i2 == -1) {
                z2 = false;
            }
            zzfiz.c(bundle, "tag_for_under_age_of_consent", i2, z2);
        }
        zzfiz.e(ImagesContract.URL, bundle, zzmVar.zzl);
        zzfiz.f("neighboring_content_urls", bundle, zzmVar.zzv);
        Bundle bundle2 = zzmVar.zzc;
        Bundle bundle3 = (Bundle) bundle2.clone();
        HashSet hashSet = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v8)).split(",", -1)));
        for (String str : bundle2.keySet()) {
            if (!hashSet.contains(str)) {
                bundle3.remove(str);
            }
        }
        if (bundle3 != null) {
            bundle.putBundle("extras", bundle3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        Bundle bundle = ((zzczm) obj).f5627a;
        zzfik zzfikVar = this.f6862a;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        bundle.putInt("http_timeout_millis", zzmVar.zzw);
        bundle.putString("slotname", zzfikVar.g);
        int i = zzfikVar.p.f7377a;
        if (i != 0) {
            int i2 = i - 1;
            if (i2 != 1) {
                if (i2 == 2) {
                    bundle.putBoolean("is_rewarded_interstitial", true);
                }
            } else {
                bundle.putBoolean("is_new_rewarded", true);
            }
            long j = this.b;
            bundle.putLong("start_signals_timestamp", j);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Re)).booleanValue()) {
                bundle.putLong("tsi", j - this.f6863c);
            }
            zzfiz.d(bundle, "is_sdk_preload", true, zzmVar.zzc());
            zzfiz.b(bundle, "prefetch_type", "zenith_v2", zzmVar.zzd());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
            long j2 = zzmVar.zzb;
            String format = simpleDateFormat.format(new Date(j2));
            if (j2 != -1) {
                z = true;
            } else {
                z = false;
            }
            zzfiz.b(bundle, "cust_age", format, z);
            Bundle bundle2 = zzmVar.zzc;
            if (bundle2 != null) {
                bundle.putBundle("extras", bundle2);
            }
            int i3 = zzmVar.zzd;
            if (i3 != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzfiz.c(bundle, "cust_gender", i3, z2);
            zzfiz.f("kw", bundle, zzmVar.zze);
            int i4 = zzmVar.zzg;
            if (i4 != -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            zzfiz.c(bundle, "tag_for_child_directed_treatment", i4, z3);
            if (zzmVar.zzf) {
                bundle.putBoolean("test_request", true);
            }
            bundle.putInt("ppt_p13n", zzmVar.zzy);
            int i5 = zzmVar.zza;
            if (i5 >= 2 && zzmVar.zzh) {
                z4 = true;
            } else {
                z4 = false;
            }
            zzfiz.c(bundle, "d_imp_hdr", 1, z4);
            String str = zzmVar.zzi;
            if (i5 >= 2 && !TextUtils.isEmpty(str)) {
                z5 = true;
            } else {
                z5 = false;
            }
            zzfiz.b(bundle, "ppid", str, z5);
            Location location = zzmVar.zzk;
            if (location != null) {
                float accuracy = location.getAccuracy() * 1000.0f;
                long time = location.getTime() * 1000;
                double latitude = location.getLatitude() * 1.0E7d;
                double longitude = 1.0E7d * location.getLongitude();
                Bundle bundle3 = new Bundle();
                bundle3.putFloat("radius", accuracy);
                bundle3.putLong("lat", (long) latitude);
                bundle3.putLong("long", (long) longitude);
                bundle3.putLong("time", time);
                bundle.putBundle("uule", bundle3);
            }
            zzfiz.e(ImagesContract.URL, bundle, zzmVar.zzl);
            zzfiz.f("neighboring_content_urls", bundle, zzmVar.zzv);
            Bundle bundle4 = zzmVar.zzn;
            if (bundle4 != null) {
                bundle.putBundle("custom_targeting", bundle4);
            }
            zzfiz.f("category_exclusions", bundle, zzmVar.zzo);
            zzfiz.e("request_agent", bundle, zzmVar.zzp);
            zzfiz.e("request_pkg", bundle, zzmVar.zzq);
            boolean z9 = zzmVar.zzr;
            if (i5 >= 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            zzfiz.d(bundle, "is_designed_for_families", z9, z6);
            if (i5 >= 8) {
                int i6 = zzmVar.zzt;
                if (i6 != -1) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zzfiz.c(bundle, "tag_for_under_age_of_consent", i6, z8);
                zzfiz.e("max_ad_content_rating", bundle, zzmVar.zzu);
            }
            Bundle bundle5 = zzfikVar.e;
            bundle.putInt("plcs", bundle5.getInt("plcs"));
            bundle.putInt("plbs", bundle5.getInt("plbs"));
            zzfiz.e("plid", bundle, bundle5.getString("plid"));
            if (zzfikVar.v && (zzmVar.zzs != null || zzmVar.zzx != null)) {
                z7 = true;
            } else {
                z7 = false;
            }
            zzfiz.c(bundle, "s2s_rr", 1, z7);
            return;
        }
        throw null;
    }
}
