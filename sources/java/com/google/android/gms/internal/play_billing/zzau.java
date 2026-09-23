package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class zzau {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11446a = 0;

    static {
        zzau.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel) {
        Parcelable.Creator creator = Bundle.CREATOR;
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, zzat zzatVar) {
        parcel.writeStrongBinder(zzatVar.asBinder());
    }
}
