package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDispatcher;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleInitializer;", "Landroidx/startup/Initializer;", "Landroidx/lifecycle/LifecycleOwner;", "<init>", "()V", "lifecycle-process_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Initializer<LifecycleOwner> {
    @Override // androidx.startup.Initializer
    public final List a() {
        return CollectionsKt.emptyList();
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AppInitializer c2 = AppInitializer.c(context);
        Intrinsics.checkNotNullExpressionValue(c2, "getInstance(context)");
        if (c2.b.contains(ProcessLifecycleInitializer.class)) {
            AtomicBoolean atomicBoolean = LifecycleDispatcher.f1199a;
            Intrinsics.checkNotNullParameter(context, "context");
            if (!LifecycleDispatcher.f1199a.getAndSet(true)) {
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new LifecycleDispatcher.DispatcherActivityCallback());
            }
            ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.m;
            Intrinsics.checkNotNullParameter(context, "context");
            final ProcessLifecycleOwner processLifecycleOwner2 = ProcessLifecycleOwner.m;
            processLifecycleOwner2.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            processLifecycleOwner2.i = new Handler();
            processLifecycleOwner2.j.f(Lifecycle.Event.ON_CREATE);
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.checkNotNull(applicationContext2, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle savedInstanceState) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    if (Build.VERSION.SDK_INT < 29) {
                        int i = ReportFragment.f;
                        Intrinsics.checkNotNullParameter(activity, "<this>");
                        Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
                        Intrinsics.checkNotNull(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
                        ((ReportFragment) findFragmentByTag).f1212c = ProcessLifecycleOwner.this.l;
                    }
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    ProcessLifecycleOwner processLifecycleOwner3 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner3.f - 1;
                    processLifecycleOwner3.f = i;
                    if (i == 0) {
                        Handler handler = processLifecycleOwner3.i;
                        Intrinsics.checkNotNull(handler);
                        handler.postDelayed(processLifecycleOwner3.k, 700L);
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                @RequiresApi
                public void onActivityPreCreated(@NotNull Activity activity, @Nullable Bundle savedInstanceState) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    final ProcessLifecycleOwner processLifecycleOwner3 = ProcessLifecycleOwner.this;
                    ProcessLifecycleOwner.Api29Impl.a(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostResumed(@NotNull Activity activity2) {
                            Intrinsics.checkNotNullParameter(activity2, "activity");
                            ProcessLifecycleOwner.this.a();
                        }

                        @Override // android.app.Application.ActivityLifecycleCallbacks
                        public void onActivityPostStarted(@NotNull Activity activity2) {
                            Intrinsics.checkNotNullParameter(activity2, "activity");
                            ProcessLifecycleOwner processLifecycleOwner4 = ProcessLifecycleOwner.this;
                            int i = processLifecycleOwner4.f1209c + 1;
                            processLifecycleOwner4.f1209c = i;
                            if (i == 1 && processLifecycleOwner4.h) {
                                processLifecycleOwner4.j.f(Lifecycle.Event.ON_START);
                                processLifecycleOwner4.h = false;
                            }
                        }
                    });
                }

                @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    ProcessLifecycleOwner processLifecycleOwner3 = ProcessLifecycleOwner.this;
                    int i = processLifecycleOwner3.f1209c - 1;
                    processLifecycleOwner3.f1209c = i;
                    if (i == 0 && processLifecycleOwner3.g) {
                        processLifecycleOwner3.j.f(Lifecycle.Event.ON_STOP);
                        processLifecycleOwner3.h = true;
                    }
                }
            });
            return processLifecycleOwner2;
        }
        throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
    }
}
