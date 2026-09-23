package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.location.LocationSettingsResult;

/* loaded from: classes3.dex */
public abstract class zzan extends zzb implements zzao {
    @Override // com.google.android.gms.internal.location.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i == 1) {
            LocationSettingsResult locationSettingsResult = (LocationSettingsResult) zzc.a(parcel, LocationSettingsResult.CREATOR);
            zzay zzayVar = (zzay) this;
            zzayVar.f10354c.setResult(locationSettingsResult);
            zzayVar.f10354c = null;
            return true;
        }
        return false;
    }
}
