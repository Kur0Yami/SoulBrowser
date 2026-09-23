package com.google.api.client.googleapis.extensions.android.gms.auth;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes3.dex */
public class UserRecoverableAuthIOException extends GoogleAuthIOException {
    private static final long serialVersionUID = 1;

    public UserRecoverableAuthIOException(UserRecoverableAuthException userRecoverableAuthException) {
        super(userRecoverableAuthException);
    }

    public final Intent getIntent() {
        UserRecoverableAuthException cause = getCause();
        Intent intent = cause.f3338c;
        if (intent == null) {
            int ordinal = cause.f.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        Log.e("Auth", "this instantiation of UserRecoverableAuthException doesn't support an Intent.");
                        return null;
                    }
                    return null;
                }
                Log.e("Auth", "This shouldn't happen. Gms API throwing this exception should support the recovery Intent.");
                return null;
            }
            Log.w("Auth", "Make sure that an intent was provided to class instantiation.");
            return null;
        }
        return new Intent(intent);
    }

    @Override // com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAuthIOException, java.lang.Throwable
    public UserRecoverableAuthException getCause() {
        return (UserRecoverableAuthException) super.getCause();
    }
}
