package androidx.activity;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/ImmLeaksCleaner;", "Landroidx/lifecycle/LifecycleEventObserver;", "Cleaner", "Companion", "FailedInitialization", "ValidCleaner", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImmLeaksCleaner implements LifecycleEventObserver {
    public static final Lazy f = LazyKt.lazy(ImmLeaksCleaner$Companion$cleaner$2.f24c);

    /* renamed from: c, reason: collision with root package name */
    public final ComponentActivity f23c;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$Cleaner;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/activity/ImmLeaksCleaner$FailedInitialization;", "Landroidx/activity/ImmLeaksCleaner$ValidCleaner;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class Cleaner {
        public abstract boolean a(InputMethodManager inputMethodManager);

        public abstract Object b(InputMethodManager inputMethodManager);

        public abstract View c(InputMethodManager inputMethodManager);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0087\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$FailedInitialization;", "Landroidx/activity/ImmLeaksCleaner$Cleaner;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class FailedInitialization extends Cleaner {

        /* renamed from: a, reason: collision with root package name */
        public static final FailedInitialization f25a = new Object();

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            return false;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final Object b(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            return null;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final View c(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$ValidCleaner;", "Landroidx/activity/ImmLeaksCleaner$Cleaner;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ValidCleaner extends Cleaner {

        /* renamed from: a, reason: collision with root package name */
        public final Field f26a;
        public final Field b;

        /* renamed from: c, reason: collision with root package name */
        public final Field f27c;

        public ValidCleaner(Field hField, Field servedViewField, Field nextServedViewField) {
            Intrinsics.checkNotNullParameter(hField, "hField");
            Intrinsics.checkNotNullParameter(servedViewField, "servedViewField");
            Intrinsics.checkNotNullParameter(nextServedViewField, "nextServedViewField");
            this.f26a = hField;
            this.b = servedViewField;
            this.f27c = nextServedViewField;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            try {
                this.f27c.set(inputMethodManager, null);
                return true;
            } catch (IllegalAccessException unused) {
                return false;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final Object b(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            try {
                return this.f26a.get(inputMethodManager);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final View c(InputMethodManager inputMethodManager) {
            Intrinsics.checkNotNullParameter(inputMethodManager, "<this>");
            try {
                return (View) this.b.get(inputMethodManager);
            } catch (ClassCastException | IllegalAccessException unused) {
                return null;
            }
        }
    }

    public ImmLeaksCleaner(ComponentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f23c = activity;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void b(LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            Object systemService = this.f23c.getSystemService("input_method");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            Cleaner cleaner = (Cleaner) f.getValue();
            Object b = cleaner.b(inputMethodManager);
            if (b != null) {
                synchronized (b) {
                    View c2 = cleaner.c(inputMethodManager);
                    if (c2 == null) {
                        return;
                    }
                    if (c2.isAttachedToWindow()) {
                        return;
                    }
                    boolean a2 = cleaner.a(inputMethodManager);
                    if (a2) {
                        inputMethodManager.isActive();
                    }
                }
            }
        }
    }
}
