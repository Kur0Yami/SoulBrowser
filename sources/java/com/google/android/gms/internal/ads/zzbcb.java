package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public class zzbcb implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f4537c;
    public final String f;

    public zzbcb(IBinder iBinder, String str) {
        this.f4537c = iBinder;
        this.f = str;
    }

    public final Parcel I1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4537c;
    }

    public final Parcel f2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f4537c.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }

    public final void r2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f4537c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final void v2(int i, Parcel parcel) {
        try {
            this.f4537c.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
