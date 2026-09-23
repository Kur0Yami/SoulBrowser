package androidx.browser.customtabs;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CustomTabsIntent {

    /* renamed from: a, reason: collision with root package name */
    public final Intent f421a;
    public final Bundle b;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ActivityHeightResizeBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ActivitySideSheetDecorationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ActivitySideSheetPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ActivitySideSheetRoundedCornersPosition {
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
        public static String a() {
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            if (adjustedDefault.size() > 0) {
                return adjustedDefault.get(0).toLanguageTag();
            }
            return null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static void a(ActivityOptions activityOptions) {
            activityOptions.setShareIdentityEnabled(false);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api36Impl {
        public static void a(ActivityOptions activityOptions, boolean z) {
            activityOptions.setAllowPassThroughOnTouchOutside(z);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface CloseButtonPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ColorScheme {
    }

    @ExperimentalCustomContentAction
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ContentTargetType {
    }

    @ExperimentalOpenInBrowser
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface OpenInBrowserState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ShareState {
    }

    public CustomTabsIntent(Intent intent, Bundle bundle) {
        this.f421a = intent;
        this.b = bundle;
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Intent f422a;
        public final CustomTabColorSchemeParams.Builder b;

        /* renamed from: c, reason: collision with root package name */
        public ActivityOptions f423c;
        public int d;
        public final boolean e;

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.browser.customtabs.CustomTabColorSchemeParams$Builder, java.lang.Object] */
        public Builder() {
            this.f422a = new Intent("android.intent.action.VIEW");
            this.b = new Object();
            this.d = 0;
            this.e = true;
        }

        public final CustomTabsIntent a() {
            Bundle bundle;
            Intent intent = this.f422a;
            Bundle bundle2 = null;
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle3 = new Bundle();
                bundle3.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle3);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.e);
            this.b.getClass();
            intent.putExtras(new Bundle());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.d);
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                String a2 = Api24Impl.a();
                if (!TextUtils.isEmpty(a2)) {
                    if (intent.hasExtra("com.android.browser.headers")) {
                        bundle = intent.getBundleExtra("com.android.browser.headers");
                    } else {
                        bundle = new Bundle();
                    }
                    if (!bundle.containsKey("Accept-Language")) {
                        bundle.putString("Accept-Language", a2);
                        intent.putExtra("com.android.browser.headers", bundle);
                    }
                }
            }
            if (i >= 34) {
                if (this.f423c == null) {
                    this.f423c = ActivityOptions.makeBasic();
                }
                Api34Impl.a(this.f423c);
            }
            if (i >= 36) {
                if (this.f423c == null) {
                    this.f423c = ActivityOptions.makeBasic();
                }
                Api36Impl.a(this.f423c, !intent.getBooleanExtra("androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION", false));
            }
            ActivityOptions activityOptions = this.f423c;
            if (activityOptions != null) {
                bundle2 = activityOptions.toBundle();
            }
            return new CustomTabsIntent(intent, bundle2);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.browser.customtabs.CustomTabColorSchemeParams$Builder, java.lang.Object] */
        public Builder(CustomTabsSession customTabsSession) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f422a = intent;
            this.b = new Object();
            this.d = 0;
            this.e = true;
            if (customTabsSession != null) {
                intent.setPackage(customTabsSession.d.getPackageName());
                IBinder asBinder = customTabsSession.f426c.asBinder();
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", asBinder);
                intent.putExtras(bundle);
            }
        }
    }
}
