package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzc extends com.google.android.gms.internal.cast.zzb implements zzd {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    MediaMetadata mediaMetadata = (MediaMetadata) com.google.android.gms.internal.cast.zzc.a(parcel, MediaMetadata.CREATOR);
                    ImageHints imageHints = (ImageHints) com.google.android.gms.internal.cast.zzc.a(parcel, ImageHints.CREATOR);
                    com.google.android.gms.internal.cast.zzc.d(parcel);
                    WebImage b = ((zzi) this).f3577c.b(mediaMetadata, imageHints);
                    parcel2.writeNoException();
                    if (b == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    b.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeNoException();
                parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return true;
            }
            IObjectWrapper zzf = ((zzi) this).zzf();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.c(parcel2, zzf);
            return true;
        }
        MediaMetadata mediaMetadata2 = (MediaMetadata) com.google.android.gms.internal.cast.zzc.a(parcel, MediaMetadata.CREATOR);
        parcel.readInt();
        com.google.android.gms.internal.cast.zzc.d(parcel);
        ((zzi) this).f3577c.getClass();
        WebImage a2 = ImagePicker.a(mediaMetadata2);
        parcel2.writeNoException();
        if (a2 == null) {
            parcel2.writeInt(0);
            return true;
        }
        parcel2.writeInt(1);
        a2.writeToParcel(parcel2, 1);
        return true;
    }
}
