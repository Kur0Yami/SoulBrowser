package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.RequiresOptIn;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/core/os/BuildCompat;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api30Impl", "PrereleaseSdkCheck", "core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BuildCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f702a = 0;

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/os/BuildCompat$Api30Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api30Impl {
        public static void a(int i) {
            SdkExtensions.getExtensionVersion(i);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes.dex */
    public @interface PrereleaseSdkCheck {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Api30Impl.a(30);
        }
        if (i >= 30) {
            Api30Impl.a(31);
        }
        if (i >= 30) {
            Api30Impl.a(33);
        }
        if (i >= 30) {
            Api30Impl.a(DurationKt.NANOS_IN_MILLIS);
        }
    }

    public static final boolean a(String codename) {
        String buildCodename = Build.VERSION.CODENAME;
        Intrinsics.checkNotNullParameter(codename, "codename");
        Intrinsics.checkNotNullParameter(buildCodename, "buildCodename");
        if (!Intrinsics.areEqual("REL", buildCodename)) {
            Locale locale = Locale.ROOT;
            String upperCase = buildCodename.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            String upperCase2 = codename.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            if (upperCase.compareTo(upperCase2) >= 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static final boolean b() {
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            if (i >= 30) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (!a("S")) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public static final boolean c() {
        int i = Build.VERSION.SDK_INT;
        if (i < 35) {
            if (i >= 34) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (!a("VanillaIceCream")) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
