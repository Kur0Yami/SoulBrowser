package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class zzayi implements zzayl {
    public static zzayi v;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4473c;
    public final zzfvp f;
    public final zzfvw g;
    public final zzfvy h;
    public final zzazn i;
    public final zzfuf j;
    public final Executor k;
    public final zzbbq l;
    public final zzbac o;
    public final zzazu p;
    public final zzazl q;
    public volatile boolean t;
    public volatile boolean u;
    public volatile long r = 0;
    public final Object s = new Object();
    public final CountDownLatch n = new CountDownLatch(1);
    public final zzfvv m = new Object();

    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzfvv, java.lang.Object] */
    public zzayi(Context context, zzfuf zzfufVar, zzfvp zzfvpVar, zzfvw zzfvwVar, zzfvy zzfvyVar, zzazn zzaznVar, Executor executor, zzfua zzfuaVar, zzbbq zzbbqVar, zzbac zzbacVar, zzazu zzazuVar, zzazl zzazlVar) {
        this.u = false;
        this.f4473c = context;
        this.j = zzfufVar;
        this.f = zzfvpVar;
        this.g = zzfvwVar;
        this.h = zzfvyVar;
        this.i = zzaznVar;
        this.k = executor;
        this.l = zzbbqVar;
        this.o = zzbacVar;
        this.p = zzazuVar;
        this.q = zzazlVar;
        this.u = false;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzfuj] */
    public static synchronized zzayi a(Context context, zzauu zzauuVar, boolean z) {
        zzayi e;
        synchronized (zzayi.class) {
            ?? obj = new Object();
            obj.b = false;
            byte b = (byte) (obj.f | 1);
            obj.f7663c = true;
            obj.d = 100L;
            obj.e = 300L;
            obj.f = (byte) (((byte) (((byte) (((byte) (((byte) (b | 2)) | 4)) | 8)) | 16)) | 32);
            String D = zzauuVar.D();
            if (D != null) {
                obj.f7662a = D;
                obj.b = zzauuVar.E();
                obj.f = (byte) (obj.f | 1);
                e = e(context, Executors.newCachedThreadPool(), obj.a(), z);
            } else {
                throw new NullPointerException("Null clientVersion");
            }
        }
        return e;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzfur, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.ads.zzfua, java.lang.Object] */
    public static synchronized zzayi e(Context context, ExecutorService executorService, zzfuh zzfuhVar, boolean z) {
        zzayi zzayiVar;
        zzayw zzaywVar;
        zzbac zzbacVar;
        zzazu zzazuVar;
        synchronized (zzayi.class) {
            try {
                if (v == null) {
                    zzfuf a2 = zzfuf.a(context, executorService, z);
                    zzazl zzazlVar = null;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h4)).booleanValue()) {
                        zzaywVar = zzayw.a(context);
                    } else {
                        zzaywVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i4)).booleanValue()) {
                        zzbacVar = zzbac.a(context, executorService);
                    } else {
                        zzbacVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
                        zzazuVar = new zzazu();
                    } else {
                        zzazuVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                        zzazlVar = new zzazl();
                    }
                    zzazl zzazlVar2 = zzazlVar;
                    final zzfuv zzfuvVar = new zzfuv(context, executorService, a2, new Object());
                    Task b = Tasks.b(new Callable() { // from class: com.google.android.gms.internal.ads.zzfut
                        @Override // java.util.concurrent.Callable
                        public final /* synthetic */ Object call() {
                            Context context2 = zzfuv.this.f7676a;
                            return zzfum.a(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
                        }
                    }, executorService);
                    b.f(executorService, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfus
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final /* synthetic */ void c(Exception exc) {
                            if (exc instanceof InterruptedException) {
                                Thread.currentThread().interrupt();
                            }
                            zzfuv.this.f7677c.c(2025, -1L, exc);
                        }
                    });
                    zzfuvVar.d = b;
                    zzazm zzazmVar = new zzazm(context);
                    zzazn zzaznVar = new zzazn(zzfuhVar, zzfuvVar, new zzbaa(context, zzazmVar), zzazmVar, zzaywVar, zzbacVar, zzazuVar, zzazlVar2);
                    zzbbq b2 = zzfvc.b(context, a2);
                    ?? obj = new Object();
                    zzayi zzayiVar2 = new zzayi(context, a2, new zzfvp(context, b2), new zzfvw(context, b2, new zzayf(a2), ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a3)).booleanValue()), new zzfvy(context, zzaznVar, a2, obj, false), zzaznVar, executorService, obj, b2, zzbacVar, zzazuVar, zzazlVar2);
                    v = zzayiVar2;
                    zzayiVar2.b();
                    v.c();
                }
                zzayiVar = v;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzayiVar;
    }

    public final synchronized void b() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfvo f = f();
        if (f != null) {
            if (this.h.a(f)) {
                this.u = true;
                this.n.countDown();
                return;
            }
            return;
        }
        this.j.b(4013, System.currentTimeMillis() - currentTimeMillis);
    }

    public final void c() {
        if (!this.t) {
            synchronized (this.s) {
                try {
                    if (!this.t) {
                        if ((System.currentTimeMillis() / 1000) - this.r < 3600) {
                            return;
                        }
                        zzfvo c2 = this.h.c();
                        if ((c2 == null || c2.f7686a.F() - (System.currentTimeMillis() / 1000) < 3600) && zzfvc.a(this.l)) {
                            this.k.execute(new zzayh(this));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void d() {
        String str;
        String str2;
        int length;
        boolean a2;
        long currentTimeMillis = System.currentTimeMillis();
        zzfvo f = f();
        if (f != null) {
            str = f.f7686a.D();
            str2 = f.f7686a.E();
        } else {
            str = null;
            str2 = null;
        }
        try {
            try {
                Context context = this.f4473c;
                zzbbq zzbbqVar = this.l;
                zzfuf zzfufVar = this.j;
                zzfvt a3 = zzfuo.a(context, zzbbqVar, str, str2, zzfufVar);
                byte[] bArr = a3.f;
                if (bArr != null && (length = bArr.length) != 0) {
                    try {
                        zzhzl B = zzhzl.B(bArr, 0, length);
                        zziab zziabVar = zziab.b;
                        int i = zzhyy.f8889a;
                        zzbbs G = zzbbs.G(B, zziab.f8905c);
                        if (!G.D().D().isEmpty()) {
                            if (!G.D().E().isEmpty()) {
                                if (G.F().E().length != 0) {
                                    zzfvo f2 = f();
                                    if (f2 != null) {
                                        zzbby zzbbyVar = f2.f7686a;
                                        if (zzbbyVar != null) {
                                            if (G.D().D().equals(zzbbyVar.D())) {
                                                if (!G.D().E().equals(zzbbyVar.E())) {
                                                }
                                            }
                                        }
                                    }
                                    zzfvv zzfvvVar = this.m;
                                    int i2 = a3.g;
                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y2)).booleanValue()) {
                                        if (i2 == 3) {
                                            a2 = this.g.b(G);
                                        } else {
                                            if (i2 == 4) {
                                                a2 = this.g.a(G, zzfvvVar);
                                            }
                                            this.j.b(4009, System.currentTimeMillis() - currentTimeMillis);
                                        }
                                    } else {
                                        a2 = this.f.a(G, zzfvvVar);
                                    }
                                    if (a2) {
                                        zzfvo f3 = f();
                                        if (f3 != null) {
                                            if (this.h.a(f3)) {
                                                this.u = true;
                                            }
                                            this.r = System.currentTimeMillis() / 1000;
                                        }
                                    }
                                    this.j.b(4009, System.currentTimeMillis() - currentTimeMillis);
                                }
                            }
                        }
                        this.j.b(5010, System.currentTimeMillis() - currentTimeMillis);
                    } catch (NullPointerException unused) {
                        this.j.b(2030, System.currentTimeMillis() - currentTimeMillis);
                    }
                } else {
                    zzfufVar.b(5009, System.currentTimeMillis() - currentTimeMillis);
                }
            } catch (Throwable th) {
                this.n.countDown();
                throw th;
            }
        } catch (zzibg e) {
            this.j.c(4002, System.currentTimeMillis() - currentTimeMillis, e);
        }
        this.n.countDown();
    }

    public final zzfvo f() {
        if (zzfvc.a(this.l)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y2)).booleanValue()) {
                zzfvw zzfvwVar = this.g;
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (zzfvw.f) {
                    try {
                        zzbby f = zzfvwVar.f(1);
                        if (f == null) {
                            zzfvwVar.e(4022, currentTimeMillis);
                            return null;
                        }
                        File c2 = zzfvwVar.c(f.D());
                        File file = new File(c2, "pcam.jar");
                        if (!file.exists()) {
                            file = new File(c2, "pcam");
                        }
                        File file2 = new File(c2, "pcbc");
                        File file3 = new File(c2, "pcopt");
                        zzfvwVar.e(5016, currentTimeMillis);
                        return new zzfvo(f, file, file2, file3);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            zzfvp zzfvpVar = this.f;
            zzbby b = zzfvpVar.b(1);
            if (b != null) {
                String D = b.D();
                File a2 = zzfvq.a(zzfvpVar.c(), D, "pcam.jar");
                if (!a2.exists()) {
                    a2 = zzfvq.a(zzfvpVar.c(), D, "pcam");
                }
                return new zzfvo(b, a2, zzfvq.a(zzfvpVar.c(), D, "pcbc"), zzfvq.a(zzfvpVar.c(), D, "pcopt"));
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzd(MotionEvent motionEvent) {
        zzfui b = this.h.b();
        if (b != null) {
            try {
                ((zzfvn) b).d(motionEvent);
            } catch (zzfvx e) {
                this.j.c(e.f7694c, -1L, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zze(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pd)).booleanValue() && (displayMetrics = this.f4473c.getResources().getDisplayMetrics()) != null) {
            float f = i;
            float f2 = displayMetrics.density;
            float f3 = i2;
            MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f * f2, f3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzd(obtain);
            obtain.recycle();
            float f4 = displayMetrics.density;
            MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f * f4, f3 * f4, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzd(obtain2);
            obtain2.recycle();
            float f5 = displayMetrics.density;
            MotionEvent obtain3 = MotionEvent.obtain(0L, i3, 1, f * f5, f3 * f5, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzd(obtain3);
            obtain3.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzf(Context context, String str, View view, Activity activity) {
        zzbac zzbacVar = this.o;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            zzazu zzazuVar = this.p;
            zzazuVar.h = zzazuVar.g;
            zzazuVar.g = SystemClock.uptimeMillis();
        }
        c();
        zzfui b = this.h.b();
        if (b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String c2 = ((zzfvn) b).c(context, str, view, activity);
            this.j.e(5000, System.currentTimeMillis() - currentTimeMillis, null, c2, null);
            return c2;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzg(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzh(View view) {
        this.i.f4504c.a(view);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        zzazl zzazlVar = this.q;
        if (zzazlVar != null) {
            zzazlVar.f4501a = new ArrayList(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzj(Context context, View view, Activity activity) {
        zzbac zzbacVar = this.o;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            this.p.a(context, view);
        }
        c();
        zzfui b = this.h.b();
        if (b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String b2 = ((zzfvn) b).b(context, view, activity);
            this.j.e(5002, System.currentTimeMillis() - currentTimeMillis, null, b2, null);
            return b2;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzk(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final String zzl(Context context) {
        zzbac zzbacVar = this.o;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            zzazu zzazuVar = this.p;
            zzazuVar.b = zzazuVar.f4512a;
            zzazuVar.f4512a = SystemClock.uptimeMillis();
        }
        c();
        zzfui b = this.h.b();
        if (b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String a2 = ((zzfvn) b).a(context);
            this.j.e(5001, System.currentTimeMillis() - currentTimeMillis, null, a2, null);
            return a2;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
