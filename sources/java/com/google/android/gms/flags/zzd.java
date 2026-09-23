package com.google.android.gms.flags;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzd extends com.google.android.gms.internal.flags.zzb implements zze {
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.flags.zza, com.google.android.gms.flags.zze] */
    public static zze asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.flags.IFlagProvider");
        if (queryLocalInterface instanceof zze) {
            return (zze) queryLocalInterface;
        }
        return new com.google.android.gms.internal.flags.zza(iBinder);
    }

    @Override // com.google.android.gms.internal.flags.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            boolean z = false;
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        String stringFlagValue = getStringFlagValue(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(stringFlagValue);
                        return true;
                    }
                    long longFlagValue = getLongFlagValue(parcel.readString(), parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(longFlagValue);
                    return true;
                }
                int intFlagValue = getIntFlagValue(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(intFlagValue);
                return true;
            }
            String readString = parcel.readString();
            int i2 = com.google.android.gms.internal.flags.zzc.f10343a;
            if (parcel.readInt() != 0) {
                z = true;
            }
            boolean booleanFlagValue = getBooleanFlagValue(readString, z, parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(booleanFlagValue ? 1 : 0);
            return true;
        }
        init(IObjectWrapper.Stub.I1(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
