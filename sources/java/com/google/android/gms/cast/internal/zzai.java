package com.google.android.gms.cast.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;

/* loaded from: classes.dex */
public abstract class zzai extends com.google.android.gms.internal.cast.zzb implements zzaj {
    public zzai() {
        super("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        boolean z = false;
        switch (i) {
            case 1:
                int readInt = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzb(readInt);
                return true;
            case 2:
                ApplicationMetadata applicationMetadata = (ApplicationMetadata) com.google.android.gms.internal.cast.zzc.a(parcel, ApplicationMetadata.CREATOR);
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                com.google.android.gms.internal.cast.zzc.d(parcel);
                z4(applicationMetadata, readString, readString2, z);
                return true;
            case 3:
                int readInt2 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzf(readInt2);
                return true;
            case 4:
                parcel.readString();
                parcel.readDouble();
                int i2 = com.google.android.gms.internal.cast.zzc.f9645a;
                parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                e2();
                return true;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                G0(readString3, readString4);
                return true;
            case 6:
                String readString5 = parcel.readString();
                byte[] createByteArray = parcel.createByteArray();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                j0(readString5, createByteArray);
                return true;
            case 7:
                int readInt3 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                e(readInt3);
                return true;
            case 8:
                int readInt4 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                p(readInt4);
                return true;
            case 9:
                int readInt5 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                d(readInt5);
                return true;
            case 10:
                parcel.readString();
                long readLong = parcel.readLong();
                int readInt6 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                o3(readInt6, readLong);
                return true;
            case 11:
                parcel.readString();
                long readLong2 = parcel.readLong();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzp(readLong2);
                return true;
            case 12:
                zza zzaVar = (zza) com.google.android.gms.internal.cast.zzc.a(parcel, zza.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                b1(zzaVar);
                return true;
            case 13:
                zzac zzacVar = (zzac) com.google.android.gms.internal.cast.zzc.a(parcel, zzac.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                T2(zzacVar);
                return true;
            case 14:
                int readInt7 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzc(readInt7);
                return true;
            case 15:
                int readInt8 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                f(readInt8);
                return true;
            default:
                return false;
        }
    }
}
