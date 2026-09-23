package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbwq extends zzbcc implements zzbwr {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4955c = 0;

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                Intent intent = (Intent) zzbcd.b(parcel, Intent.CREATOR);
                zzbcd.f(parcel);
                ((zzeif) this).F(intent);
                break;
            case 2:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                ((zzeif) this).M4(I1, new com.google.android.gms.ads.internal.offline.buffering.zza(readString, readString2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                break;
            case 3:
                ((zzeif) this).zzg();
                break;
            case 4:
                ((zzeif) this).y(a.g(parcel, parcel));
                break;
            case 5:
                ((zzeif) this).H4(parcel.createStringArray(), parcel.createIntArray(), a.g(parcel, parcel));
                break;
            case 6:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.offline.buffering.zza zzaVar = (com.google.android.gms.ads.internal.offline.buffering.zza) zzbcd.b(parcel, com.google.android.gms.ads.internal.offline.buffering.zza.CREATOR);
                zzbcd.f(parcel);
                ((zzeif) this).M4(I12, zzaVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
