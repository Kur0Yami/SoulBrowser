package com.google.android.gms.fido.fido2;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzk implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzt zztVar = new zzt((TaskCompletionSource) obj2);
        com.google.android.gms.internal.fido.zzn zznVar = (com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService();
        Parcel I1 = zznVar.I1();
        ClassLoader classLoader = com.google.android.gms.internal.fido.zzc.f10284a;
        I1.writeStrongBinder(zztVar);
        I1.writeInt(0);
        zznVar.f2(2, I1);
    }
}
