package androidx.credentials;

import android.credentials.GetCredentialException;
import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"androidx/credentials/Api35Impl$setPendingGetCredentialRequest$frameworkCallback$1", "Landroid/os/OutcomeReceiver;", "Landroid/credentials/GetCredentialResponse;", "Landroid/credentials/GetCredentialException;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api35Impl$setPendingGetCredentialRequest$frameworkCallback$1 implements OutcomeReceiver {
    public final void onError(Throwable th) {
        GetCredentialException error = (GetCredentialException) th;
        Intrinsics.checkNotNullParameter(error, "error");
        Log.w("ViewHandler", "Error: " + error.getType() + " , " + error.getMessage());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0037. Please report as an issue. */
    public final void onResult(Object obj) {
        Credential credential;
        Credential credential2;
        android.credentials.GetCredentialResponse response = (android.credentials.GetCredentialResponse) obj;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(response, "response");
        android.credentials.Credential credential3 = response.getCredential();
        Intrinsics.checkNotNullExpressionValue(credential3, "response.credential");
        String type = credential3.getType();
        Intrinsics.checkNotNullExpressionValue(type, "credential.type");
        Bundle data = credential3.getData();
        Intrinsics.checkNotNullExpressionValue(data, "credential.data");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
        } catch (FrameworkClassParsingException unused) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(data, "data");
            credential = new Credential(type, data);
            if (type.length() <= 0) {
                throw new IllegalArgumentException("type should not be empty");
            }
        }
        switch (type.hashCode()) {
            case -1678407252:
                if (type.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    try {
                        String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                        Intrinsics.checkNotNull(string);
                        credential2 = new Credential("androidx.credentials.TYPE_DIGITAL_CREDENTIAL", data);
                        if (RequestValidationHelper.Companion.a(string)) {
                            credential = credential2;
                            Intrinsics.checkNotNullParameter(credential, "credential");
                            throw null;
                        }
                        throw new IllegalArgumentException("credentialJson must not be empty, and must be a valid JSON");
                    } catch (Exception unused2) {
                        throw new Exception();
                    }
                }
                throw new Exception();
            case -1072734346:
                if (type.equals("androidx.credentials.TYPE_RESTORE_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    String string2 = data.getString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE");
                    if (string2 != null) {
                        credential2 = new Credential("androidx.credentials.TYPE_RESTORE_CREDENTIAL", data);
                        if (RequestValidationHelper.Companion.a(string2)) {
                            credential = credential2;
                            Intrinsics.checkNotNullParameter(credential, "credential");
                            throw null;
                        }
                        throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
                    }
                    throw new NoCredentialException("The device does not contain a restore credential.");
                }
                throw new Exception();
            case -543568185:
                if (type.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    try {
                        String string3 = data.getString("androidx.credentials.BUNDLE_KEY_ID");
                        String string4 = data.getString("androidx.credentials.BUNDLE_KEY_PASSWORD");
                        Intrinsics.checkNotNull(string3);
                        Intrinsics.checkNotNull(string4);
                        credential2 = new Credential("android.credentials.TYPE_PASSWORD_CREDENTIAL", data);
                        if (string4.length() <= 0) {
                            throw new IllegalArgumentException("password should not be empty");
                        }
                        credential = credential2;
                        Intrinsics.checkNotNullParameter(credential, "credential");
                        throw null;
                    } catch (Exception unused3) {
                        throw new Exception();
                    }
                }
                throw new Exception();
            case -95037569:
                if (type.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    try {
                        String string5 = data.getString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON");
                        Intrinsics.checkNotNull(string5);
                        credential = new Credential("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", data);
                        if (!RequestValidationHelper.Companion.a(string5)) {
                            throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
                        }
                        Intrinsics.checkNotNullParameter(credential, "credential");
                        throw null;
                    } catch (Exception unused4) {
                        throw new Exception();
                    }
                }
                throw new Exception();
            default:
                throw new Exception();
        }
    }
}
