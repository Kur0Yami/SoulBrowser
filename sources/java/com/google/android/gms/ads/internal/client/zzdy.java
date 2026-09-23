package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdy extends zzbcb implements zzea {
    public zzdy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zze() {
        Parcel f2 = f2(1, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzf() {
        Parcel f2 = f2(2, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final List zzg() {
        Parcel f2 = f2(3, I1());
        ArrayList createTypedArrayList = f2.createTypedArrayList(zzv.CREATOR);
        f2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final zzv zzh() {
        Parcel f2 = f2(4, I1());
        zzv zzvVar = (zzv) zzbcd.b(f2, zzv.CREATOR);
        f2.recycle();
        return zzvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final Bundle zzi() {
        Parcel f2 = f2(5, I1());
        Bundle bundle = (Bundle) zzbcd.b(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzj() {
        Parcel f2 = f2(6, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }
}
