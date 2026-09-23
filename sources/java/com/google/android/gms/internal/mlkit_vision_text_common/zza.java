package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public class zza implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f11120c;
    public final String f;

    public zza(IBinder iBinder, String str) {
        this.f11120c = iBinder;
        this.f = str;
    }

    public final Parcel I1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f11120c;
    }

    public final Parcel f2(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f11120c.transact(i, parcel, obtain, 0);
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
            this.f11120c.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
