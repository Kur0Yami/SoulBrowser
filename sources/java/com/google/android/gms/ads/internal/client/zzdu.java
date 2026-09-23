package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzdu extends zzbcb implements zzdw {
    public zzdu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTester");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdw
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, iObjectWrapper2);
        r2(1, I1);
    }
}
