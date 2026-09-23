package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzx implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzh zzhVar = (zzh) ((zzw) obj).getService();
        zzz zzzVar = new zzz((TaskCompletionSource) obj2);
        zzhVar.getClass();
        Parcel I1 = zza.I1();
        int i = zzc.f9443a;
        I1.writeStrongBinder(zzzVar);
        zzhVar.f2(1, I1);
    }
}
