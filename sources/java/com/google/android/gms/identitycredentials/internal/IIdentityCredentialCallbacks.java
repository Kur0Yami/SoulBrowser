package com.google.android.gms.identitycredentials.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.identitycredentials.ClearRegistryResponse;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.RegistrationResponse;
import com.google.android.gms.internal.identity_credentials.zzb;
import com.google.android.gms.internal.identity_credentials.zzc;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public interface IIdentityCredentialCallbacks extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends zzb implements IIdentityCredentialCallbacks {
        @Override // com.google.android.gms.internal.identity_credentials.zzb
        public final boolean I1(int i, Parcel parcel) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return false;
                            }
                            Status status = (Status) zzc.a(parcel, Status.CREATOR);
                            zzb.f2(parcel);
                            Intrinsics.checkNotNullParameter(status, "status");
                            throw new UnsupportedOperationException();
                        }
                        Status status2 = (Status) zzc.a(parcel, Status.CREATOR);
                        zzb.f2(parcel);
                        Intrinsics.checkNotNullParameter(status2, "status");
                        throw new UnsupportedOperationException();
                    }
                    Status status3 = (Status) zzc.a(parcel, Status.CREATOR);
                    ClearRegistryResponse clearRegistryResponse = (ClearRegistryResponse) zzc.a(parcel, ClearRegistryResponse.CREATOR);
                    zzb.f2(parcel);
                    Y1(status3, clearRegistryResponse);
                    return true;
                }
                Status status4 = (Status) zzc.a(parcel, Status.CREATOR);
                RegistrationResponse registrationResponse = (RegistrationResponse) zzc.a(parcel, RegistrationResponse.CREATOR);
                zzb.f2(parcel);
                l4(status4, registrationResponse);
                return true;
            }
            Status status5 = (Status) zzc.a(parcel, Status.CREATOR);
            PendingGetCredentialHandle pendingGetCredentialHandle = (PendingGetCredentialHandle) zzc.a(parcel, PendingGetCredentialHandle.CREATOR);
            zzb.f2(parcel);
            s3(status5, pendingGetCredentialHandle);
            return true;
        }
    }

    void Y1(Status status, ClearRegistryResponse clearRegistryResponse);

    void l4(Status status, RegistrationResponse registrationResponse);

    void s3(Status status, PendingGetCredentialHandle pendingGetCredentialHandle);
}
