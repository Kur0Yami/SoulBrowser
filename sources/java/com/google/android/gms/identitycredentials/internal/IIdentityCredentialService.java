package com.google.android.gms.identitycredentials.internal;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.identity_credentials.zza;
import com.google.android.gms.internal.identity_credentials.zzb;
import com.google.android.gms.internal.identity_credentials.zzc;

/* loaded from: classes.dex */
public interface IIdentityCredentialService extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends zzb implements IIdentityCredentialService {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f3837c = 0;

        /* loaded from: classes.dex */
        public static class Proxy extends zza implements IIdentityCredentialService {
            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public final void B0(InternalIdentityCredentialClient$getCredential$1$callback$1 internalIdentityCredentialClient$getCredential$1$callback$1) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i = zzc.f10345a;
                obtain.writeStrongBinder(internalIdentityCredentialClient$getCredential$1$callback$1.asBinder());
                obtain.writeInt(0);
                I1(1, obtain);
            }

            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public final void b3(InternalIdentityCredentialClient$clearRegistry$1$callback$1 internalIdentityCredentialClient$clearRegistry$1$callback$1) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i = zzc.f10345a;
                obtain.writeStrongBinder(internalIdentityCredentialClient$clearRegistry$1$callback$1.asBinder());
                obtain.writeInt(0);
                I1(3, obtain);
            }

            @Override // com.google.android.gms.identitycredentials.internal.IIdentityCredentialService
            public final void k3(InternalIdentityCredentialClient$registerCredentials$1$callback$1 internalIdentityCredentialClient$registerCredentials$1$callback$1) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.identitycredentials.internal.IIdentityCredentialService");
                int i = zzc.f10345a;
                obtain.writeStrongBinder(internalIdentityCredentialClient$registerCredentials$1$callback$1.asBinder());
                obtain.writeInt(0);
                I1(2, obtain);
            }
        }
    }

    void B0(InternalIdentityCredentialClient$getCredential$1$callback$1 internalIdentityCredentialClient$getCredential$1$callback$1);

    void b3(InternalIdentityCredentialClient$clearRegistry$1$callback$1 internalIdentityCredentialClient$clearRegistry$1$callback$1);

    void k3(InternalIdentityCredentialClient$registerCredentials$1$callback$1 internalIdentityCredentialClient$registerCredentials$1$callback$1);
}
