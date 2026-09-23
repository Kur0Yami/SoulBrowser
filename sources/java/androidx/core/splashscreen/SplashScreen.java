package androidx.core.splashscreen;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.window.SplashScreenView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/core/splashscreen/SplashScreen;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "OnExitAnimationListener", "KeepOnScreenCondition", "Impl", "Impl31", "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SuppressLint({"CustomSplashScreen"})
/* loaded from: classes.dex */
public final class SplashScreen {

    /* renamed from: a, reason: collision with root package name */
    public final Impl f740a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MASK_FACTOR", "F", "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0012\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSplashScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashScreen.kt\nandroidx/core/splashscreen/SplashScreen$Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n1#2:503\n*E\n"})
    /* loaded from: classes.dex */
    public static class Impl {

        /* renamed from: a, reason: collision with root package name */
        public final MainActivity f741a;

        public Impl(MainActivity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f741a = activity;
        }

        public void a() {
            TypedValue typedValue = new TypedValue();
            MainActivity mainActivity = this.f741a;
            Resources.Theme theme = mainActivity.getTheme();
            theme.resolveAttribute(R.attr.windowSplashScreenBackground, typedValue, true);
            if (theme.resolveAttribute(R.attr.windowSplashScreenAnimatedIcon, typedValue, true)) {
                AppCompatResources.a(mainActivity, typedValue.resourceId);
            }
            theme.resolveAttribute(R.attr.splashScreenIconSize, typedValue, true);
            Intrinsics.checkNotNull(theme);
            b(theme, typedValue);
        }

        public final void b(Resources.Theme currentTheme, TypedValue typedValue) {
            int i;
            Intrinsics.checkNotNullParameter(currentTheme, "currentTheme");
            Intrinsics.checkNotNullParameter(typedValue, "typedValue");
            if (currentTheme.resolveAttribute(R.attr.postSplashScreenTheme, typedValue, true) && (i = typedValue.resourceId) != 0) {
                this.f741a.setTheme(i);
            }
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Impl31;", "Landroidx/core/splashscreen/SplashScreen$Impl;", "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Impl31 extends Impl {
        public final SplashScreen$Impl31$hierarchyListener$1 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.splashscreen.SplashScreen$Impl31$hierarchyListener$1] */
        public Impl31(final MainActivity activity) {
            super(activity);
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.b = new ViewGroup.OnHierarchyChangeListener(this) { // from class: androidx.core.splashscreen.SplashScreen$Impl31$hierarchyListener$1
                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public final void onChildViewAdded(View view, View view2) {
                    if (view2 instanceof SplashScreenView) {
                        SplashScreenView child = (SplashScreenView) view2;
                        Intrinsics.checkNotNullParameter(child, "child");
                        WindowInsets build = new WindowInsets.Builder().build();
                        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                        Rect rect = new Rect(IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
                        if (build == child.getRootView().computeSystemWindowInsets(build, rect)) {
                            rect.isEmpty();
                        }
                        View decorView = activity.getWindow().getDecorView();
                        Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                        ((ViewGroup) decorView).setOnHierarchyChangeListener(null);
                    }
                }

                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public final void onChildViewRemoved(View view, View view2) {
                }
            };
        }

        @Override // androidx.core.splashscreen.SplashScreen.Impl
        public final void a() {
            MainActivity mainActivity = this.f741a;
            Resources.Theme theme = mainActivity.getTheme();
            Intrinsics.checkNotNullExpressionValue(theme, "getTheme(...)");
            b(theme, new TypedValue());
            if (Build.VERSION.SDK_INT < 33) {
                View decorView = mainActivity.getWindow().getDecorView();
                Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) decorView).setOnHierarchyChangeListener(this.b);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface KeepOnScreenCondition {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnExitAnimationListener {
    }

    public SplashScreen(MainActivity mainActivity) {
        Impl impl;
        if (Build.VERSION.SDK_INT >= 31) {
            impl = new Impl31(mainActivity);
        } else {
            impl = new Impl(mainActivity);
        }
        this.f740a = impl;
    }

    public static final void a(MainActivity mainActivity) {
        Intrinsics.checkNotNullParameter(mainActivity, "<this>");
        new SplashScreen(mainActivity).f740a.a();
    }
}
