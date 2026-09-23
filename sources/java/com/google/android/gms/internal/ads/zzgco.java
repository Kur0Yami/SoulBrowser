package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzgco implements zzgcf, zzgcb, zzgcu {
    public static final zzied t;

    /* renamed from: a, reason: collision with root package name */
    public final Context f7826a;
    public final zzgbj b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f7827c;
    public final zzgbc d;
    public final boolean e;
    public final String f;
    public final long g;
    public final long h;
    public final double i;
    public final String j;
    public final long k;
    public final AtomicBoolean l = new AtomicBoolean(false);
    public final Object m = new Object();
    public final Object n = new Object();
    public final Object o = new Object();
    public final zzauv p = zzauw.D();
    public final ArrayList q = new ArrayList();
    public boolean r = false;
    public final HashMap s = new HashMap();

    static {
        zziec D = zzied.D();
        D.k();
        ((zzied) D.f).E(17);
        t = (zzied) D.m();
    }

    public zzgco(Context context, zzgbj zzgbjVar, ExecutorService executorService, zzgbc zzgbcVar, Random random, String str, long j, long j2, double d, String str2, long j3) {
        this.f7826a = context;
        this.b = zzgbjVar;
        this.f7827c = executorService;
        this.d = zzgbcVar;
        this.f = str;
        this.g = j;
        this.h = j2;
        this.i = d;
        this.j = str2;
        this.k = j3;
        this.e = random.nextDouble() < d;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void a(zzgct zzgctVar) {
        synchronized (this.m) {
            zzauv zzauvVar = this.p;
            String zza = zzgctVar.zza();
            zzauvVar.k();
            ((zzauw) zzauvVar.f).N(zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final void b(int i, long j, String str, Throwable th) {
        long longValue;
        if (!this.e) {
            return;
        }
        synchronized (this.n) {
            try {
                ArrayList arrayList = this.q;
                synchronized (this.o) {
                    try {
                        HashMap hashMap = this.s;
                        Integer valueOf = Integer.valueOf(i);
                        Long l = (Long) hashMap.get(valueOf);
                        if (l == null) {
                            l = 0L;
                        }
                        longValue = 1 + l.longValue();
                        hashMap.put(valueOf, Long.valueOf(longValue));
                    } finally {
                    }
                }
                arrayList.add(new zzgcl(i, j, th, str, longValue));
                if (!this.r) {
                    this.r = true;
                    this.b.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgcn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzauv zzauvVar;
                            zzgtd v;
                            int i2;
                            String str2;
                            zzgco zzgcoVar = zzgco.this;
                            synchronized (zzgcoVar.m) {
                                zzauv zzauvVar2 = zzgcoVar.p;
                                zzial zzialVar = (zzial) zzauvVar2.f8912c.y(zziaq.i, null);
                                zzialVar.f = zzauvVar2.B();
                                zzauvVar = (zzauv) zzialVar;
                            }
                            synchronized (zzgcoVar.n) {
                                ArrayList arrayList2 = zzgcoVar.q;
                                v = zzgtd.v(arrayList2);
                                arrayList2.clear();
                                zzgcoVar.r = false;
                            }
                            int size = v.size();
                            int i3 = 0;
                            int i4 = 0;
                            while (i3 < size) {
                                zzgcl zzgclVar = (zzgcl) v.get(i3);
                                if (i4 >= zzgcoVar.g) {
                                    zzgcoVar.c((zzauw) zzauvVar.m());
                                    zzauvVar.k();
                                    ((zzauw) zzauvVar.f).F();
                                    i4 = 0;
                                }
                                zzavn D = zzavo.D();
                                long j2 = zzgclVar.f7822a;
                                D.k();
                                ((zzavo) D.f).E(j2);
                                long j3 = zzgclVar.b;
                                D.k();
                                ((zzavo) D.f).F(j3);
                                long j4 = zzgclVar.e;
                                D.k();
                                ((zzavo) D.f).I(j4);
                                String str3 = zzgclVar.d;
                                if (str3 != null) {
                                    D.k();
                                    ((zzavo) D.f).J(str3);
                                }
                                Throwable th2 = zzgclVar.f7823c;
                                if (th2 == null) {
                                    i2 = 2;
                                } else {
                                    i2 = 3;
                                }
                                D.k();
                                ((zzavo) D.f).K(i2);
                                if (th2 != null) {
                                    String name = th2.getClass().getName();
                                    D.k();
                                    ((zzavo) D.f).G(name);
                                    try {
                                        StringWriter stringWriter = new StringWriter();
                                        try {
                                            PrintWriter printWriter = new PrintWriter(stringWriter);
                                            try {
                                                th2.printStackTrace(printWriter);
                                                str2 = stringWriter.toString();
                                                printWriter.close();
                                                stringWriter.close();
                                            } catch (Throwable th3) {
                                                try {
                                                    printWriter.close();
                                                } catch (Throwable th4) {
                                                    th3.addSuppressed(th4);
                                                }
                                                throw th3;
                                                break;
                                            }
                                        } catch (Throwable th5) {
                                            try {
                                                stringWriter.close();
                                            } catch (Throwable th6) {
                                                th5.addSuppressed(th6);
                                            }
                                            throw th5;
                                            break;
                                        }
                                    } catch (IOException unused) {
                                        str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                    }
                                    D.k();
                                    ((zzavo) D.f).H(str2);
                                }
                                zzavo zzavoVar = (zzavo) D.m();
                                zzauvVar.k();
                                ((zzauw) zzauvVar.f).E(zzavoVar);
                                i3++;
                                i4++;
                            }
                            if (i4 > 0) {
                                zzgcoVar.c((zzauw) zzauvVar.m());
                                zzauvVar.k();
                                ((zzauw) zzauvVar.f).F();
                            }
                        }
                    }, this.h);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c(zzauw zzauwVar) {
        try {
            zzgcj D = zzgck.D();
            zzied zziedVar = t;
            D.k();
            ((zzgck) D.f).F(zziedVar);
            zzgch D2 = zzgci.D();
            D2.k();
            ((zzgci) D2.f).E(zzauwVar);
            zzgci zzgciVar = (zzgci) D2.m();
            D.k();
            ((zzgck) D.f).E(zzgciVar);
            this.d.a(this.f, ((zzgck) D.m()).h());
        } catch (RuntimeException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        zzgzl zzgzlVar = new zzgzl(Executors.callable(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgcm
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                zzgco zzgcoVar = zzgco.this;
                if (zzgcoVar.e && !zzgcoVar.l.getAndSet(true)) {
                    Context context = zzgcoVar.f7826a;
                    String str = zzgcoVar.j;
                    double d = zzgcoVar.i;
                    long j = zzgcoVar.k;
                    Locale locale = Locale.getDefault();
                    zzauv D = zzauw.D();
                    long j2 = Build.VERSION.SDK_INT;
                    D.k();
                    ((zzauw) D.f).G(j2);
                    String str2 = Build.MODEL;
                    D.k();
                    ((zzauw) D.f).H(str2);
                    String language = locale.getLanguage();
                    D.k();
                    ((zzauw) D.f).I(language);
                    String country = locale.getCountry();
                    D.k();
                    ((zzauw) D.f).J(country);
                    D.k();
                    ((zzauw) D.f).M(str);
                    String packageName = context.getPackageName();
                    D.k();
                    ((zzauw) D.f).K(packageName);
                    D.k();
                    ((zzauw) D.f).P(j);
                    if (d > 0.0d) {
                        D.k();
                        ((zzauw) D.f).O((int) (1.0d / d));
                    }
                    PackageManager packageManager = context.getPackageManager();
                    try {
                        long j3 = packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
                        D.k();
                        ((zzauw) D.f).L(j3);
                    } catch (Exception unused) {
                    }
                    try {
                        if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                            i = 5;
                        } else if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                            i = 4;
                        } else if (packageManager.hasSystemFeature("android.hardware.type.pc")) {
                            i = 7;
                        } else {
                            UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
                            if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
                                i = 6;
                            } else {
                                i = 2;
                            }
                        }
                        D.k();
                        ((zzauw) D.f).Q(i);
                    } catch (RuntimeException unused2) {
                    }
                    zzauw zzauwVar = (zzauw) D.m();
                    synchronized (zzgcoVar.m) {
                        zzgcoVar.p.n(zzauwVar);
                    }
                }
            }
        }, null));
        this.f7827c.execute(zzgzlVar);
        return zzgzlVar;
    }
}
