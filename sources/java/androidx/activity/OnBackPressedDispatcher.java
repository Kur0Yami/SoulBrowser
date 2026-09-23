package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api33Impl", "Api34Impl", "LifecycleOnBackPressedCancellable", "OnBackPressedCancellable", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnBackPressedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,433:1\n1747#2,3:434\n533#2,6:437\n533#2,6:443\n533#2,6:449\n533#2,6:455\n*S KotlinDebug\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n*L\n114#1:434,3\n233#1:437,6\n254#1:443,6\n274#1:449,6\n293#1:455,6\n*E\n"})
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f30a;
    public final ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public OnBackPressedCallback f31c;
    public final OnBackInvokedCallback d;
    public OnBackInvokedDispatcher e;
    public boolean f;
    public boolean g;

    @RequiresApi
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001J'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher$Api33Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "dispatcher", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "priority", "callback", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "b", "(Ljava/lang/Object;ILjava/lang/Object;)V", "c", "(Ljava/lang/Object;Ljava/lang/Object;)V", "Lkotlin/Function0;", "onBackInvoked", "Landroid/window/OnBackInvokedCallback;", "a", "(Lkotlin/jvm/functions/Function0;)Landroid/window/OnBackInvokedCallback;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api33Impl {

        /* renamed from: a, reason: collision with root package name */
        public static final Api33Impl f37a = new Object();

        @DoNotInline
        @NotNull
        public final OnBackInvokedCallback a(@NotNull final Function0<Unit> onBackInvoked) {
            Intrinsics.checkNotNullParameter(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.j
                public final void onBackInvoked() {
                    Function0 onBackInvoked2 = Function0.this;
                    Intrinsics.checkNotNullParameter(onBackInvoked2, "$onBackInvoked");
                    onBackInvoked2.invoke();
                }
            };
        }

        @DoNotInline
        public final void b(@NotNull Object dispatcher, int priority, @NotNull Object callback) {
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(priority, (OnBackInvokedCallback) callback);
        }

        @DoNotInline
        public final void c(@NotNull Object dispatcher, @NotNull Object callback) {
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001Jq\u0010\u000e\u001a\u00020\r2!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u00022!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\nH\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher$Api34Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlin/Function1;", "Landroidx/activity/BackEventCompat;", "Lkotlin/ParameterName;", "name", "backEvent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "onBackStarted", "onBackProgressed", "Lkotlin/Function0;", "onBackInvoked", "onBackCancelled", "Landroid/window/OnBackInvokedCallback;", "a", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/window/OnBackInvokedCallback;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api34Impl {

        /* renamed from: a, reason: collision with root package name */
        public static final Api34Impl f38a = new Object();

        @DoNotInline
        @NotNull
        public final OnBackInvokedCallback a(@NotNull final Function1<? super BackEventCompat, Unit> onBackStarted, @NotNull final Function1<? super BackEventCompat, Unit> onBackProgressed, @NotNull final Function0<Unit> onBackInvoked, @NotNull final Function0<Unit> onBackCancelled) {
            Intrinsics.checkNotNullParameter(onBackStarted, "onBackStarted");
            Intrinsics.checkNotNullParameter(onBackProgressed, "onBackProgressed");
            Intrinsics.checkNotNullParameter(onBackInvoked, "onBackInvoked");
            Intrinsics.checkNotNullParameter(onBackCancelled, "onBackCancelled");
            return new OnBackAnimationCallback() { // from class: androidx.activity.OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1
                public final void onBackCancelled() {
                    onBackCancelled.invoke();
                }

                public final void onBackInvoked() {
                    onBackInvoked.invoke();
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                    onBackProgressed.invoke(new BackEventCompat(backEvent));
                }

                public final void onBackStarted(BackEvent backEvent) {
                    Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                    Function1.this.invoke(new BackEventCompat(backEvent));
                }
            };
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/activity/Cancellable;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {

        /* renamed from: c, reason: collision with root package name */
        public final Lifecycle f41c;
        public final OnBackPressedCallback f;
        public Cancellable g;
        public final /* synthetic */ OnBackPressedDispatcher h;

        public LifecycleOnBackPressedCancellable(OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle, OnBackPressedCallback onBackPressedCallback) {
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
            this.h = onBackPressedDispatcher;
            this.f41c = lifecycle;
            this.f = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner source, Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = this.h;
                onBackPressedDispatcher.getClass();
                OnBackPressedCallback onBackPressedCallback = this.f;
                Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
                onBackPressedDispatcher.b.add(onBackPressedCallback);
                OnBackPressedCancellable cancellable = new OnBackPressedCancellable(onBackPressedDispatcher, onBackPressedCallback);
                Intrinsics.checkNotNullParameter(cancellable, "cancellable");
                onBackPressedCallback.b.add(cancellable);
                onBackPressedDispatcher.e();
                onBackPressedCallback.f29c = new FunctionReferenceImpl(0, onBackPressedDispatcher, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
                this.g = cancellable;
                return;
            }
            if (event == Lifecycle.Event.ON_STOP) {
                Cancellable cancellable2 = this.g;
                if (cancellable2 != null) {
                    ((OnBackPressedCancellable) cancellable2).cancel();
                    return;
                }
                return;
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.Cancellable
        public final void cancel() {
            this.f41c.c(this);
            OnBackPressedCallback onBackPressedCallback = this.f;
            onBackPressedCallback.getClass();
            Intrinsics.checkNotNullParameter(this, "cancellable");
            onBackPressedCallback.b.remove(this);
            Cancellable cancellable = this.g;
            if (cancellable != null) {
                ((OnBackPressedCancellable) cancellable).cancel();
            }
            this.g = null;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;", "Landroidx/activity/Cancellable;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class OnBackPressedCancellable implements Cancellable {

        /* renamed from: c, reason: collision with root package name */
        public final OnBackPressedCallback f42c;
        public final /* synthetic */ OnBackPressedDispatcher f;

        public OnBackPressedCancellable(OnBackPressedDispatcher onBackPressedDispatcher, OnBackPressedCallback onBackPressedCallback) {
            Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
            this.f = onBackPressedDispatcher;
            this.f42c = onBackPressedCallback;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.jvm.internal.FunctionReferenceImpl, kotlin.jvm.functions.Function0] */
        @Override // androidx.activity.Cancellable
        public final void cancel() {
            OnBackPressedDispatcher onBackPressedDispatcher = this.f;
            ArrayDeque arrayDeque = onBackPressedDispatcher.b;
            OnBackPressedCallback onBackPressedCallback = this.f42c;
            arrayDeque.remove(onBackPressedCallback);
            if (Intrinsics.areEqual(onBackPressedDispatcher.f31c, onBackPressedCallback)) {
                onBackPressedCallback.getClass();
                onBackPressedDispatcher.f31c = null;
            }
            onBackPressedCallback.getClass();
            Intrinsics.checkNotNullParameter(this, "cancellable");
            onBackPressedCallback.b.remove(this);
            ?? r0 = onBackPressedCallback.f29c;
            if (r0 != 0) {
                r0.invoke();
            }
            onBackPressedCallback.f29c = null;
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        OnBackInvokedCallback a2;
        this.f30a = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            if (i >= 34) {
                a2 = Api34Impl.f38a.a(new Function1<BackEventCompat, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(BackEventCompat backEventCompat) {
                        Object obj;
                        BackEventCompat backEvent = backEventCompat;
                        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                        ArrayDeque arrayDeque = onBackPressedDispatcher.b;
                        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
                        while (true) {
                            if (listIterator.hasPrevious()) {
                                obj = listIterator.previous();
                                if (((OnBackPressedCallback) obj).f28a) {
                                    break;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        OnBackPressedCallback onBackPressedCallback = (OnBackPressedCallback) obj;
                        if (onBackPressedDispatcher.f31c != null) {
                            onBackPressedDispatcher.b();
                        }
                        onBackPressedDispatcher.f31c = onBackPressedCallback;
                        if (onBackPressedCallback != null) {
                            Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        }
                        return Unit.INSTANCE;
                    }
                }, new Function1<BackEventCompat, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.2
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(BackEventCompat backEventCompat) {
                        Object obj;
                        BackEventCompat backEvent = backEventCompat;
                        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                        OnBackPressedCallback onBackPressedCallback = onBackPressedDispatcher.f31c;
                        if (onBackPressedCallback == null) {
                            ArrayDeque arrayDeque = onBackPressedDispatcher.b;
                            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
                            while (true) {
                                if (listIterator.hasPrevious()) {
                                    obj = listIterator.previous();
                                    if (((OnBackPressedCallback) obj).f28a) {
                                        break;
                                    }
                                } else {
                                    obj = null;
                                    break;
                                }
                            }
                            onBackPressedCallback = (OnBackPressedCallback) obj;
                        }
                        if (onBackPressedCallback != null) {
                            Intrinsics.checkNotNullParameter(backEvent, "backEvent");
                        }
                        return Unit.INSTANCE;
                    }
                }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.3
                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        OnBackPressedDispatcher.this.c();
                        return Unit.INSTANCE;
                    }
                }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.4
                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        OnBackPressedDispatcher.this.b();
                        return Unit.INSTANCE;
                    }
                });
            } else {
                a2 = Api33Impl.f37a.a(new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.5
                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        OnBackPressedDispatcher.this.c();
                        return Unit.INSTANCE;
                    }
                });
            }
            this.d = a2;
        }
    }

    public final void a(LifecycleOwner owner, OnBackPressedCallback onBackPressedCallback) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        Lifecycle lifecycle = owner.getLifecycle();
        if (lifecycle.getF1201c() == Lifecycle.State.f1198c) {
            return;
        }
        LifecycleOnBackPressedCancellable cancellable = new LifecycleOnBackPressedCancellable(this, lifecycle, onBackPressedCallback);
        onBackPressedCallback.getClass();
        Intrinsics.checkNotNullParameter(cancellable, "cancellable");
        onBackPressedCallback.b.add(cancellable);
        e();
        onBackPressedCallback.f29c = new FunctionReferenceImpl(0, this, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
    }

    public final void b() {
        Object obj;
        if (this.f31c == null) {
            ArrayDeque arrayDeque = this.b;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    obj = listIterator.previous();
                    if (((OnBackPressedCallback) obj).f28a) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
        }
        this.f31c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public final void c() {
        OnBackPressedCallback onBackPressedCallback;
        OnBackPressedCallback onBackPressedCallback2 = this.f31c;
        if (onBackPressedCallback2 == null) {
            ArrayDeque arrayDeque = this.b;
            ListIterator listIterator = arrayDeque.listIterator(arrayDeque.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    onBackPressedCallback = listIterator.previous();
                    if (((OnBackPressedCallback) onBackPressedCallback).f28a) {
                        break;
                    }
                } else {
                    onBackPressedCallback = 0;
                    break;
                }
            }
            onBackPressedCallback2 = onBackPressedCallback;
        }
        this.f31c = null;
        if (onBackPressedCallback2 != null) {
            onBackPressedCallback2.a();
        } else {
            this.f30a.run();
        }
    }

    public final void d(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.e;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.d) != null) {
            Api33Impl api33Impl = Api33Impl.f37a;
            if (z && !this.f) {
                api33Impl.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.f = true;
            } else if (!z && this.f) {
                api33Impl.c(onBackInvokedDispatcher, onBackInvokedCallback);
                this.f = false;
            }
        }
    }

    public final void e() {
        boolean z = this.g;
        boolean z2 = false;
        ArrayDeque arrayDeque = this.b;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((OnBackPressedCallback) it.next()).f28a) {
                    z2 = true;
                    break;
                }
            }
        }
        this.g = z2;
        if (z2 != z && Build.VERSION.SDK_INT >= 33) {
            d(z2);
        }
    }
}
