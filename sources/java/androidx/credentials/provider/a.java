package androidx.credentials.provider;

import android.credentials.ClearCredentialStateException;
import android.credentials.CreateCredentialException;
import android.credentials.GetCredentialException;
import android.os.Bundle;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ ClearCredentialStateException a(String str, String str2) {
        return new ClearCredentialStateException(str, str2);
    }

    public static /* synthetic */ CreateCredentialException b(String str, String str2) {
        return new CreateCredentialException(str, str2);
    }

    public static /* synthetic */ GetCredentialException c(String str, String str2) {
        return new GetCredentialException(str, str2);
    }

    public static /* synthetic */ android.service.credentials.BeginGetCredentialOption d(String str, Bundle bundle, String str2) {
        return new android.service.credentials.BeginGetCredentialOption(str, str2, bundle);
    }

    public static /* synthetic */ void e() {
    }

    public static /* synthetic */ void f() {
    }

    public static /* synthetic */ void g() {
    }

    public static /* synthetic */ void h() {
    }
}
