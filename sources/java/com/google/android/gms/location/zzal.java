package com.google.android.gms.location;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;

/* loaded from: classes3.dex */
final class zzal extends com.google.android.gms.internal.location.zzah {
    @Override // com.google.android.gms.internal.location.zzai
    public final void G4(com.google.android.gms.internal.location.zzaa zzaaVar) {
        Status status = zzaaVar.f10348c;
        if (status != null) {
            if (status.getStatusCode() == 0) {
                throw null;
            }
            ApiExceptionUtil.fromStatus(status);
            throw null;
        }
        new ApiException(new Status(8, "Got null status from location service"));
        throw null;
    }

    @Override // com.google.android.gms.internal.location.zzai
    public final void zzc() {
    }
}
