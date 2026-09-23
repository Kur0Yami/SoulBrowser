package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbko extends zzbcc implements zzbkp {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbjy zzbjyVar;
        switch (i) {
            case 2:
                ObjectWrapper objectWrapper = new ObjectWrapper(((zzdrv) this).f);
                parcel2.writeNoException();
                zzbcd.e(parcel2, objectWrapper);
                return true;
            case 3:
                String b = ((zzdrv) this).g.b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 4:
                List c2 = ((zzdrv) this).g.c();
                parcel2.writeNoException();
                parcel2.writeList(c2);
                return true;
            case 5:
                String f = ((zzdrv) this).g.f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 6:
                zzdnm zzdnmVar = ((zzdrv) this).g;
                synchronized (zzdnmVar) {
                    zzbjyVar = zzdnmVar.t;
                }
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzbjyVar);
                return true;
            case 7:
                String h = ((zzdrv) this).g.h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 8:
                String n = ((zzdrv) this).g.n();
                parcel2.writeNoException();
                parcel2.writeString(n);
                return true;
            case 9:
                Bundle g = ((zzdrv) this).g.g();
                parcel2.writeNoException();
                zzbcd.d(parcel2, g);
                return true;
            case 10:
                ((zzdrv) this).f.q();
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzed U = ((zzdrv) this).g.U();
                parcel2.writeNoException();
                zzbcd.e(parcel2, U);
                return true;
            case 12:
                Bundle bundle = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdrv) this).f.p(bundle);
                parcel2.writeNoException();
                return true;
            case 13:
                Bundle bundle2 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                boolean r = ((zzdrv) this).f.r(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(r ? 1 : 0);
                return true;
            case 14:
                Bundle bundle3 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdrv) this).f.s(bundle3);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbjr V = ((zzdrv) this).g.V();
                parcel2.writeNoException();
                zzbcd.e(parcel2, V);
                return true;
            case 16:
                IObjectWrapper j = ((zzdrv) this).g.j();
                parcel2.writeNoException();
                zzbcd.e(parcel2, j);
                return true;
            case 17:
                String str = ((zzdrv) this).f6079c;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
