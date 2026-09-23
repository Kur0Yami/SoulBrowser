package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbop extends zzbcc implements zzboq {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4805c = 0;

    public zzbop() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzf();
        } else {
            String readString = parcel.readString();
            zzbcd.f(parcel);
            zze(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
