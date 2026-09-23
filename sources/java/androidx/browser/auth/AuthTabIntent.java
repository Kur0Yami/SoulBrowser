package androidx.browser.auth;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class AuthTabIntent {

    /* loaded from: classes.dex */
    public static final class AuthResult {
    }

    /* loaded from: classes.dex */
    public static class AuthenticateUserResultContract extends ActivityResultContract<Intent, AuthResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Intent a(Context context, Object obj) {
            return (Intent) obj;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Object c(Intent intent, int i) {
            if (i == -1 && intent != null) {
                intent.getData();
            }
            return new Object();
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ResultCode {
    }
}
