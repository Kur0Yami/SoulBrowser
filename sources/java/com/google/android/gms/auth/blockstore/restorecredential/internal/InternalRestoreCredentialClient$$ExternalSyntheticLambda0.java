package com.google.android.gms.auth.blockstore.restorecredential.internal;

import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class InternalRestoreCredentialClient$$ExternalSyntheticLambda0 implements RemoteCall {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ ClearRestoreCredentialRequest f3412a;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        ClearRestoreCredentialRequest request = this.f3412a;
        Api api = InternalRestoreCredentialClient.f3411a;
        Intrinsics.checkNotNullParameter(request, "$request");
        ((IRestoreCredentialService) ((RestoreCredentialClientImpl) obj).getService()).N4(request, new InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1((TaskCompletionSource) obj2));
    }
}
