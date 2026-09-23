package com.google.android.gms.internal.fido;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public abstract class zzq extends zzb implements zzr {
    public zzq() {
        super("com.google.android.gms.fido.fido2.internal.regular.IFido2AppCallbacks");
    }

    @Override // com.google.android.gms.internal.fido.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            PendingIntent pendingIntent = (PendingIntent) zzc.a(parcel, PendingIntent.CREATOR);
            zzc.b(parcel);
            o(status, pendingIntent);
            return true;
        }
        return false;
    }
}
