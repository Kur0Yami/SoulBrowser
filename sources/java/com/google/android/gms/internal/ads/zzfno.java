package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import java.util.ArrayList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzfno implements Runnable {
    public final zzfnr f;
    public String g;
    public String i;
    public zzfib j;
    public com.google.android.gms.ads.internal.client.zze k;
    public ScheduledFuture l;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7507c = new ArrayList();
    public int m = 2;
    public zzfnt h = zzfnt.SCAR_REQUEST_TYPE_UNSPECIFIED;

    public zzfno(zzfnr zzfnrVar) {
        this.f = zzfnrVar;
    }

    public final synchronized void a(zzfne zzfneVar) {
        try {
            if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
                ArrayList arrayList = this.f7507c;
                zzfneVar.zzc();
                arrayList.add(zzfneVar);
                ScheduledFuture scheduledFuture = this.l;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.l = ((ScheduledThreadPoolExecutor) zzcdo.d).schedule(this, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y9)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(ArrayList arrayList) {
        try {
            if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
                if (!arrayList.contains("banner") && !arrayList.contains(AdFormat.BANNER.name())) {
                    if (!arrayList.contains("interstitial") && !arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                        if (!arrayList.contains("native") && !arrayList.contains(AdFormat.NATIVE.name())) {
                            if (!arrayList.contains("rewarded") && !arrayList.contains(AdFormat.REWARDED.name())) {
                                if (arrayList.contains("app_open_ad")) {
                                    this.m = 7;
                                } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                                    this.m = 6;
                                }
                            }
                            this.m = 5;
                        }
                        this.m = 8;
                    }
                    this.m = 4;
                }
                this.m = 3;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(String str) {
        boolean matches;
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                matches = false;
            } else {
                matches = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z9), str);
            }
            if (matches) {
                this.g = str;
            }
        }
    }

    public final synchronized void d(Bundle bundle) {
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            this.h = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(bundle);
        }
    }

    public final synchronized void e(zzfib zzfibVar) {
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            this.j = zzfibVar;
        }
    }

    public final synchronized void f(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            this.k = zzeVar;
        }
    }

    public final synchronized void g(String str) {
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            this.i = str;
        }
    }

    public final synchronized void h() {
        try {
            if (!((Boolean) zzbid.f4704c.c()).booleanValue()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.l;
            int i = 0;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            ArrayList arrayList = this.f7507c;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                zzfne zzfneVar = (zzfne) obj;
                int i2 = this.m;
                if (i2 != 2) {
                    zzfneVar.d(i2);
                }
                if (!TextUtils.isEmpty(this.g)) {
                    zzfneVar.zze(this.g);
                }
                if (!TextUtils.isEmpty(this.i) && !zzfneVar.zzl()) {
                    zzfneVar.zzi(this.i);
                }
                zzfib zzfibVar = this.j;
                if (zzfibVar != null) {
                    zzfneVar.e(zzfibVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = this.k;
                    if (zzeVar != null) {
                        zzfneVar.b(zzeVar);
                    }
                }
                zzfneVar.c(this.h);
                this.f.b(zzfneVar.zzm());
            }
            arrayList.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void i(int i) {
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            this.m = i;
        }
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        h();
    }
}
