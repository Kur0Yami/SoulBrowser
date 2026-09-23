package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzl extends zzb implements zzm {
    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 2) {
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) zzc.a(parcel, AccountChangeEventsResponse.CREATOR);
            zzc.b(parcel);
            zzab.g(status, accountChangeEventsResponse, ((zzz) this).f9586c);
            return true;
        }
        return false;
    }
}
