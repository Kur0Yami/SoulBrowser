package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbc extends com.google.android.gms.internal.location.zzb implements zzbd {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f11583c = 0;

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i == 1) {
            T((Location) com.google.android.gms.internal.location.zzc.a(parcel, Location.CREATOR));
            return true;
        }
        return false;
    }
}
