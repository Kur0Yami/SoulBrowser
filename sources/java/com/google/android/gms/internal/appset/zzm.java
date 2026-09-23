package com.google.android.gms.internal.appset;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzm implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzg zzgVar = (zzg) ((zzd) obj).getService();
        com.google.android.gms.appset.zza zzaVar = new com.google.android.gms.appset.zza(null, null);
        zzo zzoVar = new zzo((TaskCompletionSource) obj2);
        zzgVar.getClass();
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.appset.internal.IAppSetService");
        int i = zzc.f9430a;
        obtain.writeInt(1);
        zzaVar.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(zzoVar);
        Parcel obtain2 = Parcel.obtain();
        try {
            zzgVar.f9429c.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
