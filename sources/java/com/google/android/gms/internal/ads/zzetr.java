package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzetr implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6929a;
    public final VersionInfoParcel b;

    public zzetr(VersionInfoParcel versionInfoParcel, zzgyw zzgywVar) {
        this.b = versionInfoParcel;
        this.f6929a = zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6929a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzetq
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzets.b(zzetr.this.b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 54;
    }
}
