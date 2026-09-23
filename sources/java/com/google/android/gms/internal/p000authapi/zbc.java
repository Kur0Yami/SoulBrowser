package com.google.android.gms.internal.p000authapi;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;

/* loaded from: classes.dex */
public final class zbc {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9469a = 0;

    static {
        zbc.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static void c(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
        } else {
            throw new BadParcelableException(a.r(dataAvail, "Parcel data not fully consumed, unread size: ", new StringBuilder(String.valueOf(dataAvail).length() + 45)));
        }
    }
}
