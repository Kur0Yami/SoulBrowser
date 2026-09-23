package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbsz;

/* loaded from: classes.dex */
public abstract class zzcx extends zzbcc implements zzcy {
    public zzcx() {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbcb, com.google.android.gms.ads.internal.client.zzcy] */
    public static zzcy asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        if (queryLocalInterface instanceof zzcy) {
            return (zzcy) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzbsz adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            zzbcd.e(parcel2, adapterCreator);
            return true;
        }
        zzfc liteSdkVersion = getLiteSdkVersion();
        parcel2.writeNoException();
        zzbcd.d(parcel2, liteSdkVersion);
        return true;
    }
}
