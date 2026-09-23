package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;

/* loaded from: classes.dex */
public final class zzc {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9589a = 0;

    static {
        zzc.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, ClearRestoreCredentialRequest clearRestoreCredentialRequest) {
        if (clearRestoreCredentialRequest == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            clearRestoreCredentialRequest.writeToParcel(parcel, 0);
        }
    }

    public static void c(Parcel parcel, zzb zzbVar) {
        parcel.writeStrongBinder(zzbVar.asBinder());
    }
}
