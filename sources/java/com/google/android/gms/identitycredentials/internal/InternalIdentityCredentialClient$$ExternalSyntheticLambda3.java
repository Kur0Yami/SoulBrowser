package com.google.android.gms.identitycredentials.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class InternalIdentityCredentialClient$$ExternalSyntheticLambda3 implements RemoteCall {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1] */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        final TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        Intrinsics.checkNotNullParameter(null, "$request");
        ((IIdentityCredentialService) ((IdentityCredentialClientImpl) obj).getService()).B0(new IdentityCredentialBaseCallbacks() { // from class: com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient$getCredential$1$callback$1
            @Override // com.google.android.gms.identitycredentials.internal.IdentityCredentialBaseCallbacks, com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks
            public final void s3(Status status, PendingGetCredentialHandle pendingGetCredentialHandle) {
                Intrinsics.checkNotNullParameter(status, "status");
                TaskUtil.setResultOrApiException(status, pendingGetCredentialHandle, (TaskCompletionSource<PendingGetCredentialHandle>) TaskCompletionSource.this);
            }
        });
    }
}
