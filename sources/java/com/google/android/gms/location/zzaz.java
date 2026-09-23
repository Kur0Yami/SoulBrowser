package com.google.android.gms.location;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzaz extends com.google.android.gms.internal.location.zzb implements zzba {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f11582c = 0;

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            r1((LocationAvailability) com.google.android.gms.internal.location.zzc.a(parcel, LocationAvailability.CREATOR));
            return true;
        }
        i0((LocationResult) com.google.android.gms.internal.location.zzc.a(parcel, LocationResult.CREATOR));
        return true;
    }
}
