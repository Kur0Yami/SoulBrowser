package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzaut;
import com.google.android.gms.internal.ads.zzauu;
import com.google.android.gms.internal.ads.zzaxn;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzayn;
import com.google.android.gms.internal.ads.zzayo;
import com.google.android.gms.internal.ads.zzayt;
import com.google.android.gms.internal.ads.zzayw;
import com.google.android.gms.internal.ads.zzazu;
import com.google.android.gms.internal.ads.zzbac;
import com.google.android.gms.internal.ads.zzbby;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzfuf;
import com.google.android.gms.internal.ads.zzfvc;
import com.google.android.gms.internal.ads.zzfvw;
import com.google.android.gms.internal.ads.zzgxf;
import com.google.android.gms.internal.ads.zzgym;
import java.io.File;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzk implements Runnable, zzayl {
    public static final long t = System.currentTimeMillis();
    public boolean h;
    public final boolean i;
    public final boolean j;
    public final ExecutorService k;
    public final zzfuf l;
    public Context m;
    public final Context n;
    public VersionInfoParcel o;
    public final VersionInfoParcel p;
    public final boolean q;
    public int s;

    /* renamed from: c, reason: collision with root package name */
    public final Vector f3175c = new Vector();
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final CountDownLatch r = new CountDownLatch(1);

    public zzk(Context context, VersionInfoParcel versionInfoParcel) {
        this.m = context;
        this.n = context;
        this.o = versionInfoParcel;
        this.p = versionInfoParcel;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.k = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.c3)).booleanValue();
        this.q = booleanValue;
        this.l = zzfuf.a(context, newCachedThreadPool, booleanValue);
        this.i = ((Boolean) zzbd.zzc().a(zzbgk.Z2)).booleanValue();
        this.j = ((Boolean) zzbd.zzc().a(zzbgk.d3)).booleanValue();
        if (((Boolean) zzbd.zzc().a(zzbgk.b3)).booleanValue()) {
            this.s = 2;
        } else {
            this.s = 1;
        }
        if (!((Boolean) zzbd.zzc().a(zzbgk.m4)).booleanValue()) {
            this.h = a();
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.f4)).booleanValue()) {
            zzcdo.f5068a.execute(this);
            return;
        }
        zzbb.zza();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzz()) {
            zzcdo.f5068a.execute(this);
        } else {
            run();
        }
    }

    public final boolean a() {
        Context context = this.m;
        zzh zzhVar = new zzh(this);
        zzfvw zzfvwVar = new zzfvw(context, zzfvc.b(context, this.l), zzhVar, ((Boolean) zzbd.zzc().a(zzbgk.a3)).booleanValue());
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzfvw.f) {
            try {
                zzbby f = zzfvwVar.f(1);
                if (f == null) {
                    zzfvwVar.e(4025, currentTimeMillis);
                    return false;
                }
                File c2 = zzfvwVar.c(f.D());
                if (!new File(c2, "pcam.jar").exists()) {
                    zzfvwVar.e(4026, currentTimeMillis);
                    return false;
                }
                if (!new File(c2, "pcbc").exists()) {
                    zzfvwVar.e(4027, currentTimeMillis);
                    return false;
                }
                zzfvwVar.e(5019, currentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        zzayl d = d();
        Vector vector = this.f3175c;
        if (!vector.isEmpty() && d != null) {
            Iterator it = vector.iterator();
            while (it.hasNext()) {
                Object[] objArr = (Object[]) it.next();
                try {
                    int length = objArr.length;
                    if (length == 1) {
                        d.zzd((MotionEvent) objArr[0]);
                    } else if (length == 3) {
                        d.zze(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                    }
                } catch (NullPointerException unused) {
                }
            }
            vector.clear();
        }
    }

    public final void c(boolean z) {
        String str = this.o.afmaVersion;
        Context context = this.m;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        zzaut H = zzauu.H();
        H.k();
        ((zzauu) H.f).J(z);
        H.k();
        ((zzauu) H.f).I(str);
        zzayn zzaynVar = new zzayn((zzauu) H.m());
        synchronized (zzayo.class) {
            try {
                if (!zzayo.D) {
                    zzayo.E = System.currentTimeMillis() / 1000;
                    zzaym.y = zzayo.h(context, zzaynVar.f4478a);
                    if (((Boolean) zzbd.zzc().a(zzbgk.h4)).booleanValue()) {
                        zzayo.F = zzayw.a(context);
                    }
                    ExecutorService executorService = zzaym.y.b;
                    if (((Boolean) zzbd.zzc().a(zzbgk.i4)).booleanValue() && executorService != null) {
                        zzayo.G = zzbac.a(context, executorService);
                    }
                    if (((Boolean) zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
                        zzayo.H = new zzazu();
                    }
                    if (((Boolean) zzbd.zzc().a(zzbgk.w3)).booleanValue() || zzaynVar.f4479c.H()) {
                        zzayo.J = new zzayt(context, executorService);
                    }
                    if (((Boolean) zzbd.zzc().a(zzbgk.r3)).booleanValue() || zzaynVar.f4479c.F()) {
                        zzayo.I = new zzaxn(context, executorService, zzaynVar.f4479c, zzayo.J);
                    }
                    zzayo.D = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f.set(new zzayo(context, zzaynVar));
    }

    public final zzayl d() {
        int i;
        if (this.i && !this.h) {
            i = 1;
        } else {
            i = this.s;
        }
        if (i == 2) {
            return (zzayl) this.g.get();
        }
        return (zzayl) this.f.get();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        boolean z;
        try {
            if (((Boolean) zzbd.zzc().a(zzbgk.m4)).booleanValue()) {
                this.h = a();
            }
            boolean z2 = this.o.isClientJar;
            final boolean z3 = false;
            if (!((Boolean) zzbd.zzc().a(zzbgk.B1)).booleanValue() && z2) {
                z3 = true;
            }
            if (this.i && !this.h) {
                i = 1;
            } else {
                i = this.s;
            }
            if (i == 1) {
                c(z3);
                if (this.s == 2) {
                    this.k.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzk zzkVar = zzk.this;
                            boolean z4 = z3;
                            long currentTimeMillis = System.currentTimeMillis();
                            try {
                                Context context = zzkVar.n;
                                VersionInfoParcel versionInfoParcel = zzkVar.p;
                                boolean z5 = zzkVar.q;
                                zzaut H = zzauu.H();
                                H.k();
                                ((zzauu) H.f).J(z4);
                                String str = versionInfoParcel.afmaVersion;
                                H.k();
                                ((zzauu) H.f).I(str);
                                zzauu zzauuVar = (zzauu) H.m();
                                Context applicationContext = context.getApplicationContext();
                                if (applicationContext != null) {
                                    context = applicationContext;
                                }
                                zzayi.a(context, zzauuVar, z5).c();
                            } catch (NullPointerException e) {
                                zzkVar.l.c(2027, System.currentTimeMillis() - currentTimeMillis, e);
                            }
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    Context context = this.m;
                    VersionInfoParcel versionInfoParcel = this.o;
                    boolean z4 = this.q;
                    zzaut H = zzauu.H();
                    H.k();
                    ((zzauu) H.f).J(z3);
                    String str = versionInfoParcel.afmaVersion;
                    H.k();
                    ((zzauu) H.f).I(str);
                    zzauu zzauuVar = (zzauu) H.m();
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    zzayi a2 = zzayi.a(context, zzauuVar, z4);
                    this.g.set(a2);
                    if (this.j) {
                        synchronized (a2) {
                            z = a2.u;
                        }
                        if (!z) {
                            this.s = 1;
                            c(z3);
                        }
                    }
                } catch (NullPointerException e) {
                    this.s = 1;
                    c(z3);
                    this.l.c(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
            this.r.countDown();
            this.m = null;
            this.o = null;
        } catch (Throwable th) {
            this.r.countDown();
            this.m = null;
            this.o = null;
            throw th;
        }
    }

    public final boolean zza() {
        try {
            this.r.await();
            return true;
        } catch (InterruptedException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    public final String zzb(Context context, byte[] bArr) {
        zzayl d;
        if (zza() && (d = d()) != null) {
            b();
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                return d.zzl(context);
            } catch (NullPointerException unused) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final String zzc() {
        int i = this.s;
        int i2 = i - 1;
        if (i != 0) {
            if (i2 != 0) {
                return "2";
            }
            return "1";
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzd(MotionEvent motionEvent) {
        zzayl d = d();
        if (d != null) {
            b();
            try {
                d.zzd(motionEvent);
                return;
            } catch (NullPointerException unused) {
                return;
            }
        }
        this.f3175c.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zze(int i, int i2, int i3) {
        zzayl d = d();
        if (d != null) {
            b();
            try {
                d.zze(i, i2, i3);
                return;
            } catch (NullPointerException unused) {
                return;
            }
        }
        this.f3175c.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzf(Context context, String str, View view, Activity activity) {
        if (zza()) {
            zzayl d = d();
            if (((Boolean) zzbd.zzc().a(zzbgk.Zb)).booleanValue()) {
                zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzO(view, 4, null);
            }
            if (d != null) {
                b();
                try {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    return d.zzf(context, str, view, activity);
                } catch (NullPointerException unused) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzg(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzh(View view) {
        zzayl d = d();
        if (d != null) {
            try {
                d.zzh(view);
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        zzayl d;
        zzayl d2;
        if (((Boolean) zzbd.zzc().a(zzbgk.A3)).booleanValue()) {
            if (this.r.getCount() == 0 && (d2 = d()) != null) {
                try {
                    d2.zzi(stackTraceElementArr);
                    return;
                } catch (NullPointerException unused) {
                    return;
                }
            }
            return;
        }
        if (zza() && (d = d()) != null) {
            try {
                d.zzi(stackTraceElementArr);
            } catch (NullPointerException unused2) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzj(Context context, View view, Activity activity) {
        try {
            if (((Boolean) zzbd.zzc().a(zzbgk.Yb)).booleanValue()) {
                if (zza()) {
                    zzayl d = d();
                    if (((Boolean) zzbd.zzc().a(zzbgk.Zb)).booleanValue()) {
                        zzt.zzc();
                        com.google.android.gms.ads.internal.util.zzs.zzO(view, 2, null);
                    }
                    if (d != null) {
                        return d.zzj(context, view, activity);
                    }
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            zzayl d2 = d();
            if (((Boolean) zzbd.zzc().a(zzbgk.Zb)).booleanValue()) {
                zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzO(view, 2, null);
            }
            if (d2 != null) {
                return d2.zzj(context, view, activity);
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (NullPointerException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzk(final Context context) {
        try {
            return (String) ((zzgxf) zzgym.c(new Callable() { // from class: com.google.android.gms.ads.internal.zzj
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzk.this.zzb(context, null);
                }
            }, this.k)).get(((Integer) zzbd.zzc().a(zzbgk.t3)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            return Integer.toString(17);
        } catch (TimeoutException unused2) {
            return zzaye.a(t, context, this.p.afmaVersion);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzl(Context context) {
        return zzb(context, null);
    }
}
