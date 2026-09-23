package com.google.android.gms.auth.blockstore.restorecredential.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.internal.auth_blockstore.zza;
import com.google.android.gms.internal.auth_blockstore.zzb;
import com.google.android.gms.internal.auth_blockstore.zzc;

/* loaded from: classes.dex */
public interface IRestoreCredentialService extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends zzb implements IRestoreCredentialService {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f3410c = 0;

        /* loaded from: classes.dex */
        public static class Proxy extends zza implements IRestoreCredentialService {
            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void H0(InternalRestoreCredentialClient$getRestoreCredential$1$callback$1 internalRestoreCredentialClient$getRestoreCredential$1$callback$1) {
                Parcel I1 = I1();
                int i = zzc.f9589a;
                I1.writeInt(0);
                zzc.c(I1, internalRestoreCredentialClient$getRestoreCredential$1$callback$1);
                f2(2, I1);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void L(InternalRestoreCredentialClient$createRestoreCredential$1$callback$1 internalRestoreCredentialClient$createRestoreCredential$1$callback$1) {
                Parcel I1 = I1();
                int i = zzc.f9589a;
                I1.writeInt(0);
                zzc.c(I1, internalRestoreCredentialClient$createRestoreCredential$1$callback$1);
                f2(3, I1);
            }

            @Override // com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService
            public final void N4(ClearRestoreCredentialRequest clearRestoreCredentialRequest, InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1 internalRestoreCredentialClient$clearRestoreCredential$1$callback$1) {
                Parcel I1 = I1();
                zzc.b(I1, clearRestoreCredentialRequest);
                zzc.c(I1, internalRestoreCredentialClient$clearRestoreCredential$1$callback$1);
                f2(4, I1);
            }
        }
    }

    void H0(InternalRestoreCredentialClient$getRestoreCredential$1$callback$1 internalRestoreCredentialClient$getRestoreCredential$1$callback$1);

    void L(InternalRestoreCredentialClient$createRestoreCredential$1$callback$1 internalRestoreCredentialClient$createRestoreCredential$1$callback$1);

    void N4(ClearRestoreCredentialRequest clearRestoreCredentialRequest, InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1 internalRestoreCredentialClient$clearRestoreCredential$1$callback$1);
}
