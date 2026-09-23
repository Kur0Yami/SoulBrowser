package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzbk implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzbn zzbnVar = new zzbn((TaskCompletionSource) obj2);
        zzbh zzbhVar = (zzbh) ((zzbe) obj).getService();
        Parcel I1 = zzbhVar.I1();
        zzc.d(I1, zzbnVar);
        zzbhVar.r2(3, I1);
    }
}
