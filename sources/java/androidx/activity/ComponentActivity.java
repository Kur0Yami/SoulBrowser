package androidx.activity;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.activity.contextaware.ContextAware;
import androidx.activity.contextaware.ContextAwareHelper;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnNewIntentProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.OnUserLeaveHintProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.tracing.Trace;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000f2\u00020\u00102\u00020\u0011:\u0005\u0017\u0018\u0019\u001a\u001bJ\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, d2 = {"Landroidx/activity/ComponentActivity;", "Landroidx/core/app/ComponentActivity;", "Landroidx/activity/contextaware/ContextAware;", "Landroidx/lifecycle/LifecycleOwner;", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;", "Landroidx/savedstate/SavedStateRegistryOwner;", "Landroidx/activity/OnBackPressedDispatcherOwner;", "Landroidx/activity/result/ActivityResultRegistryOwner;", "Landroidx/activity/result/ActivityResultCaller;", "Landroidx/core/content/OnConfigurationChangedProvider;", "Landroidx/core/content/OnTrimMemoryProvider;", "Landroidx/core/app/OnNewIntentProvider;", "Landroidx/core/app/OnMultiWindowModeChangedProvider;", "Landroidx/core/app/OnPictureInPictureModeChangedProvider;", "Landroidx/core/app/OnUserLeaveHintProvider;", "Landroidx/core/view/MenuHost;", "Landroidx/activity/FullyDrawnReporterOwner;", "Landroid/view/View;", "view", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "setContentView", "(Landroid/view/View;)V", "Api33Impl", "Companion", "NonConfigurationInstances", "ReportFullyDrawnExecutor", "ReportFullyDrawnExecutorImpl", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements ContextAware, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, ActivityResultCaller, OnConfigurationChangedProvider, OnTrimMemoryProvider, OnNewIntentProvider, OnMultiWindowModeChangedProvider, OnPictureInPictureModeChangedProvider, OnUserLeaveHintProvider, MenuHost, FullyDrawnReporterOwner {
    public static final /* synthetic */ int x = 0;
    public final ContextAwareHelper f = new ContextAwareHelper();
    public final MenuHostHelper g = new MenuHostHelper(new a(this, 0));
    public final SavedStateRegistryController h;
    public ViewModelStore i;
    public final ReportFullyDrawnExecutorImpl j;
    public final Lazy k;
    public final AtomicInteger l;
    public final ComponentActivity$activityResultRegistry$1 m;
    public final CopyOnWriteArrayList n;
    public final CopyOnWriteArrayList o;
    public final CopyOnWriteArrayList p;
    public final CopyOnWriteArrayList q;
    public final CopyOnWriteArrayList r;
    public final CopyOnWriteArrayList s;
    public boolean t;
    public boolean u;
    public final Lazy v;
    public final Lazy w;

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/activity/ComponentActivity$4", "Landroidx/lifecycle/LifecycleEventObserver;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* renamed from: androidx.activity.ComponentActivity$4 */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements LifecycleEventObserver {
        public AnonymousClass4() {
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner source, Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            int i = ComponentActivity.x;
            ComponentActivity componentActivity = ComponentActivity.this;
            if (componentActivity.i == null) {
                NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) componentActivity.getLastNonConfigurationInstance();
                if (nonConfigurationInstances != null) {
                    componentActivity.i = nonConfigurationInstances.f13a;
                }
                if (componentActivity.i == null) {
                    componentActivity.i = new ViewModelStore();
                }
            }
            componentActivity.f624c.c(this);
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/activity/ComponentActivity$Api33Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroid/app/Activity;", "activity", "Landroid/window/OnBackInvokedDispatcher;", "a", "(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api33Impl {

        /* renamed from: a */
        public static final Api33Impl f12a = new Object();

        @DoNotInline
        @NotNull
        public final OnBackInvokedDispatcher a(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            Intrinsics.checkNotNullExpressionValue(onBackInvokedDispatcher, "activity.getOnBackInvokedDispatcher()");
            return onBackInvokedDispatcher;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/activity/ComponentActivity$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ACTIVITY_RESULT_TAG", "Ljava/lang/String;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/ComponentActivity$NonConfigurationInstances;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class NonConfigurationInstances {

        /* renamed from: a */
        public ViewModelStore f13a;
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;", "Ljava/util/concurrent/Executor;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface ReportFullyDrawnExecutor extends Executor {
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;", "Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;", "Landroid/view/ViewTreeObserver$OnDrawListener;", "Ljava/lang/Runnable;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class ReportFullyDrawnExecutorImpl implements ReportFullyDrawnExecutor, ViewTreeObserver.OnDrawListener, Runnable {

        /* renamed from: c */
        public final long f14c = SystemClock.uptimeMillis() + 10000;
        public Runnable f;
        public boolean g;

        public ReportFullyDrawnExecutorImpl() {
        }

        public final void a(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            if (!this.g) {
                this.g = true;
                view.getViewTreeObserver().addOnDrawListener(this);
            }
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.f = runnable;
            View decorView = ComponentActivity.this.getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
            if (this.g) {
                if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                    decorView.invalidate();
                    return;
                } else {
                    decorView.postInvalidate();
                    return;
                }
            }
            decorView.postOnAnimation(new f(0, this));
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            boolean z;
            ComponentActivity componentActivity = ComponentActivity.this;
            Runnable runnable = this.f;
            if (runnable != null) {
                runnable.run();
                this.f = null;
                FullyDrawnReporter fullyDrawnReporter = (FullyDrawnReporter) componentActivity.k.getValue();
                synchronized (fullyDrawnReporter.f21c) {
                    z = fullyDrawnReporter.d;
                }
                if (z) {
                    this.g = false;
                    componentActivity.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            if (SystemClock.uptimeMillis() > this.f14c) {
                this.g = false;
                componentActivity.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.activity.ComponentActivity$activityResultRegistry$1] */
    public ComponentActivity() {
        SavedStateRegistryController a2 = SavedStateRegistryController.Companion.a(this);
        this.h = a2;
        this.j = new ReportFullyDrawnExecutorImpl();
        this.k = LazyKt.lazy(new Function0<FullyDrawnReporter>() { // from class: androidx.activity.ComponentActivity$fullyDrawnReporter$2

            @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
            /* renamed from: androidx.activity.ComponentActivity$fullyDrawnReporter$2$1, reason: invalid class name */
            /* loaded from: classes.dex */
            final class AnonymousClass1 extends Lambda implements Function0<Unit> {

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ ComponentActivity f17c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(ComponentActivity componentActivity) {
                    super(0);
                    this.f17c = componentActivity;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Unit invoke() {
                    this.f17c.reportFullyDrawn();
                    return Unit.INSTANCE;
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final FullyDrawnReporter invoke() {
                ComponentActivity componentActivity = ComponentActivity.this;
                return new FullyDrawnReporter(componentActivity.j, new AnonymousClass1(componentActivity));
            }
        });
        this.l = new AtomicInteger();
        this.m = new ActivityResultRegistry() { // from class: androidx.activity.ComponentActivity$activityResultRegistry$1
            @Override // androidx.activity.result.ActivityResultRegistry
            public final void c(int i, ActivityResultContract contract, Object obj) {
                Bundle bundle;
                int i2;
                Intrinsics.checkNotNullParameter(contract, "contract");
                ComponentActivity componentActivity = ComponentActivity.this;
                ActivityResultContract.SynchronousResult b = contract.b(componentActivity, obj);
                if (b != null) {
                    new Handler(Looper.getMainLooper()).post(new g(i, 0, this, b));
                    return;
                }
                Intent a3 = contract.a(componentActivity, obj);
                if (a3.getExtras() != null) {
                    Bundle extras = a3.getExtras();
                    Intrinsics.checkNotNull(extras);
                    if (extras.getClassLoader() == null) {
                        a3.setExtrasClassLoader(componentActivity.getClassLoader());
                    }
                }
                if (a3.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                    bundle = a3.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    a3.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                } else {
                    bundle = null;
                }
                Bundle bundle2 = bundle;
                if (Intrinsics.areEqual("androidx.activity.result.contract.action.REQUEST_PERMISSIONS", a3.getAction())) {
                    String[] stringArrayExtra = a3.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    if (stringArrayExtra == null) {
                        stringArrayExtra = new String[0];
                    }
                    ActivityCompat.h(componentActivity, stringArrayExtra, i);
                    return;
                }
                if (Intrinsics.areEqual("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST", a3.getAction())) {
                    IntentSenderRequest intentSenderRequest = (IntentSenderRequest) a3.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                    try {
                        Intrinsics.checkNotNull(intentSenderRequest);
                        i2 = i;
                    } catch (IntentSender.SendIntentException e) {
                        e = e;
                        i2 = i;
                    }
                    try {
                        componentActivity.startIntentSenderForResult(intentSenderRequest.f63c, i2, intentSenderRequest.f, intentSenderRequest.g, intentSenderRequest.h, 0, bundle2);
                        return;
                    } catch (IntentSender.SendIntentException e2) {
                        e = e2;
                        new Handler(Looper.getMainLooper()).post(new g(i2, 1, this, e));
                        return;
                    }
                }
                componentActivity.startActivityForResult(a3, i, bundle2);
            }
        };
        this.n = new CopyOnWriteArrayList();
        this.o = new CopyOnWriteArrayList();
        this.p = new CopyOnWriteArrayList();
        this.q = new CopyOnWriteArrayList();
        this.r = new CopyOnWriteArrayList();
        this.s = new CopyOnWriteArrayList();
        LifecycleRegistry lifecycleRegistry = this.f624c;
        if (lifecycleRegistry != null) {
            final int i = 1;
            lifecycleRegistry.a(new LifecycleEventObserver(this) { // from class: androidx.activity.b
                public final /* synthetic */ ComponentActivity f;

                {
                    this.f = this;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    Window window;
                    View peekDecorView;
                    switch (i) {
                        case 0:
                            ComponentActivity this$0 = this.f;
                            int i2 = ComponentActivity.x;
                            Intrinsics.checkNotNullParameter(this$0, "this$0");
                            Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                            Intrinsics.checkNotNullParameter(event, "event");
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                this$0.f.b = null;
                                if (!this$0.isChangingConfigurations()) {
                                    this$0.getViewModelStore().a();
                                }
                                ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = this$0.j;
                                ComponentActivity componentActivity = ComponentActivity.this;
                                componentActivity.getWindow().getDecorView().removeCallbacks(reportFullyDrawnExecutorImpl);
                                componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(reportFullyDrawnExecutorImpl);
                                return;
                            }
                            return;
                        default:
                            ComponentActivity this$02 = this.f;
                            int i3 = ComponentActivity.x;
                            Intrinsics.checkNotNullParameter(this$02, "this$0");
                            Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                            Intrinsics.checkNotNullParameter(event, "event");
                            if (event == Lifecycle.Event.ON_STOP && (window = this$02.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
                                peekDecorView.cancelPendingInputEvents();
                                return;
                            }
                            return;
                    }
                }
            });
            final int i2 = 0;
            this.f624c.a(new LifecycleEventObserver(this) { // from class: androidx.activity.b
                public final /* synthetic */ ComponentActivity f;

                {
                    this.f = this;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    Window window;
                    View peekDecorView;
                    switch (i2) {
                        case 0:
                            ComponentActivity this$0 = this.f;
                            int i22 = ComponentActivity.x;
                            Intrinsics.checkNotNullParameter(this$0, "this$0");
                            Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                            Intrinsics.checkNotNullParameter(event, "event");
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                this$0.f.b = null;
                                if (!this$0.isChangingConfigurations()) {
                                    this$0.getViewModelStore().a();
                                }
                                ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = this$0.j;
                                ComponentActivity componentActivity = ComponentActivity.this;
                                componentActivity.getWindow().getDecorView().removeCallbacks(reportFullyDrawnExecutorImpl);
                                componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(reportFullyDrawnExecutorImpl);
                                return;
                            }
                            return;
                        default:
                            ComponentActivity this$02 = this.f;
                            int i3 = ComponentActivity.x;
                            Intrinsics.checkNotNullParameter(this$02, "this$0");
                            Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                            Intrinsics.checkNotNullParameter(event, "event");
                            if (event == Lifecycle.Event.ON_STOP && (window = this$02.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
                                peekDecorView.cancelPendingInputEvents();
                                return;
                            }
                            return;
                    }
                }
            });
            this.f624c.a(new LifecycleEventObserver() { // from class: androidx.activity.ComponentActivity.4
                public AnonymousClass4() {
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void b(LifecycleOwner source, Lifecycle.Event event) {
                    Intrinsics.checkNotNullParameter(source, "source");
                    Intrinsics.checkNotNullParameter(event, "event");
                    int i3 = ComponentActivity.x;
                    ComponentActivity componentActivity = ComponentActivity.this;
                    if (componentActivity.i == null) {
                        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) componentActivity.getLastNonConfigurationInstance();
                        if (nonConfigurationInstances != null) {
                            componentActivity.i = nonConfigurationInstances.f13a;
                        }
                        if (componentActivity.i == null) {
                            componentActivity.i = new ViewModelStore();
                        }
                    }
                    componentActivity.f624c.c(this);
                }
            });
            a2.a();
            SavedStateHandleSupport.b(this);
            if (Build.VERSION.SDK_INT <= 23) {
                this.f624c.a(new ImmLeaksCleaner(this));
            }
            a2.b.c("android:support:activity-result", new SavedStateRegistry.SavedStateProvider() { // from class: androidx.activity.c
                @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
                public final Bundle a() {
                    int i3 = ComponentActivity.x;
                    ComponentActivity this$0 = ComponentActivity.this;
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    Bundle outState = new Bundle();
                    ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = this$0.m;
                    componentActivity$activityResultRegistry$1.getClass();
                    Intrinsics.checkNotNullParameter(outState, "outState");
                    LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.b;
                    outState.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
                    outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
                    outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(componentActivity$activityResultRegistry$1.d));
                    outState.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(componentActivity$activityResultRegistry$1.g));
                    return outState;
                }
            });
            Q(new OnContextAvailableListener() { // from class: androidx.activity.d
                @Override // androidx.activity.contextaware.OnContextAvailableListener
                public final void a(ComponentActivity it) {
                    int i3 = ComponentActivity.x;
                    ComponentActivity this$0 = ComponentActivity.this;
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    Intrinsics.checkNotNullParameter(it, "it");
                    Bundle a3 = this$0.h.b.a("android:support:activity-result");
                    if (a3 != null) {
                        ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = this$0.m;
                        LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.b;
                        LinkedHashMap linkedHashMap2 = componentActivity$activityResultRegistry$1.f54a;
                        Bundle bundle = componentActivity$activityResultRegistry$1.g;
                        ArrayList<Integer> integerArrayList = a3.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                        ArrayList<String> stringArrayList = a3.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                        if (stringArrayList != null && integerArrayList != null) {
                            ArrayList<String> stringArrayList2 = a3.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                            if (stringArrayList2 != null) {
                                componentActivity$activityResultRegistry$1.d.addAll(stringArrayList2);
                            }
                            Bundle bundle2 = a3.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                            if (bundle2 != null) {
                                bundle.putAll(bundle2);
                            }
                            int size = stringArrayList.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                String str = stringArrayList.get(i4);
                                if (linkedHashMap.containsKey(str)) {
                                    Integer num = (Integer) linkedHashMap.remove(str);
                                    if (!bundle.containsKey(str)) {
                                        TypeIntrinsics.asMutableMap(linkedHashMap2).remove(num);
                                    }
                                }
                                Integer num2 = integerArrayList.get(i4);
                                Intrinsics.checkNotNullExpressionValue(num2, "rcs[i]");
                                int intValue = num2.intValue();
                                String str2 = stringArrayList.get(i4);
                                Intrinsics.checkNotNullExpressionValue(str2, "keys[i]");
                                String str3 = str2;
                                linkedHashMap2.put(Integer.valueOf(intValue), str3);
                                componentActivity$activityResultRegistry$1.b.put(str3, Integer.valueOf(intValue));
                            }
                        }
                    }
                }
            });
            this.v = LazyKt.lazy(new Function0<SavedStateViewModelFactory>() { // from class: androidx.activity.ComponentActivity$defaultViewModelProviderFactory$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final SavedStateViewModelFactory invoke() {
                    Bundle bundle;
                    ComponentActivity componentActivity = ComponentActivity.this;
                    Application application = componentActivity.getApplication();
                    if (componentActivity.getIntent() != null) {
                        bundle = componentActivity.getIntent().getExtras();
                    } else {
                        bundle = null;
                    }
                    return new SavedStateViewModelFactory(application, componentActivity, bundle);
                }
            });
            this.w = LazyKt.lazy(new Function0<OnBackPressedDispatcher>() { // from class: androidx.activity.ComponentActivity$onBackPressedDispatcher$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final OnBackPressedDispatcher invoke() {
                    final ComponentActivity componentActivity = ComponentActivity.this;
                    final OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new a(componentActivity, 1));
                    if (Build.VERSION.SDK_INT >= 33) {
                        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.h
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ComponentActivity this$0 = ComponentActivity.this;
                                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                                    OnBackPressedDispatcher dispatcher = onBackPressedDispatcher;
                                    Intrinsics.checkNotNullParameter(dispatcher, "$dispatcher");
                                    int i3 = ComponentActivity.x;
                                    this$0.f624c.a(new e(this$0, dispatcher));
                                }
                            });
                            return onBackPressedDispatcher;
                        }
                        int i3 = ComponentActivity.x;
                        componentActivity.f624c.a(new e(componentActivity, onBackPressedDispatcher));
                    }
                    return onBackPressedDispatcher;
                }
            });
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Override // androidx.core.content.OnTrimMemoryProvider
    public final void F(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.o.add(listener);
    }

    @Override // androidx.core.view.MenuHost
    public final void I(MenuProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        MenuHostHelper menuHostHelper = this.g;
        menuHostHelper.b.add(provider);
        menuHostHelper.f778a.run();
    }

    @Override // androidx.core.app.OnMultiWindowModeChangedProvider
    public final void M(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.q.remove(listener);
    }

    public final void Q(OnContextAvailableListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ContextAwareHelper contextAwareHelper = this.f;
        contextAwareHelper.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        ComponentActivity componentActivity = contextAwareHelper.b;
        if (componentActivity != null) {
            listener.a(componentActivity);
        }
        contextAwareHelper.f46a.add(listener);
    }

    public final void R() {
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        Intrinsics.checkNotNullParameter(decorView, "<this>");
        decorView.setTag(androidx.lifecycle.runtime.R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView2, "window.decorView");
        Intrinsics.checkNotNullParameter(decorView2, "<this>");
        decorView2.setTag(androidx.lifecycle.viewmodel.R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView3, "window.decorView");
        Intrinsics.checkNotNullParameter(decorView3, "<this>");
        decorView3.setTag(androidx.savedstate.R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView4, "window.decorView");
        Intrinsics.checkNotNullParameter(decorView4, "<this>");
        Intrinsics.checkNotNullParameter(this, "onBackPressedDispatcherOwner");
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView5, "window.decorView");
        Intrinsics.checkNotNullParameter(decorView5, "<this>");
        Intrinsics.checkNotNullParameter(this, "fullyDrawnReporterOwner");
        decorView5.setTag(R.id.report_drawn, this);
    }

    public final ActivityResultLauncher S(ActivityResultContract contract, ActivityResultCallback callback) {
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(contract, "contract");
        ComponentActivity$activityResultRegistry$1 registry = this.m;
        Intrinsics.checkNotNullParameter(registry, "registry");
        Intrinsics.checkNotNullParameter(callback, "callback");
        return registry.d("activity_rq#" + this.l.getAndIncrement(), this, contract, callback);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        R();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        this.j.a(decorView);
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        Bundle bundle;
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        if (getApplication() != null) {
            CreationExtras.Key key = ViewModelProvider.AndroidViewModelFactory.e;
            Application application = getApplication();
            Intrinsics.checkNotNullExpressionValue(application, "application");
            mutableCreationExtras.b(key, application);
        }
        mutableCreationExtras.b(SavedStateHandleSupport.f1217a, this);
        mutableCreationExtras.b(SavedStateHandleSupport.b, this);
        Intent intent = getIntent();
        if (intent != null) {
            bundle = intent.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            mutableCreationExtras.b(SavedStateHandleSupport.f1218c, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return (ViewModelProvider.Factory) this.v.getValue();
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.f624c;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.h.b;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        if (getApplication() != null) {
            if (this.i == null) {
                NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
                if (nonConfigurationInstances != null) {
                    this.i = nonConfigurationInstances.f13a;
                }
                if (this.i == null) {
                    this.i = new ViewModelStore();
                }
            }
            ViewModelStore viewModelStore = this.i;
            Intrinsics.checkNotNull(viewModelStore);
            return viewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    /* renamed from: n */
    public final OnBackPressedDispatcher getG() {
        return (OnBackPressedDispatcher) this.w.getValue();
    }

    @Override // androidx.core.view.MenuHost
    public final void o(MenuProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.g.a(provider);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!b(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getG().c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(newConfig);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.h.b(bundle);
        ContextAwareHelper contextAwareHelper = this.f;
        contextAwareHelper.getClass();
        Intrinsics.checkNotNullParameter(this, "context");
        contextAwareHelper.b = this;
        Iterator it = contextAwareHelper.f46a.iterator();
        while (it.hasNext()) {
            ((OnContextAvailableListener) it.next()).a(this);
        }
        super.onCreate(bundle);
        int i = ReportFragment.f;
        ReportFragment.Companion.b(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        if (i == 0) {
            super.onCreatePanelMenu(i, menu);
            MenuInflater menuInflater = getMenuInflater();
            Iterator it = this.g.b.iterator();
            while (it.hasNext()) {
                ((MenuProvider) it.next()).c(menu, menuInflater);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (super.onMenuItemSelected(i, item)) {
            return true;
        }
        if (i == 0) {
            Iterator it = this.g.b.iterator();
            while (it.hasNext()) {
                if (((MenuProvider) it.next()).a(item)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.t) {
            return;
        }
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new MultiWindowModeChangedInfo(z));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Iterator it = this.g.b.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.u) {
            return;
        }
        Iterator it = this.r.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new PictureInPictureModeChangedInfo(z));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        if (i == 0) {
            super.onPreparePanel(i, view, menu);
            Iterator it = this.g.b.iterator();
            while (it.hasNext()) {
                ((MenuProvider) it.next()).d(menu);
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if (!b(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", permissions).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", grantResults))) {
            super.onRequestPermissionsResult(i, permissions, grantResults);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.activity.ComponentActivity$NonConfigurationInstances, java.lang.Object] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances;
        ViewModelStore viewModelStore = this.i;
        if (viewModelStore == null && (nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance()) != null) {
            viewModelStore = nonConfigurationInstances.f13a;
        }
        if (viewModelStore == null) {
            return null;
        }
        ?? obj = new Object();
        obj.f13a = viewModelStore;
        return obj;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        LifecycleRegistry lifecycleRegistry = this.f624c;
        if (lifecycleRegistry != null) {
            Intrinsics.checkNotNull(lifecycleRegistry, "null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry");
            lifecycleRegistry.h();
        }
        super.onSaveInstanceState(outState);
        this.h.c(outState);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator it = this.s.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    @Override // androidx.core.content.OnConfigurationChangedProvider
    public final void p(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.n.add(listener);
    }

    @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
    public final void r(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.r.remove(listener);
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (Trace.b()) {
                Trace.a("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            ((FullyDrawnReporter) this.k.getValue()).a();
            android.os.Trace.endSection();
        } catch (Throwable th) {
            android.os.Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.core.content.OnTrimMemoryProvider
    public final void s(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.o.remove(listener);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        R();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        this.j.a(decorView);
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intent, int i, Intent intent2, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.startIntentSenderForResult(intent, i, intent2, i2, i3, i4);
    }

    @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
    public final void t(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.r.add(listener);
    }

    @Override // androidx.activity.result.ActivityResultRegistryOwner
    public final ActivityResultRegistry v() {
        return this.m;
    }

    @Override // androidx.core.app.OnMultiWindowModeChangedProvider
    public final void w(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.q.add(listener);
    }

    @Override // androidx.core.content.OnConfigurationChangedProvider
    public final void y(Consumer listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.n.remove(listener);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intent, int i, Intent intent2, int i2, int i3, int i4, Bundle bundle) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.startIntentSenderForResult(intent, i, intent2, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.t = true;
        try {
            super.onMultiWindowModeChanged(z, newConfig);
            this.t = false;
            Iterator it = this.q.iterator();
            while (it.hasNext()) {
                Consumer consumer = (Consumer) it.next();
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                consumer.accept(new MultiWindowModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.t = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.u = true;
        try {
            super.onPictureInPictureModeChanged(z, newConfig);
            this.u = false;
            Iterator it = this.r.iterator();
            while (it.hasNext()) {
                Consumer consumer = (Consumer) it.next();
                Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                consumer.accept(new PictureInPictureModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.u = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(@Nullable View view) {
        R();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        this.j.a(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        R();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        this.j.a(decorView);
        super.setContentView(view, layoutParams);
    }
}
