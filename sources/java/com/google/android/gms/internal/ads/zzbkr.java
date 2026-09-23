package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbkr extends zzbcc implements zzbks {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                String readString = parcel.readString();
                zzbcd.f(parcel);
                String zze = ((zzdry) this).zze(readString);
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzbjy zzf = ((zzdry) this).zzf(readString2);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzf);
                return true;
            case 3:
                List zzg = ((zzdry) this).zzg();
                parcel2.writeNoException();
                parcel2.writeStringList(zzg);
                return true;
            case 4:
                String o = ((zzdry) this).f.o();
                parcel2.writeNoException();
                parcel2.writeString(o);
                return true;
            case 5:
                String readString3 = parcel.readString();
                zzbcd.f(parcel);
                ((zzdry) this).zzi(readString3);
                parcel2.writeNoException();
                return true;
            case 6:
                ((zzdry) this).zzj();
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzed U = ((zzdry) this).f.U();
                parcel2.writeNoException();
                zzbcd.e(parcel2, U);
                return true;
            case 8:
                ((zzdry) this).zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper zzm = ((zzdry) this).zzm();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzm);
                return true;
            case 10:
                boolean zzn = ((zzdry) this).zzn(a.g(parcel, parcel));
                parcel2.writeNoException();
                parcel2.writeInt(zzn ? 1 : 0);
                return true;
            case 11:
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeStrongBinder(null);
                return true;
            case 12:
                boolean l0 = ((zzdry) this).l0();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(l0 ? 1 : 0);
                return true;
            case 13:
                boolean zzp = ((zzdry) this).zzp();
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzbcd.f4538a;
                parcel2.writeInt(zzp ? 1 : 0);
                return true;
            case 14:
                ((zzdry) this).H1(a.g(parcel, parcel));
                parcel2.writeNoException();
                return true;
            case 15:
                ((zzdry) this).zzr();
                parcel2.writeNoException();
                return true;
            case 16:
                zzbjv zzs = ((zzdry) this).zzs();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzs);
                return true;
            case 17:
                boolean q = ((zzdry) this).q(a.g(parcel, parcel));
                parcel2.writeNoException();
                parcel2.writeInt(q ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
