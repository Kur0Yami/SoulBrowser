package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public interface IClearRestoreCredentialCallback extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends zzb implements IClearRestoreCredentialCallback {
        @Override // com.google.android.gms.internal.auth_blockstore.zzb
        public final boolean I1(int i, Parcel parcel) {
            boolean z = false;
            if (i != 1) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            if (parcel.readInt() != 0) {
                z = true;
            }
            zzb.f2(parcel);
            Intrinsics.checkNotNullParameter(status, "status");
            TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), (TaskCompletionSource<Boolean>) ((InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1) this).f3413c);
            return true;
        }
    }
}
