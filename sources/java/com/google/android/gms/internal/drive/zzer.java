package com.google.android.gms.internal.drive;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzer extends zzb implements zzeq {
    @Override // com.google.android.gms.internal.drive.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                W2((zzfl) zzc.a(parcel, zzfl.CREATOR));
                break;
            case 2:
                I2((zzft) zzc.a(parcel, zzft.CREATOR));
                break;
            case 3:
                s4((zzfn) zzc.a(parcel, zzfn.CREATOR));
                break;
            case 4:
                Q1((zzfy) zzc.a(parcel, zzfy.CREATOR));
                break;
            case 5:
                S1((zzfh) zzc.a(parcel, zzfh.CREATOR));
                break;
            case 6:
                r3((Status) zzc.a(parcel, Status.CREATOR));
                break;
            case 7:
                onSuccess();
                break;
            case 8:
                Z3((zzfv) zzc.a(parcel, zzfv.CREATOR));
                break;
            case 9:
                break;
            case 10:
            case 19:
            default:
                return false;
            case 11:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    break;
                }
                break;
            case 12:
                break;
            case 13:
                L0((zzga) zzc.a(parcel, zzga.CREATOR));
                break;
            case 14:
                d3((zzfj) zzc.a(parcel, zzfj.CREATOR));
                break;
            case 15:
                int i2 = zzc.f10148a;
                parcel.readInt();
                break;
            case 16:
                break;
            case 17:
                break;
            case 18:
                break;
            case 20:
                break;
            case 21:
                break;
            case 22:
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
