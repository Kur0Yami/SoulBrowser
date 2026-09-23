package com.google.android.gms.internal.p001authapiphone;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zza implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f9440c;

    public zza(IBinder iBinder) {
        this.f9440c = iBinder;
    }

    public static Parcel I1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9440c;
    }

    public final void f2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f9440c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
