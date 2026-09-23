package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzu implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzz zzzVar = new zzz((TaskCompletionSource) obj2);
        zzp zzpVar = (zzp) ((zzi) obj).getService();
        Parcel I1 = zzpVar.I1();
        zzc.d(I1, zzzVar);
        I1.writeInt(0);
        zzpVar.r2(4, I1);
    }
}
