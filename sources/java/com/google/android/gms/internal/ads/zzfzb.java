package com.google.android.gms.internal.ads;

import androidx.datastore.core.DataStore;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final class zzfzb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7741a;
    public final zzijf b;

    public zzfzb(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f7741a = zzijfVar;
        this.b = zzijfVar2;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzfyc, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        DataStore dataStore = (DataStore) this.f7741a.zzb();
        zzgyw executorService = zzcdo.f5068a;
        zzijo.a(executorService);
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        return new zzfza(dataStore, new zzfzd(executorService), (zzduo) this.b.zzb(), new Object());
    }
}
