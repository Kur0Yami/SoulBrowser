package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbkm extends zzbcc implements zzbkn {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        String S;
        switch (i) {
            case 2:
                ObjectWrapper objectWrapper = new ObjectWrapper(((zzdrt) this).f);
                parcel2.writeNoException();
                zzbcd.e(parcel2, objectWrapper);
                return true;
            case 3:
                String b = ((zzdrt) this).g.b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 4:
                List c2 = ((zzdrt) this).g.c();
                parcel2.writeNoException();
                parcel2.writeList(c2);
                return true;
            case 5:
                String f = ((zzdrt) this).g.f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 6:
                zzbjy m = ((zzdrt) this).g.m();
                parcel2.writeNoException();
                zzbcd.e(parcel2, m);
                return true;
            case 7:
                String h = ((zzdrt) this).g.h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 8:
                double l = ((zzdrt) this).g.l();
                parcel2.writeNoException();
                parcel2.writeDouble(l);
                return true;
            case 9:
                String k = ((zzdrt) this).g.k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                return true;
            case 10:
                zzdnm zzdnmVar = ((zzdrt) this).g;
                synchronized (zzdnmVar) {
                    S = zzdnmVar.S("price");
                }
                parcel2.writeNoException();
                parcel2.writeString(S);
                return true;
            case 11:
                Bundle g = ((zzdrt) this).g.g();
                parcel2.writeNoException();
                zzbcd.d(parcel2, g);
                return true;
            case 12:
                ((zzdrt) this).f.q();
                parcel2.writeNoException();
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzed U = ((zzdrt) this).g.U();
                parcel2.writeNoException();
                zzbcd.e(parcel2, U);
                return true;
            case 14:
                Bundle bundle = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdrt) this).f.p(bundle);
                parcel2.writeNoException();
                return true;
            case 15:
                Bundle bundle2 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                boolean r = ((zzdrt) this).f.r(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(r ? 1 : 0);
                return true;
            case 16:
                Bundle bundle3 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdrt) this).f.s(bundle3);
                parcel2.writeNoException();
                return true;
            case 17:
                zzbjr V = ((zzdrt) this).g.V();
                parcel2.writeNoException();
                zzbcd.e(parcel2, V);
                return true;
            case 18:
                IObjectWrapper j = ((zzdrt) this).g.j();
                parcel2.writeNoException();
                zzbcd.e(parcel2, j);
                return true;
            case 19:
                String str = ((zzdrt) this).f6076c;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
