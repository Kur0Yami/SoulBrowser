package com.google.android.gms.internal.ads;

import androidx.datastore.core.DataStore;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final class zzdun implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzb f6159a;

    public zzdun(zzfzb zzfzbVar) {
        this.f6159a = zzfzbVar;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzfyc, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfzb zzfzbVar = this.f6159a;
        DataStore dataStore = (DataStore) zzfzbVar.f7741a.zzb();
        zzgyw executorService = zzcdo.f5068a;
        zzijo.a(executorService);
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        return new zzdum(new zzfza(dataStore, new zzfzd(executorService), (zzduo) zzfzbVar.b.zzb(), new Object()));
    }
}
