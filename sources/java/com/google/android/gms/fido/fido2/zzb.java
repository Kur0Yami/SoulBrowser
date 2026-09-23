package com.google.android.gms.fido.fido2;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzb implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzh zzhVar = new zzh((TaskCompletionSource) obj2);
        com.google.android.gms.internal.fido.zzs zzsVar = (com.google.android.gms.internal.fido.zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService();
        Parcel I1 = zzsVar.I1();
        ClassLoader classLoader = com.google.android.gms.internal.fido.zzc.f10284a;
        I1.writeStrongBinder(zzhVar);
        com.google.android.gms.internal.fido.zzc.c(I1, null);
        zzsVar.f2(1, I1);
    }
}
