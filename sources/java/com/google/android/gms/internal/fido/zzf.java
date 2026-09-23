package com.google.android.gms.internal.fido;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class zzf extends zzb implements zzg {
    @Override // com.google.android.gms.internal.fido.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            zzc.b(parcel);
            E(status);
        } else {
            ArrayList readArrayList = parcel.readArrayList(zzc.f10284a);
            zzc.b(parcel);
            D0(readArrayList);
        }
        parcel2.writeNoException();
        return true;
    }
}
