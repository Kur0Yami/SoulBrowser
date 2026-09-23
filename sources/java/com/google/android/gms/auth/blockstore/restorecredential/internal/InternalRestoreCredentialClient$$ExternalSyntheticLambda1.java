package com.google.android.gms.auth.blockstore.restorecredential.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class InternalRestoreCredentialClient$$ExternalSyntheticLambda1 implements RemoteCall {
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        Api api = InternalRestoreCredentialClient.f3411a;
        Intrinsics.checkNotNullParameter(null, "$request");
        ((IRestoreCredentialService) ((RestoreCredentialClientImpl) obj).getService()).L(new InternalRestoreCredentialClient$createRestoreCredential$1$callback$1((TaskCompletionSource) obj2));
    }
}
