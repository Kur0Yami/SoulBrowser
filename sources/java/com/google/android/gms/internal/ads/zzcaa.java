package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzcaa extends zzbcb implements zzcac {
    public zzcaa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzcac
    public final String zze() {
        Parcel f2 = f2(1, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzcac
    public final int zzf() {
        Parcel f2 = f2(2, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }
}
