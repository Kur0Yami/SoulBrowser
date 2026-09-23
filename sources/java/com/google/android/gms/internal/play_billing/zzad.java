package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public abstract class zzad extends zzat implements zzae {
    @Override // com.google.android.gms.internal.play_billing.zzat
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) zzau.a(parcel);
        zzat.f2(parcel);
        b(bundle);
        throw null;
    }
}
