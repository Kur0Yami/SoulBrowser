package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.lifecycle.Lifecycle;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry;", "Landroidx/lifecycle/Lifecycle;", "Companion", "ObserverWithState", "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1200a;
    public FastSafeIterableMap b;

    /* renamed from: c, reason: collision with root package name */
    public Lifecycle.State f1201c;
    public final WeakReference d;
    public int e;
    public boolean f;
    public boolean g;
    public final ArrayList h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ObserverWithState {

        /* renamed from: a, reason: collision with root package name */
        public Lifecycle.State f1202a;
        public LifecycleEventObserver b;

        public final void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(event, "event");
            Lifecycle.State a2 = event.a();
            Lifecycle.State state1 = this.f1202a;
            Intrinsics.checkNotNullParameter(state1, "state1");
            if (a2.compareTo(state1) < 0) {
                state1 = a2;
            }
            this.f1202a = state1;
            LifecycleEventObserver lifecycleEventObserver = this.b;
            Intrinsics.checkNotNull(lifecycleOwner);
            lifecycleEventObserver.b(lifecycleOwner, event);
            this.f1202a = a2;
        }
    }

    public LifecycleRegistry(LifecycleOwner provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        new AtomicReference();
        this.f1200a = true;
        this.b = new FastSafeIterableMap();
        this.f1201c = Lifecycle.State.f;
        this.h = new ArrayList();
        this.d = new WeakReference(provider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.lifecycle.LifecycleRegistry$ObserverWithState] */
    @Override // androidx.lifecycle.Lifecycle
    public final void a(LifecycleObserver object) {
        LifecycleEventObserver reflectiveGenericLifecycleObserver;
        LifecycleOwner lifecycleOwner;
        Intrinsics.checkNotNullParameter(object, "observer");
        e("addObserver");
        Lifecycle.State state = this.f1201c;
        Lifecycle.State initialState = Lifecycle.State.f1198c;
        if (state != initialState) {
            initialState = Lifecycle.State.f;
        }
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        ?? obj = new Object();
        Intrinsics.checkNotNull(object);
        HashMap hashMap = Lifecycling.f1204a;
        Intrinsics.checkNotNullParameter(object, "object");
        boolean z = object instanceof LifecycleEventObserver;
        boolean z2 = object instanceof DefaultLifecycleObserver;
        boolean z3 = false;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, (LifecycleEventObserver) object);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (LifecycleEventObserver) object;
        } else {
            Class<?> cls = object.getClass();
            if (Lifecycling.c(cls) == 2) {
                Object obj2 = Lifecycling.b.get(cls);
                Intrinsics.checkNotNull(obj2);
                List list = (List) obj2;
                if (list.size() == 1) {
                    reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(Lifecycling.a((Constructor) list.get(0), object));
                } else {
                    int size = list.size();
                    GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
                    for (int i = 0; i < size; i++) {
                        generatedAdapterArr[i] = Lifecycling.a((Constructor) list.get(i), object);
                    }
                    reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(object);
            }
        }
        obj.b = reflectiveGenericLifecycleObserver;
        obj.f1202a = initialState;
        if (((ObserverWithState) this.b.c(object, obj)) != null || (lifecycleOwner = (LifecycleOwner) this.d.get()) == null) {
            return;
        }
        if (this.e != 0 || this.f) {
            z3 = true;
        }
        Lifecycle.State d = d(object);
        this.e++;
        while (obj.f1202a.compareTo(d) < 0 && this.b.i.containsKey(object)) {
            Lifecycle.State state2 = obj.f1202a;
            ArrayList arrayList = this.h;
            arrayList.add(state2);
            Lifecycle.Event.Companion companion = Lifecycle.Event.INSTANCE;
            Lifecycle.State state3 = obj.f1202a;
            companion.getClass();
            Lifecycle.Event a2 = Lifecycle.Event.Companion.a(state3);
            if (a2 != null) {
                obj.a(lifecycleOwner, a2);
                arrayList.remove(arrayList.size() - 1);
                d = d(object);
            } else {
                throw new IllegalStateException("no event up from " + obj.f1202a);
            }
        }
        if (!z3) {
            i();
        }
        this.e--;
    }

    @Override // androidx.lifecycle.Lifecycle
    /* renamed from: b, reason: from getter */
    public final Lifecycle.State getF1201c() {
        return this.f1201c;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void c(LifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        e("removeObserver");
        this.b.g(observer);
    }

    public final Lifecycle.State d(LifecycleObserver lifecycleObserver) {
        Lifecycle.State state1;
        ObserverWithState observerWithState;
        Map.Entry i = this.b.i(lifecycleObserver);
        Lifecycle.State state = null;
        if (i != null && (observerWithState = (ObserverWithState) i.getValue()) != null) {
            state1 = observerWithState.f1202a;
        } else {
            state1 = null;
        }
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            state = (Lifecycle.State) android.support.v4.media.a.c(1, arrayList);
        }
        Lifecycle.State state12 = this.f1201c;
        Intrinsics.checkNotNullParameter(state12, "state1");
        if (state1 == null || state1.compareTo(state12) >= 0) {
            state1 = state12;
        }
        Intrinsics.checkNotNullParameter(state1, "state1");
        if (state != null && state.compareTo(state1) < 0) {
            return state;
        }
        return state1;
    }

    public final void e(String str) {
        if (this.f1200a) {
            ArchTaskExecutor.a().f357a.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            } else {
                throw new IllegalStateException(android.support.v4.media.a.l("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void f(Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        e("handleLifecycleEvent");
        g(event.a());
    }

    public final void g(Lifecycle.State state) {
        Lifecycle.State state2 = this.f1201c;
        if (state2 != state) {
            Lifecycle.State state3 = Lifecycle.State.f;
            Lifecycle.State state4 = Lifecycle.State.f1198c;
            if (state2 == state3 && state == state4) {
                throw new IllegalStateException(("no event down from " + this.f1201c + " in component " + this.d.get()).toString());
            }
            this.f1201c = state;
            if (!this.f && this.e == 0) {
                this.f = true;
                i();
                this.f = false;
                if (this.f1201c == state4) {
                    this.b = new FastSafeIterableMap();
                    return;
                }
                return;
            }
            this.g = true;
        }
    }

    public final void h() {
        Lifecycle.State state = Lifecycle.State.g;
        Intrinsics.checkNotNullParameter(state, "state");
        e("setCurrentState");
        g(state);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        r8.g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LifecycleRegistry.i():void");
    }
}
