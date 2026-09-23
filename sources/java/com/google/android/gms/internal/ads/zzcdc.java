package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcdc {
    public final String h;
    public final com.google.android.gms.ads.internal.util.zzj i;

    /* renamed from: a, reason: collision with root package name */
    public long f5057a = -1;
    public long b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f5058c = -1;
    public int d = -1;
    public long e = 0;
    public final Object f = new Object();
    public final Object g = new Object();
    public int j = 0;
    public int k = 0;
    public int l = 0;
    public int m = 0;
    public final HashMap n = new HashMap();
    public final HashMap o = new HashMap();

    public zzcdc(String str, com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.h = str;
        this.i = zzjVar;
    }

    public final void a() {
        synchronized (this.f) {
            this.j++;
        }
    }

    public final void b() {
        synchronized (this.f) {
            this.k++;
        }
    }

    public final void c() {
        synchronized (this.f) {
            this.l++;
        }
    }

    public final int d() {
        int i;
        synchronized (this.f) {
            i = this.l;
        }
        return i;
    }

    public final void e(com.google.android.gms.ads.internal.client.zzm zzmVar, long j) {
        Bundle bundle;
        synchronized (this.f) {
            try {
                com.google.android.gms.ads.internal.util.zzj zzjVar = this.i;
                long zzm = zzjVar.zzm();
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                if (this.b == -1) {
                    if (currentTimeMillis - zzm > ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z1)).longValue()) {
                        this.d = -1;
                    } else {
                        this.d = zzjVar.zzo();
                    }
                    this.b = j;
                    this.f5057a = j;
                } else {
                    this.f5057a = j;
                }
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u4)).booleanValue() && (bundle = zzmVar.zzc) != null && bundle.getInt("gw", 2) == 1) {
                    return;
                }
                this.f5058c++;
                int i = this.d + 1;
                this.d = i;
                if (i == 0) {
                    this.e = 0L;
                    zzjVar.zzp(currentTimeMillis);
                } else {
                    this.e = currentTimeMillis - zzjVar.zzq();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Bundle f(Context context, String str) {
        Bundle bundle;
        synchronized (this.f) {
            try {
                bundle = new Bundle();
                if (!this.i.zzx()) {
                    bundle.putString("session_id", this.h);
                }
                bundle.putLong("basets", this.b);
                bundle.putLong("currts", this.f5057a);
                bundle.putString("seq_num", str);
                bundle.putInt("preqs", this.f5058c);
                bundle.putInt("preqs_in_session", this.d);
                bundle.putLong("time_in_session", this.e);
                bundle.putInt("pclick", this.j);
                bundle.putInt("pimp", this.k);
                Context a2 = zzbzk.a(context);
                int identifier = a2.getResources().getIdentifier("Theme.Translucent", "style", "android");
                boolean z = false;
                if (identifier == 0) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                } else {
                    try {
                        if (identifier == a2.getPackageManager().getActivityInfo(new ComponentName(a2.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                            z = true;
                        } else {
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Fail to fetch AdActivity theme");
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                }
                bundle.putBoolean("support_transparent_background", z);
                bundle.putInt("consent_form_action_identifier", d());
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final void g() {
        if (((Boolean) zzbir.f4726a.c()).booleanValue()) {
            synchronized (this.f) {
                this.f5058c--;
                this.d--;
            }
        }
    }
}
