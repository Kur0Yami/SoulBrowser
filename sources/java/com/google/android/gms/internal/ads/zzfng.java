package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfng implements zzfne {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7497a;
    public final int p;
    public long b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f7498c = -1;
    public boolean d = false;
    public int q = 2;
    public int r = 2;
    public int e = 0;
    public String f = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String g = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String i = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public zzfnt j = zzfnt.SCAR_REQUEST_TYPE_UNSPECIFIED;
    public String k = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String m = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public boolean n = false;
    public boolean o = false;

    public zzfng(Context context, int i) {
        this.f7497a = context;
        this.p = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne a(Throwable th) {
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.aa)).booleanValue()) {
                String zzg = com.google.android.gms.ads.internal.util.client.zzf.zzg(zzbxv.f(th));
                if (zzg == null) {
                    zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                this.l = zzg;
                this.k = (String) ((zzgqj) zzgqp.a(new zzgpl('\n')).c(zzbxv.f(th))).iterator().next();
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne b(com.google.android.gms.ads.internal.client.zze zzeVar) {
        synchronized (this) {
            try {
                IBinder iBinder = zzeVar.zze;
                if (iBinder != null) {
                    zzdad zzdadVar = (zzdad) iBinder;
                    String str = zzdadVar.h;
                    if (!TextUtils.isEmpty(str)) {
                        this.f = str;
                    }
                    String str2 = zzdadVar.f;
                    if (!TextUtils.isEmpty(str2)) {
                        this.g = str2;
                    }
                }
            } finally {
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne c(zzfnt zzfntVar) {
        synchronized (this) {
            this.j = zzfntVar;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne d(int i) {
        synchronized (this) {
            this.q = i;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        r2.g = r0;
     */
    @Override // com.google.android.gms.internal.ads.zzfne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfne e(com.google.android.gms.internal.ads.zzfib r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzfhu r0 = r3.b     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.b     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L10
            r2.f = r0     // Catch: java.lang.Throwable -> Le
            goto L10
        Le:
            r3 = move-exception
            goto L2e
        L10:
            java.util.List r3 = r3.f7381a     // Catch: java.lang.Throwable -> Le
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> Le
        L16:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L2c
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> Le
            com.google.android.gms.internal.ads.zzfhr r0 = (com.google.android.gms.internal.ads.zzfhr) r0     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.b0     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L16
            r2.g = r0     // Catch: java.lang.Throwable -> Le
        L2c:
            monitor-exit(r2)
            return r2
        L2e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Le
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfng.e(com.google.android.gms.internal.ads.zzfib):com.google.android.gms.internal.ads.zzfne");
    }

    public final synchronized void f() {
        Configuration configuration;
        com.google.android.gms.ads.internal.util.zzz zzf = com.google.android.gms.ads.internal.zzt.zzf();
        Context context = this.f7497a;
        this.e = zzf.zzm(context);
        Resources resources = context.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.r = i;
        this.b = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        this.o = true;
    }

    public final synchronized void g() {
        this.f7498c = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final /* bridge */ /* synthetic */ zzfne zza() {
        f();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final synchronized boolean zzb() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final /* bridge */ /* synthetic */ zzfne zzc() {
        g();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne zzd(boolean z) {
        synchronized (this) {
            this.d = z;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne zze(String str) {
        synchronized (this) {
            this.i = str;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne zzi(String str) {
        synchronized (this) {
            this.h = str;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final zzfne zzk(String str) {
        synchronized (this) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.aa)).booleanValue()) {
                this.m = str;
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final boolean zzl() {
        if (!TextUtils.isEmpty(this.h)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfne
    public final synchronized zzfnh zzm() {
        try {
            if (this.n) {
                return null;
            }
            this.n = true;
            if (!this.o) {
                f();
            }
            if (this.f7498c < 0) {
                g();
            }
            return new zzfnh(this);
        } catch (Throwable th) {
            throw th;
        }
    }
}
