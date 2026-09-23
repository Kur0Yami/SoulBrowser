package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzczo {

    /* renamed from: a, reason: collision with root package name */
    public final zzfmu f5630a;
    public final VersionInfoParcel b;

    /* renamed from: c, reason: collision with root package name */
    public final ApplicationInfo f5631c;
    public final String d;
    public final ArrayList e;
    public final PackageInfo f;
    public final zzija g;
    public final String h;
    public final zzfaa i;
    public final com.google.android.gms.ads.internal.util.zzg j;
    public final zzfik k;
    public final int l;
    public final zzdgd m;

    public zzczo(zzfmu zzfmuVar, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, ArrayList arrayList, PackageInfo packageInfo, zzija zzijaVar, com.google.android.gms.ads.internal.util.zzj zzjVar, String str2, zzfaa zzfaaVar, zzfik zzfikVar, zzdgd zzdgdVar, int i) {
        this.f5630a = zzfmuVar;
        this.b = versionInfoParcel;
        this.f5631c = applicationInfo;
        this.d = str;
        this.e = arrayList;
        this.f = packageInfo;
        this.g = zzijaVar;
        this.h = str2;
        this.i = zzfaaVar;
        this.j = zzjVar;
        this.k = zzfikVar;
        this.m = zzdgdVar;
        this.l = i;
    }

    public final zzfmb a(Bundle bundle) {
        boolean z;
        this.m.zza();
        zzfmu zzfmuVar = this.f5630a;
        Objects.requireNonNull(zzfmuVar);
        zzczm zzczmVar = new zzczm(new Bundle(), new Bundle());
        if (this.l == 2) {
            z = true;
        } else {
            z = false;
        }
        ListenableFuture a2 = this.i.a(zzczmVar, bundle, z);
        return new zzfml(zzfmuVar, zzfmo.SIGNALS, null, zzfmm.d, Collections.EMPTY_LIST, a2).d();
    }

    public final zzfmb b() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue()) {
            Bundle bundle2 = this.k.t;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final zzfmb a2 = a(bundle);
        ListenableFuture[] listenableFutureArr = {a2, (ListenableFuture) this.g.zzb()};
        zzfmu zzfmuVar = this.f5630a;
        zzfmuVar.getClass();
        return new zzfmd(zzfmuVar, zzfmo.REQUEST_PARCEL, Arrays.asList(listenableFutureArr)).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzczn
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzczm zzczmVar = (zzczm) a2.g.get();
                Bundle bundle3 = zzczmVar.f5627a;
                zzczo zzczoVar = zzczo.this;
                String str = (String) ((ListenableFuture) zzczoVar.g.zzb()).get();
                boolean z = false;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q7)).booleanValue() && zzczoVar.j.zzx()) {
                    z = true;
                }
                boolean z2 = z;
                String str2 = zzczoVar.h;
                PackageInfo packageInfo = zzczoVar.f;
                ArrayList arrayList = zzczoVar.e;
                String str3 = zzczoVar.d;
                ApplicationInfo applicationInfo = zzczoVar.f5631c;
                VersionInfoParcel versionInfoParcel = zzczoVar.b;
                zzfik zzfikVar = zzczoVar.k;
                return new zzbza(bundle3, versionInfoParcel, applicationInfo, str3, arrayList, packageInfo, str, str2, null, null, z2, zzfikVar.g.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y3)), bundle, zzczmVar.b, zzczoVar.l);
            }
        }).d();
    }
}
