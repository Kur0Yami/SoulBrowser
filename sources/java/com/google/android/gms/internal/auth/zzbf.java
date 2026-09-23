package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* loaded from: classes.dex */
public abstract class zzbf extends zzb implements zzbg {
    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            String readString = parcel.readString();
            zzc.b(parcel);
            zzc(readString);
        } else {
            ProxyResponse proxyResponse = (ProxyResponse) zzc.a(parcel, ProxyResponse.CREATOR);
            zzc.b(parcel);
            K(proxyResponse);
        }
        parcel2.writeNoException();
        return true;
    }
}
