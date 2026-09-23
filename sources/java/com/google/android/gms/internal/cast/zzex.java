package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.view.Surface;
import com.google.android.gms.common.api.ApiMetadata;

/* loaded from: classes.dex */
public abstract class zzex extends zzb implements zzey {
    public zzex() {
        super("com.google.android.gms.cast.remote_display.ICastRemoteDisplayCallbacks");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        boolean z = false;
                        if (i != 5) {
                            return false;
                        }
                        int i2 = zzc.f9645a;
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        zzc.d(parcel);
                        v(z);
                    } else {
                        ApiMetadata apiMetadata = (ApiMetadata) zzc.a(parcel, ApiMetadata.CREATOR);
                        zzc.d(parcel);
                        H3(apiMetadata);
                    }
                } else {
                    ApiMetadata apiMetadata2 = (ApiMetadata) zzc.a(parcel, ApiMetadata.CREATOR);
                    zzc.d(parcel);
                    B4(apiMetadata2);
                }
            } else {
                int readInt = parcel.readInt();
                ApiMetadata apiMetadata3 = (ApiMetadata) zzc.a(parcel, ApiMetadata.CREATOR);
                zzc.d(parcel);
                V3(readInt, apiMetadata3);
            }
        } else {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            Surface surface = (Surface) zzc.a(parcel, Surface.CREATOR);
            ApiMetadata apiMetadata4 = (ApiMetadata) zzc.a(parcel, ApiMetadata.CREATOR);
            zzc.d(parcel);
            C4(readInt2, readInt3, surface, apiMetadata4);
        }
        parcel2.writeNoException();
        return true;
    }
}
