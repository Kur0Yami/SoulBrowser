package com.google.android.gms.internal.fido;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;

/* loaded from: classes3.dex */
public final class zzc {

    /* renamed from: a, reason: collision with root package name */
    public static final ClassLoader f10284a = zzc.class.getClassLoader();

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
        } else {
            throw new BadParcelableException(a.e(dataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }

    public static void c(Parcel parcel, PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        if (publicKeyCredentialCreationOptions == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            publicKeyCredentialCreationOptions.writeToParcel(parcel, 0);
        }
    }
}
