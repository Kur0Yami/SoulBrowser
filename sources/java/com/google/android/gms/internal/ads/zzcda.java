package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlin.io.ConstantsKt;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzcda {

    /* renamed from: a, reason: collision with root package name */
    public final Object f5053a = new Object();
    public final com.google.android.gms.ads.internal.util.zzj b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcdf f5054c;
    public boolean d;
    public Context e;
    public VersionInfoParcel f;
    public String g;
    public zzbgp h;
    public zzdxe i;
    public Boolean j;
    public final AtomicInteger k;
    public final AtomicInteger l;
    public final zzccz m;
    public final Object n;
    public ListenableFuture o;
    public final AtomicBoolean p;

    public zzcda() {
        com.google.android.gms.ads.internal.util.zzj zzjVar = new com.google.android.gms.ads.internal.util.zzj();
        this.b = zzjVar;
        this.f5054c = new zzcdf(com.google.android.gms.ads.internal.client.zzbb.zzf(), zzjVar);
        this.d = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = new AtomicInteger(0);
        this.l = new AtomicInteger(0);
        this.m = new zzccz();
        this.n = new Object();
        this.p = new AtomicBoolean();
    }

    public final zzbgp a() {
        zzbgp zzbgpVar;
        synchronized (this.f5053a) {
            zzbgpVar = this.h;
        }
        return zzbgpVar;
    }

    public final void b(Boolean bool) {
        synchronized (this.f5053a) {
            this.j = bool;
        }
    }

    public final Boolean c() {
        Boolean bool;
        synchronized (this.f5053a) {
            bool = this.j;
        }
        return bool;
    }

    public final void d(Context context, VersionInfoParcel versionInfoParcel, zzdxe zzdxeVar) {
        zzbgp zzbgpVar;
        synchronized (this.f5053a) {
            try {
                if (!this.d) {
                    this.e = context.getApplicationContext();
                    this.f = versionInfoParcel;
                    com.google.android.gms.ads.internal.zzt.zzg().b(this.f5054c);
                    this.b.zza(this.e);
                    zzbxv.d(this.e, this.f);
                    this.i = zzdxeVar;
                    com.google.android.gms.ads.internal.zzt.zzm();
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B2)).booleanValue()) {
                        com.google.android.gms.ads.internal.util.zze.zza("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                        zzbgpVar = null;
                    } else {
                        zzbgpVar = new zzbgp();
                    }
                    this.h = zzbgpVar;
                    if (zzbgpVar != null) {
                        zzcdr.a(new zzccw(this).zzb(), "AppState.registerCsiReporter");
                    }
                    Context context2 = this.e;
                    if (PlatformVersion.isAtLeastO()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E9)).booleanValue()) {
                            try {
                                ((ConnectivityManager) context2.getSystemService("connectivity")).registerDefaultNetworkCallback(new zzccx(this));
                            } catch (RuntimeException e) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to register network callback", e);
                                this.p.set(true);
                            }
                        }
                    }
                    this.d = true;
                    j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.nf)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc().zze(context, versionInfoParcel.afmaVersion);
        }
    }

    public final Resources e() {
        if (this.f.isClientJar) {
            return this.e.getResources();
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.lc)).booleanValue()) {
                return com.google.android.gms.ads.internal.util.client.zzs.zzb(this.e).getResources();
            }
            com.google.android.gms.ads.internal.util.client.zzs.zzb(this.e).getResources();
            return null;
        } catch (com.google.android.gms.ads.internal.util.client.zzr e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void f(String str, Throwable th) {
        zzbxv.d(this.e, this.f).a(str, th);
    }

    public final void g(String str, Throwable th) {
        zzbxv.d(this.e, this.f).b(th, str, ((Double) zzbit.f.c()).floatValue());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzbxx, java.lang.Object] */
    public final void h(String str, Throwable th) {
        Context context = this.e;
        VersionInfoParcel versionInfoParcel = this.f;
        synchronized (zzbxv.l) {
            try {
                if (zzbxv.n == null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D8)).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C8)).booleanValue()) {
                            zzbxv.n = new zzbxv(context, versionInfoParcel);
                        }
                    }
                    zzbxv.n = new Object();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        zzbxv.n.a(str, th);
    }

    public final com.google.android.gms.ads.internal.util.zzj i() {
        com.google.android.gms.ads.internal.util.zzj zzjVar;
        synchronized (this.f5053a) {
            zzjVar = this.b;
        }
        return zzjVar;
    }

    public final ListenableFuture j() {
        if (this.e != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H3)).booleanValue()) {
                synchronized (this.n) {
                    try {
                        ListenableFuture listenableFuture = this.o;
                        if (listenableFuture != null) {
                            return listenableFuture;
                        }
                        ListenableFuture v0 = ((zzgxi) zzcdo.f5068a).v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzccy
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Object call() {
                                Context a2 = zzbzk.a(zzcda.this.e);
                                ArrayList arrayList = new ArrayList();
                                try {
                                    PackageInfo packageInfo = Wrappers.packageManager(a2).getPackageInfo(a2.getApplicationInfo().packageName, ConstantsKt.DEFAULT_BLOCK_SIZE);
                                    if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                                        int i = 0;
                                        while (true) {
                                            String[] strArr = packageInfo.requestedPermissions;
                                            if (i >= strArr.length) {
                                                break;
                                            }
                                            if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                                                arrayList.add(strArr[i]);
                                            }
                                            i++;
                                        }
                                    }
                                } catch (PackageManager.NameNotFoundException unused) {
                                }
                                return arrayList;
                            }
                        });
                        this.o = v0;
                        return v0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return zzgym.a(new ArrayList());
    }

    public final boolean k(Context context) {
        if (PlatformVersion.isAtLeastO()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E9)).booleanValue()) {
                return this.p.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }
}
