package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zba implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f9449c;
    public final String f;

    public zba(IBinder iBinder, String str) {
        this.f9449c = iBinder;
        this.f = str;
    }

    public final Parcel I1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9449c;
    }

    public final void f2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f9449c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
