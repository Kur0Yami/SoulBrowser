package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbux extends zzbcc implements zzbuy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4910c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [com.google.android.gms.internal.ads.zzbuj] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.google.android.gms.internal.ads.zzbup] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r5v15, types: [com.google.android.gms.internal.ads.zzbvl] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r5v33, types: [com.google.android.gms.internal.ads.zzbvl] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbvb zzbcbVar;
        ?? zzbcbVar2;
        ?? zzbcbVar3;
        zzbvb zzbvbVar = null;
        zzbuj zzbujVar = null;
        zzbus zzbuqVar = null;
        zzbum zzbukVar = null;
        zzbuv zzbutVar = null;
        zzbus zzbuqVar2 = null;
        zzbuv zzbutVar2 = null;
        zzbup zzbupVar = null;
        zzbum zzbukVar2 = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 10) {
                            if (i != 11) {
                                switch (i) {
                                    case 13:
                                        String readString = parcel.readString();
                                        String readString2 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder = parcel.readStrongBinder();
                                        if (readStrongBinder != null) {
                                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface instanceof zzbum) {
                                                zzbukVar2 = (zzbum) queryLocalInterface;
                                            } else {
                                                zzbukVar2 = new zzbuk(readStrongBinder);
                                            }
                                        }
                                        zzbum zzbumVar = zzbukVar2;
                                        zzbtf c5 = zzbte.c5(parcel.readStrongBinder());
                                        com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).j2(readString, readString2, zzmVar, I1, zzbumVar, c5, zzrVar);
                                        parcel2.writeNoException();
                                        return true;
                                    case 14:
                                        String readString3 = parcel.readString();
                                        String readString4 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                                        if (readStrongBinder2 != null) {
                                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                            if (queryLocalInterface2 instanceof zzbup) {
                                                zzbupVar = (zzbup) queryLocalInterface2;
                                            } else {
                                                zzbcbVar2 = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                                zzbtf c52 = zzbte.c5(parcel.readStrongBinder());
                                                zzbcd.f(parcel);
                                                ((zzbvl) this).s1(readString3, readString4, zzmVar2, I12, zzbcbVar2, c52);
                                                parcel2.writeNoException();
                                                return true;
                                            }
                                        }
                                        zzbcbVar2 = zzbupVar;
                                        zzbtf c522 = zzbte.c5(parcel.readStrongBinder());
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).s1(readString3, readString4, zzmVar2, I12, zzbcbVar2, c522);
                                        parcel2.writeNoException();
                                        return true;
                                    case 15:
                                        boolean S2 = ((zzbvl) this).S2(a.g(parcel, parcel));
                                        parcel2.writeNoException();
                                        parcel2.writeInt(S2 ? 1 : 0);
                                        return true;
                                    case 16:
                                        String readString5 = parcel.readString();
                                        String readString6 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                                        if (readStrongBinder3 != null) {
                                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface3 instanceof zzbuv) {
                                                zzbutVar2 = (zzbuv) queryLocalInterface3;
                                            } else {
                                                zzbutVar2 = new zzbut(readStrongBinder3);
                                            }
                                        }
                                        zzbuv zzbuvVar = zzbutVar2;
                                        zzbtf c53 = zzbte.c5(parcel.readStrongBinder());
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).D1(readString5, readString6, zzmVar3, I13, zzbuvVar, c53);
                                        parcel2.writeNoException();
                                        return true;
                                    case 17:
                                        boolean i4 = ((zzbvl) this).i4(a.g(parcel, parcel));
                                        parcel2.writeNoException();
                                        parcel2.writeInt(i4 ? 1 : 0);
                                        return true;
                                    case 18:
                                        String readString7 = parcel.readString();
                                        String readString8 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                                        if (readStrongBinder4 != null) {
                                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface4 instanceof zzbus) {
                                                zzbuqVar2 = (zzbus) queryLocalInterface4;
                                            } else {
                                                zzbuqVar2 = new zzbuq(readStrongBinder4);
                                            }
                                        }
                                        zzbus zzbusVar = zzbuqVar2;
                                        zzbtf c54 = zzbte.c5(parcel.readStrongBinder());
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).N(readString7, readString8, zzmVar4, I14, zzbusVar, c54, null);
                                        parcel2.writeNoException();
                                        return true;
                                    case 19:
                                        String readString9 = parcel.readString();
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).j = readString9;
                                        parcel2.writeNoException();
                                        return true;
                                    case 20:
                                        String readString10 = parcel.readString();
                                        String readString11 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder5 = parcel.readStrongBinder();
                                        if (readStrongBinder5 != null) {
                                            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface5 instanceof zzbuv) {
                                                zzbutVar = (zzbuv) queryLocalInterface5;
                                            } else {
                                                zzbutVar = new zzbut(readStrongBinder5);
                                            }
                                        }
                                        zzbuv zzbuvVar2 = zzbutVar;
                                        zzbtf c55 = zzbte.c5(parcel.readStrongBinder());
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).W3(readString10, readString11, zzmVar5, I15, zzbuvVar2, c55);
                                        parcel2.writeNoException();
                                        return true;
                                    case 21:
                                        String readString12 = parcel.readString();
                                        String readString13 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder6 = parcel.readStrongBinder();
                                        if (readStrongBinder6 != null) {
                                            IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface6 instanceof zzbum) {
                                                zzbukVar = (zzbum) queryLocalInterface6;
                                            } else {
                                                zzbukVar = new zzbuk(readStrongBinder6);
                                            }
                                        }
                                        zzbum zzbumVar2 = zzbukVar;
                                        zzbtf c56 = zzbte.c5(parcel.readStrongBinder());
                                        com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).m1(readString12, readString13, zzmVar6, I16, zzbumVar2, c56, zzrVar2);
                                        parcel2.writeNoException();
                                        return true;
                                    case 22:
                                        String readString14 = parcel.readString();
                                        String readString15 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder7 = parcel.readStrongBinder();
                                        if (readStrongBinder7 != null) {
                                            IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface7 instanceof zzbus) {
                                                zzbuqVar = (zzbus) queryLocalInterface7;
                                            } else {
                                                zzbuqVar = new zzbuq(readStrongBinder7);
                                            }
                                        }
                                        zzbus zzbusVar2 = zzbuqVar;
                                        zzbtf c57 = zzbte.c5(parcel.readStrongBinder());
                                        zzbjn zzbjnVar = (zzbjn) zzbcd.b(parcel, zzbjn.CREATOR);
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).N(readString14, readString15, zzmVar7, I17, zzbusVar2, c57, zzbjnVar);
                                        parcel2.writeNoException();
                                        return true;
                                    case ConnectionResult.API_DISABLED /* 23 */:
                                        String readString16 = parcel.readString();
                                        String readString17 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper I18 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                                        IBinder readStrongBinder8 = parcel.readStrongBinder();
                                        if (readStrongBinder8 != null) {
                                            IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                                            if (queryLocalInterface8 instanceof zzbuj) {
                                                zzbujVar = (zzbuj) queryLocalInterface8;
                                            } else {
                                                zzbcbVar3 = new zzbcb(readStrongBinder8, "com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                                                zzbtf c58 = zzbte.c5(parcel.readStrongBinder());
                                                zzbcd.f(parcel);
                                                ((zzbvl) this).H2(readString16, readString17, zzmVar8, I18, zzbcbVar3, c58);
                                                parcel2.writeNoException();
                                                return true;
                                            }
                                        }
                                        zzbcbVar3 = zzbujVar;
                                        zzbtf c582 = zzbte.c5(parcel.readStrongBinder());
                                        zzbcd.f(parcel);
                                        ((zzbvl) this).H2(readString16, readString17, zzmVar8, I18, zzbcbVar3, c582);
                                        parcel2.writeNoException();
                                        return true;
                                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                                        boolean q = ((zzbvl) this).q(a.g(parcel, parcel));
                                        parcel2.writeNoException();
                                        parcel2.writeInt(q ? 1 : 0);
                                        return true;
                                    default:
                                        return false;
                                }
                            }
                            parcel.createStringArray();
                            zzbcd.f(parcel);
                            parcel2.writeNoException();
                            return true;
                        }
                        IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                        zzbcd.f(parcel);
                        parcel2.writeNoException();
                        return true;
                    }
                    com.google.android.gms.ads.internal.client.zzed zzh = ((zzbvl) this).zzh();
                    parcel2.writeNoException();
                    zzbcd.e(parcel2, zzh);
                    return true;
                }
                zzbvn zzg = ((zzbvl) this).zzg();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzg);
                return true;
            }
            zzbvn zzf = ((zzbvl) this).zzf();
            parcel2.writeNoException();
            zzbcd.d(parcel2, zzf);
            return true;
        }
        IObjectWrapper I19 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
        String readString18 = parcel.readString();
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) zzbcd.b(parcel, creator);
        Bundle bundle2 = (Bundle) zzbcd.b(parcel, creator);
        com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
        IBinder readStrongBinder9 = parcel.readStrongBinder();
        if (readStrongBinder9 != null) {
            IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
            if (queryLocalInterface9 instanceof zzbvb) {
                zzbvbVar = (zzbvb) queryLocalInterface9;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder9, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbcd.f(parcel);
                ((zzbvl) this).O1(I19, readString18, bundle, bundle2, zzrVar3, zzbcbVar);
                parcel2.writeNoException();
                return true;
            }
        }
        zzbcbVar = zzbvbVar;
        zzbcd.f(parcel);
        ((zzbvl) this).O1(I19, readString18, bundle, bundle2, zzrVar3, zzbcbVar);
        parcel2.writeNoException();
        return true;
    }
}
