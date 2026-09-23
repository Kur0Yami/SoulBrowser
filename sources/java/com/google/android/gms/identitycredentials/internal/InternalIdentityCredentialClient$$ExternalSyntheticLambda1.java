package com.google.android.gms.identitycredentials.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.identitycredentials.ClearRegistryResponse;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class InternalIdentityCredentialClient$$ExternalSyntheticLambda1 implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$clearRegistry$1$callback$1] */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        final TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        Intrinsics.checkNotNullParameter(null, "$request");
        ((IIdentityCredentialService) ((IdentityCredentialClientImpl) obj).getService()).b3(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$clearRegistry$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public final void Y1(Status status, ClearRegistryResponse clearRegistryResponse) {
                Intrinsics.checkNotNullParameter(status, "status");
                TaskUtil.setResultOrApiException(status, clearRegistryResponse, (TaskCompletionSource<ClearRegistryResponse>) TaskCompletionSource.this);
            }
        });
    }
}
