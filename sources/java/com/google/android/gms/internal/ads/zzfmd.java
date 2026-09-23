package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzfmd {

    /* renamed from: a, reason: collision with root package name */
    public final zzfmo f7472a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfmm f7473c;

    public /* synthetic */ zzfmd(zzfmm zzfmmVar, zzfmo zzfmoVar, List list) {
        this.f7473c = zzfmmVar;
        this.f7472a = zzfmoVar;
        this.b = list;
    }

    public final zzfml a(Callable callable) {
        zzgvs zzgvsVar = zzgtd.f;
        List list = this.b;
        list.getClass();
        zzgyl zzgylVar = new zzgyl(zzgtd.v(list), true);
        ListenableFuture a2 = zzgylVar.a(zzfmc.f7471a, zzcdo.g);
        zzfmm zzfmmVar = this.f7473c;
        return new zzfml(zzfmmVar, this.f7472a, null, a2, list, zzgylVar.a(callable, zzfmmVar.f7481a));
    }
}
