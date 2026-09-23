package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzbtb extends zzbcc implements zzbtc {
    public zzbtb() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r3v19, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r3v34, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbzx zzbzxVar;
        zzbkt zzbktVar;
        zzbtf zzbtfVar = null;
        zzbtf zzbtfVar2 = null;
        zzbtf zzbtdVar = null;
        zzbtf zzbtfVar3 = null;
        zzbpq zzbpqVar = null;
        zzbtf zzbtfVar4 = null;
        r3 = null;
        zzbks zzbksVar = null;
        zzbtf zzbtdVar2 = null;
        zzbzx zzbzxVar2 = null;
        zzbtf zzbtdVar3 = null;
        zzbtf zzbtdVar4 = null;
        zzbtf zzbtdVar5 = null;
        switch (i) {
            case 1:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface instanceof zzbtf) {
                        zzbtfVar = (zzbtf) queryLocalInterface;
                    } else {
                        zzbtfVar = new zzbtd(readStrongBinder);
                    }
                }
                zzbtf zzbtfVar5 = zzbtfVar;
                zzbcd.f(parcel);
                ((zzbua) this).q2(I1, zzrVar, zzmVar, readString, null, zzbtfVar5);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzf = ((zzbua) this).zzf();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzf);
                return true;
            case 3:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface2 instanceof zzbtf) {
                        zzbtdVar5 = (zzbtf) queryLocalInterface2;
                    } else {
                        zzbtdVar5 = new zzbtd(readStrongBinder2);
                    }
                }
                zzbtf zzbtfVar6 = zzbtdVar5;
                zzbcd.f(parcel);
                ((zzbua) this).p2(I12, zzmVar2, readString2, null, zzbtfVar6);
                parcel2.writeNoException();
                return true;
            case 4:
                ((zzbua) this).zzh();
                parcel2.writeNoException();
                return true;
            case 5:
                ((zzbua) this).zzi();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface3 instanceof zzbtf) {
                        zzbtdVar4 = (zzbtf) queryLocalInterface3;
                    } else {
                        zzbtdVar4 = new zzbtd(readStrongBinder3);
                    }
                }
                zzbtf zzbtfVar7 = zzbtdVar4;
                zzbcd.f(parcel);
                ((zzbua) this).q2(I13, zzrVar2, zzmVar3, readString3, readString4, zzbtfVar7);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface4 instanceof zzbtf) {
                        zzbtdVar3 = (zzbtf) queryLocalInterface4;
                    } else {
                        zzbtdVar3 = new zzbtd(readStrongBinder4);
                    }
                }
                zzbtf zzbtfVar8 = zzbtdVar3;
                zzbcd.f(parcel);
                ((zzbua) this).p2(I14, zzmVar4, readString5, readString6, zzbtfVar8);
                parcel2.writeNoException();
                return true;
            case 8:
                ((zzbua) this).zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                ((zzbua) this).zzm();
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    if (queryLocalInterface5 instanceof zzbzx) {
                        zzbzxVar2 = (zzbzx) queryLocalInterface5;
                    } else {
                        zzbzxVar2 = new zzbcb(readStrongBinder5, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    }
                }
                String readString7 = parcel.readString();
                zzbcd.f(parcel);
                ((zzbua) this).j1(I15, zzmVar5, zzbzxVar2, readString7);
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString8 = parcel.readString();
                zzbcd.f(parcel);
                ((zzbua) this).g5(zzmVar6, readString8);
                parcel2.writeNoException();
                return true;
            case 12:
                ((zzbua) this).zzp();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzq = ((zzbua) this).zzq();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzq ? 1 : 0);
                return true;
            case 14:
                IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface6 instanceof zzbtf) {
                        zzbtdVar2 = (zzbtf) queryLocalInterface6;
                    } else {
                        zzbtdVar2 = new zzbtd(readStrongBinder6);
                    }
                }
                zzbtf zzbtfVar9 = zzbtdVar2;
                zzbjn zzbjnVar = (zzbjn) zzbcd.b(parcel, zzbjn.CREATOR);
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzbcd.f(parcel);
                ((zzbua) this).C1(I16, zzmVar7, readString9, readString10, zzbtfVar9, zzbjnVar, createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeStrongBinder(null);
                return true;
            case 16:
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzbcd.f4538a;
                parcel2.writeStrongBinder(null);
                return true;
            case 17:
                Bundle bundle = new Bundle();
                parcel2.writeNoException();
                zzbcd.d(parcel2, bundle);
                return true;
            case 18:
                Bundle bundle2 = new Bundle();
                parcel2.writeNoException();
                zzbcd.d(parcel2, bundle2);
                return true;
            case 19:
                Bundle bundle3 = new Bundle();
                parcel2.writeNoException();
                zzbcd.d(parcel2, bundle3);
                return true;
            case 20:
                com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString11 = parcel.readString();
                parcel.readString();
                zzbcd.f(parcel);
                ((zzbua) this).g5(zzmVar8, readString11);
                parcel2.writeNoException();
                return true;
            case 21:
                ((zzbua) this).t(a.g(parcel, parcel));
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                ClassLoader classLoader4 = zzbcd.f4538a;
                parcel2.writeInt(0);
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    if (queryLocalInterface7 instanceof zzbzx) {
                        zzbzxVar = (zzbzx) queryLocalInterface7;
                    } else {
                        zzbzxVar = new zzbcb(readStrongBinder7, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
                    }
                } else {
                    zzbzxVar = null;
                }
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzbcd.f(parcel);
                ((zzbua) this).u2(I17, zzbzxVar, createStringArrayList2);
                throw null;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                zzbuc zzbucVar = ((zzbua) this).f;
                if (zzbucVar != null && (zzbktVar = zzbucVar.f4904c) != null) {
                    zzbksVar = zzbktVar.f4752a;
                }
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzbksVar);
                return true;
            case 25:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                ((zzbua) this).h2(a2);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzed zzB = ((zzbua) this).zzB();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzB);
                return true;
            case 27:
                zzbto zzC = ((zzbua) this).zzC();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzC);
                return true;
            case 28:
                IObjectWrapper I18 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar9 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString12 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface8 instanceof zzbtf) {
                        zzbtfVar4 = (zzbtf) queryLocalInterface8;
                    } else {
                        zzbtfVar4 = new zzbtd(readStrongBinder8);
                    }
                }
                zzbcd.f(parcel);
                ((zzbua) this).M(I18, zzmVar9, readString12, zzbtfVar4);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                ((zzbua) this).a2(a.g(parcel, parcel));
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper I19 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    if (queryLocalInterface9 instanceof zzbpq) {
                        zzbpqVar = (zzbpq) queryLocalInterface9;
                    } else {
                        zzbpqVar = new zzbcb(readStrongBinder9, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    }
                }
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbpw.CREATOR);
                zzbcd.f(parcel);
                ((zzbua) this).W0(I19, zzbpqVar, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper I110 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar10 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString13 = parcel.readString();
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface10 instanceof zzbtf) {
                        zzbtfVar3 = (zzbtf) queryLocalInterface10;
                    } else {
                        zzbtfVar3 = new zzbtd(readStrongBinder10);
                    }
                }
                zzbcd.f(parcel);
                ((zzbua) this).j4(I110, zzmVar10, readString13, zzbtfVar3);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbvn zzH = ((zzbua) this).zzH();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzH);
                return true;
            case 34:
                zzbvn r = ((zzbua) this).r();
                parcel2.writeNoException();
                zzbcd.d(parcel2, r);
                return true;
            case 35:
                IObjectWrapper I111 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar11 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface11 instanceof zzbtf) {
                        zzbtdVar = (zzbtf) queryLocalInterface11;
                    } else {
                        zzbtdVar = new zzbtd(readStrongBinder11);
                    }
                }
                zzbtf zzbtfVar10 = zzbtdVar;
                zzbcd.f(parcel);
                ((zzbua) this).R0(I111, zzrVar3, zzmVar11, readString14, readString15, zzbtfVar10);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbti m = ((zzbua) this).m();
                parcel2.writeNoException();
                zzbcd.e(parcel2, m);
                return true;
            case 37:
                ((zzbua) this).J0(a.g(parcel, parcel));
                parcel2.writeNoException();
                return true;
            case 38:
                IObjectWrapper I112 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar12 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString16 = parcel.readString();
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface12 instanceof zzbtf) {
                        zzbtfVar2 = (zzbtf) queryLocalInterface12;
                    } else {
                        zzbtfVar2 = new zzbtd(readStrongBinder12);
                    }
                }
                zzbcd.f(parcel);
                ((zzbua) this).a0(I112, zzmVar12, readString16, zzbtfVar2);
                parcel2.writeNoException();
                return true;
            case 39:
                ((zzbua) this).y2(a.g(parcel, parcel));
                parcel2.writeNoException();
                return true;
        }
    }
}
