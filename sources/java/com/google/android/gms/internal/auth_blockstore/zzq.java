package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzq implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzv zzvVar = new zzv((TaskCompletionSource) obj2);
        zzg zzgVar = (zzg) ((zzf) obj).getService();
        Parcel I1 = zzgVar.I1();
        zzc.c(I1, zzvVar);
        I1.writeInt(0);
        zzgVar.f2(10, I1);
    }
}
