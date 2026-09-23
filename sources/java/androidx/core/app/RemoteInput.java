package androidx.core.app;

import android.app.RemoteInput;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class RemoteInput {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api20Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(RemoteInput.Builder builder) {
            builder.setEditChoicesBeforeSending(0);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Source {
    }
}
