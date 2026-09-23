package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzfik {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzga f7390a;
    public final zzbpy b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeqp f7391c;
    public final com.google.android.gms.ads.internal.client.zzm d;
    public final Bundle e;
    public final com.google.android.gms.ads.internal.client.zzr f;
    public final String g;
    public final ArrayList h;
    public final ArrayList i;
    public final zzbjn j;
    public final com.google.android.gms.ads.internal.client.zzx k;
    public final int l;
    public final AdManagerAdViewOptions m;
    public final PublisherAdViewOptions n;
    public final com.google.android.gms.ads.internal.client.zzco o;
    public final zzfhy p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final Bundle t;
    public final AtomicLong u;
    public final boolean v;
    public final com.google.android.gms.ads.internal.client.zzcs w;

    public /* synthetic */ zzfik(zzfij zzfijVar) {
        AtomicLong atomicLong;
        this.f = zzfijVar.b;
        this.g = zzfijVar.f7389c;
        this.w = zzfijVar.w;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfijVar.f7388a;
        this.e = zzmVar.zzB;
        int i = zzmVar.zza;
        long j = zzmVar.zzb;
        Bundle bundle = zzmVar.zzc;
        int i2 = zzmVar.zzd;
        List list = zzmVar.zze;
        boolean z = zzmVar.zzf;
        int i3 = zzmVar.zzg;
        boolean z2 = true;
        if (!zzmVar.zzh && !zzfijVar.e) {
            z2 = false;
        }
        boolean z3 = z2;
        com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzfijVar.f7388a;
        String str = zzmVar2.zzi;
        com.google.android.gms.ads.internal.client.zzfx zzfxVar = zzmVar2.zzj;
        Location location = zzmVar2.zzk;
        String str2 = zzmVar2.zzl;
        Bundle bundle2 = zzmVar2.zzm;
        Bundle bundle3 = zzmVar2.zzn;
        List list2 = zzmVar2.zzo;
        String str3 = zzmVar2.zzp;
        String str4 = zzmVar2.zzq;
        boolean z4 = zzmVar2.zzr;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar2.zzs;
        int i4 = zzmVar2.zzt;
        String str5 = zzmVar2.zzu;
        List list3 = zzmVar2.zzv;
        int zza = com.google.android.gms.ads.internal.util.zzs.zza(zzmVar2.zzw);
        com.google.android.gms.ads.internal.client.zzm zzmVar3 = zzfijVar.f7388a;
        com.google.android.gms.ads.internal.client.zzm zzmVar4 = new com.google.android.gms.ads.internal.client.zzm(i, j, bundle, i2, list, z, i3, z3, str, zzfxVar, location, str2, bundle2, bundle3, list2, str3, str4, z4, zzcVar, i4, str5, list3, zza, zzmVar3.zzx, zzmVar3.zzy, zzmVar3.zzz, zzmVar3.zzA);
        this.d = zzmVar4;
        com.google.android.gms.ads.internal.client.zzga zzgaVar = zzfijVar.d;
        zzbjn zzbjnVar = null;
        if (zzgaVar == null) {
            zzbjn zzbjnVar2 = zzfijVar.h;
            if (zzbjnVar2 != null) {
                zzgaVar = zzbjnVar2.j;
            } else {
                zzgaVar = null;
            }
        }
        this.f7390a = zzgaVar;
        ArrayList arrayList = zzfijVar.f;
        this.h = arrayList;
        this.i = zzfijVar.g;
        if (arrayList != null && (zzbjnVar = zzfijVar.h) == null) {
            zzbjnVar = new zzbjn(new NativeAdOptions.Builder().build());
        }
        this.j = zzbjnVar;
        this.k = zzfijVar.i;
        this.l = zzfijVar.m;
        this.m = zzfijVar.j;
        this.n = zzfijVar.k;
        this.o = zzfijVar.l;
        this.b = zzfijVar.n;
        this.p = new zzfhy(zzfijVar.o);
        this.q = zzfijVar.p;
        this.r = zzfijVar.q;
        this.f7391c = zzfijVar.r;
        this.s = zzfijVar.s;
        this.t = zzfijVar.t;
        if (zzmVar4.zzA != 0) {
            atomicLong = new AtomicLong(zzmVar4.zzA);
        } else {
            atomicLong = zzfijVar.u;
        }
        this.u = atomicLong;
        this.v = zzfijVar.v;
    }
}
