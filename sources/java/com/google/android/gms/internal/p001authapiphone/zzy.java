package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzy implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzh zzhVar = (zzh) ((zzw) obj).getService();
        zzaa zzaaVar = new zzaa((TaskCompletionSource) obj2);
        zzhVar.getClass();
        Parcel I1 = zza.I1();
        I1.writeString(null);
        int i = zzc.f9443a;
        I1.writeStrongBinder(zzaaVar);
        zzhVar.f2(2, I1);
    }
}
