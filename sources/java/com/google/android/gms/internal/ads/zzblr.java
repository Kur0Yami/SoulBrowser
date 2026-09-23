package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzblr extends zzbcc implements zzbls {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v147 */
    /* JADX WARN: Type inference failed for: r4v90 */
    /* JADX WARN: Type inference failed for: r4v93, types: [com.google.android.gms.internal.ads.zzblp] */
    /* JADX WARN: Type inference failed for: r4v95 */
    /* JADX WARN: Type inference failed for: r5v12, types: [com.google.android.gms.internal.ads.zzdsa] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        String S;
        ?? zzbcbVar;
        switch (i) {
            case 2:
                String b = ((zzdsa) this).g.b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 3:
                List c2 = ((zzdsa) this).g.c();
                parcel2.writeNoException();
                parcel2.writeList(c2);
                return true;
            case 4:
                String f = ((zzdsa) this).g.f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 5:
                zzbjy m = ((zzdsa) this).g.m();
                parcel2.writeNoException();
                zzbcd.e(parcel2, m);
                return true;
            case 6:
                String h = ((zzdsa) this).g.h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 7:
                String n = ((zzdsa) this).g.n();
                parcel2.writeNoException();
                parcel2.writeString(n);
                return true;
            case 8:
                double l = ((zzdsa) this).g.l();
                parcel2.writeNoException();
                parcel2.writeDouble(l);
                return true;
            case 9:
                String k = ((zzdsa) this).g.k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                return true;
            case 10:
                zzdnm zzdnmVar = ((zzdsa) this).g;
                synchronized (zzdnmVar) {
                    S = zzdnmVar.S("price");
                }
                parcel2.writeNoException();
                parcel2.writeString(S);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzed U = ((zzdsa) this).g.U();
                parcel2.writeNoException();
                zzbcd.e(parcel2, U);
                return true;
            case 12:
                String str = ((zzdsa) this).f6086c;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 13:
                ((zzdsa) this).zzp();
                parcel2.writeNoException();
                return true;
            case 14:
                zzbjr V = ((zzdsa) this).g.V();
                parcel2.writeNoException();
                zzbcd.e(parcel2, V);
                return true;
            case 15:
                Bundle bundle = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdsa) this).R3(bundle);
                parcel2.writeNoException();
                return true;
            case 16:
                Bundle bundle2 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                boolean r = ((zzdsa) this).f.r(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(r ? 1 : 0);
                return true;
            case 17:
                Bundle bundle3 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdsa) this).A2(bundle3);
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper zzu = ((zzdsa) this).zzu();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzu);
                return true;
            case 19:
                IObjectWrapper j = ((zzdsa) this).g.j();
                parcel2.writeNoException();
                zzbcd.e(parcel2, j);
                return true;
            case 20:
                Bundle g = ((zzdsa) this).g.g();
                parcel2.writeNoException();
                zzbcd.d(parcel2, g);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbcbVar = 0;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    if (queryLocalInterface instanceof zzblp) {
                        zzbcbVar = (zzblp) queryLocalInterface;
                    } else {
                        zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    }
                }
                zzbcd.f(parcel);
                ((zzdsa) this).E1(zzbcbVar);
                parcel2.writeNoException();
                return true;
            case 22:
                ((zzdsa) this).g();
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                List zzz = ((zzdsa) this).zzz();
                parcel2.writeNoException();
                parcel2.writeList(zzz);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                boolean zzA = ((zzdsa) this).zzA();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzA ? 1 : 0);
                return true;
            case 25:
                com.google.android.gms.ads.internal.client.zzdj zzb = com.google.android.gms.ads.internal.client.zzdi.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                ((zzdsa) this).l1(zzb);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzdf zzb2 = com.google.android.gms.ads.internal.client.zzde.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                ((zzdsa) this).X2(zzb2);
                parcel2.writeNoException();
                return true;
            case 27:
                ((zzdsa) this).zzD();
                parcel2.writeNoException();
                return true;
            case 28:
                ((zzdsa) this).zzE();
                parcel2.writeNoException();
                return true;
            case 29:
                zzbjv zzF = ((zzdsa) this).zzF();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzF);
                return true;
            case 30:
                boolean x = ((zzdsa) this).x();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(x ? 1 : 0);
                return true;
            case 31:
                com.google.android.gms.ads.internal.client.zzea zzH = ((zzdsa) this).zzH();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzH);
                return true;
            case 32:
                com.google.android.gms.ads.internal.client.zzdt zzb3 = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                ((zzdsa) this).h1(zzb3);
                parcel2.writeNoException();
                return true;
            case 33:
                Bundle bundle4 = (Bundle) zzbcd.b(parcel, Bundle.CREATOR);
                zzbcd.f(parcel);
                ((zzdsa) this).N2(bundle4);
                parcel2.writeNoException();
                return true;
            case 34:
                long m2 = ((zzdsa) this).m();
                parcel2.writeNoException();
                parcel2.writeLong(m2);
                return true;
            case 35:
                long readLong = parcel.readLong();
                zzbcd.f(parcel);
                ((zzdsa) this).N0(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
