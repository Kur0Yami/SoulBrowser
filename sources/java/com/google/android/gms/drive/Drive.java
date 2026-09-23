package com.google.android.gms.drive;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class Drive {

    /* loaded from: classes.dex */
    public static class zza implements Api.ApiOptions.HasGoogleSignInAccountOptions {
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != zza.class) {
                return false;
            }
            if (!Objects.equal(null, null)) {
                return false;
            }
            throw null;
        }

        @Override // com.google.android.gms.common.api.Api.ApiOptions.HasGoogleSignInAccountOptions
        public final GoogleSignInAccount getGoogleSignInAccount() {
            return null;
        }

        public final int hashCode() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class zzb implements Api.ApiOptions.Optional {
    }

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.AbstractClientBuilder abstractClientBuilder = new Api.AbstractClientBuilder();
        Api.AbstractClientBuilder abstractClientBuilder2 = new Api.AbstractClientBuilder();
        Api.AbstractClientBuilder abstractClientBuilder3 = new Api.AbstractClientBuilder();
        new Scope("https://www.googleapis.com/auth/drive.file");
        new Scope("https://www.googleapis.com/auth/drive.appdata");
        new Scope("https://www.googleapis.com/auth/drive");
        new Scope(Scopes.DRIVE_APPS);
        new Api("Drive.API", abstractClientBuilder, clientKey);
        new Api("Drive.INTERNAL_API", abstractClientBuilder2, clientKey);
        new Api("Drive.API_CONNECTIONLESS", abstractClientBuilder3, clientKey);
    }
}
