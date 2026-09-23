package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zbi extends zbl {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(Api.AnyClient anyClient) {
        zbe zbeVar = (zbe) anyClient;
        zbs zbsVar = (zbs) zbeVar.getService();
        zbh zbhVar = new zbh(this);
        GoogleSignInOptions googleSignInOptions = zbeVar.f3389c;
        Parcel I1 = zbsVar.I1();
        int i = com.google.android.gms.internal.p000authapi.zbc.f9469a;
        I1.writeStrongBinder(zbhVar);
        com.google.android.gms.internal.p000authapi.zbc.b(I1, googleSignInOptions);
        zbsVar.f2(102, I1);
    }
}
