package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f1205a = new Object();
    public final SafeIterableMap b = new SafeIterableMap();

    /* renamed from: c, reason: collision with root package name */
    public int f1206c = 0;
    public boolean d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;
    public final Runnable j;

    /* loaded from: classes.dex */
    public class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean g() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {
        public final LifecycleOwner i;

        public LifecycleBoundObserver(LifecycleOwner lifecycleOwner, Observer observer) {
            super(observer);
            this.i = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            LifecycleOwner lifecycleOwner2 = this.i;
            Lifecycle.State b = lifecycleOwner2.getLifecycle().b();
            if (b == Lifecycle.State.f1198c) {
                LiveData.this.h(this.f1208c);
                return;
            }
            Lifecycle.State state = null;
            while (state != b) {
                c(g());
                state = b;
                b = lifecycleOwner2.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final void e() {
            this.i.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean f(LifecycleOwner lifecycleOwner) {
            if (this.i == lifecycleOwner) {
                return true;
            }
            return false;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        public final boolean g() {
            return this.i.getLifecycle().b().a(Lifecycle.State.h);
        }
    }

    /* loaded from: classes.dex */
    public abstract class ObserverWrapper {

        /* renamed from: c, reason: collision with root package name */
        public final Observer f1208c;
        public boolean f;
        public int g = -1;

        public ObserverWrapper(Observer observer) {
            this.f1208c = observer;
        }

        public final void c(boolean z) {
            int i;
            boolean z2;
            boolean z3;
            if (z != this.f) {
                this.f = z;
                if (z) {
                    i = 1;
                } else {
                    i = -1;
                }
                LiveData liveData = LiveData.this;
                int i2 = liveData.f1206c;
                liveData.f1206c = i + i2;
                if (!liveData.d) {
                    liveData.d = true;
                    while (true) {
                        try {
                            int i3 = liveData.f1206c;
                            if (i2 == i3) {
                                break;
                            }
                            if (i2 == 0 && i3 > 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (i2 > 0 && i3 == 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z2) {
                                liveData.f();
                            } else if (z3) {
                                liveData.g();
                            }
                            i2 = i3;
                        } catch (Throwable th) {
                            liveData.d = false;
                            throw th;
                        }
                    }
                    liveData.d = false;
                }
                if (this.f) {
                    liveData.c(this);
                }
            }
        }

        public void e() {
        }

        public boolean f(LifecycleOwner lifecycleOwner) {
            return false;
        }

        public abstract boolean g();
    }

    public LiveData() {
        Object obj = k;
        this.f = obj;
        this.j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            @Override // java.lang.Runnable
            public final void run() {
                Object obj2;
                synchronized (LiveData.this.f1205a) {
                    obj2 = LiveData.this.f;
                    LiveData.this.f = LiveData.k;
                }
                LiveData.this.i(obj2);
            }
        };
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        ArchTaskExecutor.a().f357a.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
        } else {
            throw new IllegalStateException(android.support.v4.media.a.l("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(ObserverWrapper observerWrapper) {
        if (observerWrapper.f) {
            if (!observerWrapper.g()) {
                observerWrapper.c(false);
                return;
            }
            int i = observerWrapper.g;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            observerWrapper.g = i2;
            observerWrapper.f1208c.a(this.e);
        }
    }

    public final void c(ObserverWrapper observerWrapper) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (observerWrapper != null) {
                b(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap safeIterableMap = this.b;
                safeIterableMap.getClass();
                SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = new SafeIterableMap.IteratorWithAdditions();
                safeIterableMap.g.put(iteratorWithAdditions, Boolean.FALSE);
                while (iteratorWithAdditions.hasNext()) {
                    b((ObserverWrapper) ((Map.Entry) iteratorWithAdditions.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final void d(LifecycleOwner lifecycleOwner, Observer observer) {
        a("observe");
        if (lifecycleOwner.getLifecycle().b() != Lifecycle.State.f1198c) {
            LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
            ObserverWrapper observerWrapper = (ObserverWrapper) this.b.c(observer, lifecycleBoundObserver);
            if (observerWrapper != null && !observerWrapper.f(lifecycleOwner)) {
                throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
            }
            if (observerWrapper != null) {
                return;
            }
            lifecycleOwner.getLifecycle().a(lifecycleBoundObserver);
        }
    }

    public final void e(Observer observer) {
        a("observeForever");
        ObserverWrapper observerWrapper = new ObserverWrapper(observer);
        ObserverWrapper observerWrapper2 = (ObserverWrapper) this.b.c(observer, observerWrapper);
        if (!(observerWrapper2 instanceof LifecycleBoundObserver)) {
            if (observerWrapper2 != null) {
                return;
            }
            observerWrapper.c(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    public void f() {
    }

    public void g() {
    }

    public void h(Observer observer) {
        a("removeObserver");
        ObserverWrapper observerWrapper = (ObserverWrapper) this.b.g(observer);
        if (observerWrapper == null) {
            return;
        }
        observerWrapper.e();
        observerWrapper.c(false);
    }

    public void i(Object obj) {
        a("setValue");
        this.g++;
        this.e = obj;
        c(null);
    }
}
