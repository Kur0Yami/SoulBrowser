package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public interface ICreateRestoreCredentialCallback extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends zzb implements ICreateRestoreCredentialCallback {
        @Override // com.google.android.gms.internal.auth_blockstore.zzb
        public final boolean I1(int i, Parcel parcel) {
            if (i == 1) {
                Status status = (Status) zzc.a(parcel, Status.CREATOR);
                CreateRestoreCredentialResponse response = (CreateRestoreCredentialResponse) zzc.a(parcel, CreateRestoreCredentialResponse.CREATOR);
                zzb.f2(parcel);
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(response, "response");
                TaskUtil.setResultOrApiException(status, response, (TaskCompletionSource<CreateRestoreCredentialResponse>) ((InternalRestoreCredentialClient$createRestoreCredential$1$callback$1) this).f3414c);
                return true;
            }
            return false;
        }
    }
}
