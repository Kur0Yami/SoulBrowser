package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zbg extends zbl {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new GoogleSignInResult(null, status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(Api.AnyClient anyClient) {
        zbs zbsVar = (zbs) ((zbe) anyClient).getService();
        zbf zbfVar = new zbf(this);
        Parcel I1 = zbsVar.I1();
        int i = com.google.android.gms.internal.p000authapi.zbc.f9469a;
        I1.writeStrongBinder(zbfVar);
        I1.writeInt(0);
        zbsVar.f2(101, I1);
    }
}
