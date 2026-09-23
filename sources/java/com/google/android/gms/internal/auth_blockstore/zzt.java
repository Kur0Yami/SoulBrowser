package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzt implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzx zzxVar = new zzx((TaskCompletionSource) obj2);
        zzg zzgVar = (zzg) ((zzf) obj).getService();
        Parcel I1 = zzgVar.I1();
        zzc.c(I1, zzxVar);
        zzgVar.f2(2, I1);
    }
}
