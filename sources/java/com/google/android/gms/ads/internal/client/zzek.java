package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzfty;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzek {

    /* renamed from: a, reason: collision with root package name */
    public final String f3015a;
    public final ArrayList b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f3016c;
    public final Bundle d;
    public final String e;
    public final String f;
    public final int g;
    public final Set h;
    public final Bundle i;
    public final Set j;
    public final boolean k;
    public final String l;
    public final int m;
    public long n = 0;
    public final long o;

    public zzek(zzej zzejVar, @Nullable zzfty zzftyVar) {
        this.o = 0L;
        this.f3015a = zzejVar.g;
        this.b = zzejVar.h;
        this.f3016c = DesugarCollections.unmodifiableSet(zzejVar.f3013a);
        this.d = zzejVar.b;
        DesugarCollections.unmodifiableMap(zzejVar.f3014c);
        this.e = zzejVar.i;
        this.f = zzejVar.j;
        this.g = zzejVar.k;
        this.h = DesugarCollections.unmodifiableSet(zzejVar.d);
        this.i = zzejVar.e;
        this.j = DesugarCollections.unmodifiableSet(zzejVar.f);
        this.k = zzejVar.l;
        this.l = zzejVar.m;
        this.m = zzejVar.n;
        this.o = zzejVar.o;
    }

    public final String zza() {
        return this.f3015a;
    }

    public final List zzb() {
        return new ArrayList(this.b);
    }

    public final Set zzc() {
        return this.f3016c;
    }

    @Nullable
    public final Bundle zzd(Class cls) {
        return this.d.getBundle(cls.getName());
    }

    @Nullable
    public final Bundle zze(Class cls) {
        Bundle bundle = this.d.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final String zzf() {
        return this.e;
    }

    public final String zzg() {
        return this.f;
    }

    public final boolean zzh(Context context) {
        RequestConfiguration zzp = zzex.zzb().zzp();
        zzbb.zza();
        String zzD = com.google.android.gms.ads.internal.util.client.zzf.zzD(context);
        if (!this.h.contains(zzD) && !zzp.getTestDeviceIds().contains(zzD)) {
            return false;
        }
        return true;
    }

    public final Bundle zzi() {
        return this.d;
    }

    public final int zzj() {
        return this.g;
    }

    public final Bundle zzk() {
        return this.i;
    }

    public final Set zzl() {
        return this.j;
    }

    @Deprecated
    public final boolean zzm() {
        return this.k;
    }

    @Nullable
    public final String zzn() {
        return this.l;
    }

    public final int zzo() {
        return this.m;
    }

    public final void zzp(long j) {
        this.n = j;
    }

    public final long zzq() {
        return this.n;
    }

    public final long zzr() {
        return this.o;
    }
}
