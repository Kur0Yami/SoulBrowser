package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnFailureListener;

/* loaded from: classes.dex */
final /* synthetic */ class zzch implements OnFailureListener {
    @Override // com.google.android.gms.tasks.OnFailureListener
    public final /* synthetic */ void c(Exception exc) {
        new Status(8, "unknown error");
        if (exc instanceof ApiException) {
            ApiException apiException = (ApiException) exc;
            new Status(apiException.getStatusCode(), apiException.getMessage());
        }
        Logger logger = CastSession.n;
        throw null;
    }
}
