package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzk implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzp zzpVar = new zzp((TaskCompletionSource) obj2);
        zzh zzhVar = (zzh) ((zzw) obj).getService();
        zzhVar.getClass();
        Parcel I1 = zza.I1();
        int i = zzc.f9443a;
        I1.writeStrongBinder(zzpVar);
        zzhVar.f2(4, I1);
    }
}
