package com.google.android.gms.internal.fido;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public class zza implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f10271c;
    public final String f;

    public zza(IBinder iBinder, String str) {
        this.f10271c = iBinder;
        this.f = str;
    }

    public final Parcel I1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f10271c;
    }

    public final void f2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f10271c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
