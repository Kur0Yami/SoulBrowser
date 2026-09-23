package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzr implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzp zzpVar = (zzp) ((zzi) obj).getService();
        zzaa zzaaVar = new zzaa((TaskCompletionSource) obj2);
        Parcel I1 = zzpVar.I1();
        zzc.d(I1, zzaaVar);
        I1.writeInt(0);
        zzpVar.r2(6, I1);
    }
}
