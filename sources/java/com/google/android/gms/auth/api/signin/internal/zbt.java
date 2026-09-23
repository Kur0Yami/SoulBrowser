package com.google.android.gms.auth.api.signin.internal;

import android.os.Binder;
import androidx.work.impl.workers.a;
import com.google.android.gms.auth.api.signin.RevocationBoundService;
import com.google.android.gms.common.util.UidVerifier;

/* loaded from: classes.dex */
public final class zbt extends zbo {

    /* renamed from: c, reason: collision with root package name */
    public final RevocationBoundService f3395c;

    public zbt(RevocationBoundService revocationBoundService) {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
        this.f3395c = revocationBoundService;
    }

    public final void f2() {
        if (UidVerifier.isGooglePlayServicesUid(this.f3395c, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        throw new SecurityException(a.t(new StringBuilder(String.valueOf(callingUid).length() + 41), "Calling UID ", callingUid, " is not Google Play services."));
    }
}
