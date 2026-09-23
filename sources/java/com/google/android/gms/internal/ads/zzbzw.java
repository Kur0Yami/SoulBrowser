package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbzw extends zzbcc implements zzbzx {
    public zzbzw() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                u(I1);
                break;
            case 2:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzbcd.f(parcel);
                zzf(I12, readInt);
                break;
            case 3:
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzg(I13);
                break;
            case 4:
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                y(I14);
                break;
            case 5:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                q3(I15);
                break;
            case 6:
                IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzj(I16);
                break;
            case 7:
                IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbzy zzbzyVar = (zzbzy) zzbcd.b(parcel, zzbzy.CREATOR);
                zzbcd.f(parcel);
                v3(I17, zzbzyVar);
                break;
            case 8:
                IObjectWrapper I18 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                O4(I18);
                break;
            case 9:
                IObjectWrapper I19 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzbcd.f(parcel);
                B1(I19, readInt2);
                break;
            case 10:
                IObjectWrapper I110 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzn(I110);
                break;
            case 11:
                IObjectWrapper I111 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                o0(I111);
                break;
            case 12:
                zzbcd.f(parcel);
                break;
            case 13:
                IObjectWrapper I112 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                s2(I112);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
