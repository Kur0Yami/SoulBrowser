package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements LifecycleEventObserver {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnBackPressedDispatcher f48c;
    public final /* synthetic */ ComponentActivity f;

    public /* synthetic */ e(ComponentActivity componentActivity, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.f48c = onBackPressedDispatcher;
        this.f = componentActivity;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = ComponentActivity.x;
        OnBackPressedDispatcher dispatcher = this.f48c;
        Intrinsics.checkNotNullParameter(dispatcher, "$dispatcher");
        ComponentActivity this$0 = this.f;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            OnBackInvokedDispatcher invoker = ComponentActivity.Api33Impl.f12a.a(this$0);
            Intrinsics.checkNotNullParameter(invoker, "invoker");
            dispatcher.e = invoker;
            dispatcher.d(dispatcher.g);
        }
    }
}
