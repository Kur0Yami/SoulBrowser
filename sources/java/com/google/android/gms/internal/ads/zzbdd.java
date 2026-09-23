package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbdd implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c, reason: collision with root package name */
    public Activity f4564c;
    public Application f;
    public Runnable l;
    public long n;
    public final Object g = new Object();
    public final AtomicBoolean h = new AtomicBoolean(true);
    public boolean i = false;
    public final ArrayList j = new ArrayList();
    public final ArrayList k = new ArrayList();
    public boolean m = false;

    public final void a(zzbde zzbdeVar) {
        synchronized (this.g) {
            this.j.add(zzbdeVar);
        }
    }

    public final void b(zzbde zzbdeVar) {
        synchronized (this.g) {
            this.j.remove(zzbdeVar);
        }
    }

    public final void c(zzdum zzdumVar) {
        synchronized (this.g) {
            this.k.add(zzdumVar);
        }
    }

    public final void d(Activity activity) {
        synchronized (this.g) {
            try {
                if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                    this.f4564c = activity;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Activity activity2;
        synchronized (this.g) {
            try {
                activity2 = this.f4564c;
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AppActivityTracker.ActivityListener.onActivityDestroyed", e);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            } finally {
            }
            if (activity2 == null) {
                return;
            }
            if (activity2.equals(activity)) {
                this.f4564c = null;
            }
            ArrayList arrayList = this.k;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                zzdum zzdumVar = (zzdum) obj;
                if (zzdumVar.b.getAndSet(false)) {
                    zzfza zzfzaVar = zzdumVar.f6157a;
                    zzfzaVar.getClass();
                    BuildersKt.b(zzfzaVar.f7739a, new zzfyx(zzfzaVar, null), 3);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        d(activity);
        synchronized (this.g) {
            try {
                ArrayList arrayList = this.k;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zzdum zzdumVar = (zzdum) obj;
                    try {
                        if (zzdumVar.b.get()) {
                            zzfza zzfzaVar = zzdumVar.f6157a;
                            zzfzaVar.getClass();
                            BuildersKt.b(zzfzaVar.f7739a, new zzfyl(zzfzaVar, null), 3);
                        }
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("AppActivityTracker.ActivityListener.onActivityPaused", e);
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.i = true;
        Runnable runnable = this.l;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzbdc zzbdcVar = new zzbdc(this);
        this.l = zzbdcVar;
        zzfxlVar.postDelayed(zzbdcVar, this.n);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        d(activity);
        int i = 0;
        this.i = false;
        boolean andSet = this.h.getAndSet(true);
        Runnable runnable = this.l;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(runnable);
        }
        synchronized (this.g) {
            try {
                ArrayList arrayList = this.k;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    zzdum zzdumVar = (zzdum) obj;
                    try {
                        if (zzdumVar.b.get()) {
                            zzfza zzfzaVar = zzdumVar.f6157a;
                            zzfzaVar.getClass();
                            BuildersKt.b(zzfzaVar.f7739a, new zzfyz(zzfzaVar, null), 3);
                        }
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("AppActivityTracker.ActivityListener.onActivityResumed", e);
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                    }
                }
                if (!andSet) {
                    ArrayList arrayList2 = this.j;
                    int size2 = arrayList2.size();
                    while (i < size2) {
                        Object obj2 = arrayList2.get(i);
                        i++;
                        try {
                            ((zzbde) obj2).zza(true);
                        } catch (Exception e2) {
                            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
                        }
                    }
                } else {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("App is still foreground.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
