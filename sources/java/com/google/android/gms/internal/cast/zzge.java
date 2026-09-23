package com.google.android.gms.internal.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzge extends zzb implements zzgf {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 2:
                Status status = (Status) zzc.a(parcel, Status.CREATOR);
                zzgc zzgcVar = (zzgc) zzc.a(parcel, zzgc.CREATOR);
                zzc.d(parcel);
                w2(status, zzgcVar);
                return true;
            case 3:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 4:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 5:
                Status status2 = (Status) zzc.a(parcel, Status.CREATOR);
                zzc.d(parcel);
                U(status2);
                return true;
            case 6:
                parcel.createStringArrayList();
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 7:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 8:
                parcel.readInt();
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 9:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented");
            case 10:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented");
            case 11:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 12:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 13:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 14:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            case 15:
                zzc.d(parcel);
                throw new IllegalStateException("Not implemented.");
            default:
                return false;
        }
    }
}
