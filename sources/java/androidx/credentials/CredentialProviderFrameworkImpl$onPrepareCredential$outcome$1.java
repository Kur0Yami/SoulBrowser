package androidx.credentials;

import android.credentials.GetCredentialException;
import android.os.OutcomeReceiver;
import androidx.core.view.accessibility.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"androidx/credentials/CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1", "Landroid/os/OutcomeReceiver;", "Landroid/credentials/PrepareGetCredentialResponse;", "Landroid/credentials/GetCredentialException;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1 implements OutcomeReceiver {
    public final void onError(Throwable th) {
        GetCredentialException error = a.c(th);
        Intrinsics.checkNotNullParameter(error, "error");
        throw null;
    }

    public final void onResult(Object obj) {
        android.credentials.PrepareGetCredentialResponse response = (android.credentials.PrepareGetCredentialResponse) obj;
        Intrinsics.checkNotNullParameter(response, "response");
        throw null;
    }
}
