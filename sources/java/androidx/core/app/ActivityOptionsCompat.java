package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class ActivityOptionsCompat {

    /* loaded from: classes.dex */
    public static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {

        /* renamed from: a, reason: collision with root package name */
        public final ActivityOptions f616a;

        public ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.f616a = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public final Bundle b() {
            return this.f616a.toBundle();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface BackgroundActivityStartMode {
    }

    public static ActivityOptionsCompat a(Activity activity, int i, int i2) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(activity, i, i2));
    }

    public Bundle b() {
        return null;
    }
}
