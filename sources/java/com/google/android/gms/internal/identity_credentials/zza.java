package com.google.android.gms.internal.identity_credentials;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public class zza implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f10344c;

    public zza(IBinder iBinder) {
        this.f10344c = iBinder;
    }

    public final void I1(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f10344c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f10344c;
    }
}
