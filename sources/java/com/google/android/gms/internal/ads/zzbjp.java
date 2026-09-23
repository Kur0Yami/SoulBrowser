package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbjp extends zzbcb implements zzbjr {
    public zzbjp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final String zzb() {
        Parcel f2 = f2(2, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final ArrayList zzc() {
        Parcel f2 = f2(3, I1());
        ArrayList readArrayList = f2.readArrayList(zzbcd.f4538a);
        f2.recycle();
        return readArrayList;
    }
}
