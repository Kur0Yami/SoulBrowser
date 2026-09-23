package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class ComponentRuntime extends AbstractComponentContainer implements ComponentLoader {
    public static final Provider f = null;
    public final EventBus d;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12611a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f12612c = new HashMap();
    public final AtomicReference e = new AtomicReference();

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Executor f12617a;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f12618c = new ArrayList();

        public Builder(Executor executor) {
            this.f12617a = executor;
        }
    }

    public ComponentRuntime(Executor executor, ArrayList arrayList, ArrayList arrayList2) {
        EventBus eventBus = new EventBus(executor);
        this.d = eventBus;
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        arrayList3.add(Component.b(eventBus, EventBus.class, Subscriber.class, Publisher.class));
        arrayList3.add(Component.b(this, ComponentLoader.class, new Class[0]));
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            Component component = (Component) obj;
            if (component != null) {
                arrayList3.add(component);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((Provider) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(componentRegistrar.a());
                        it.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f12611a.isEmpty()) {
                CycleDetector.a(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f12611a.keySet());
                arrayList6.addAll(arrayList3);
                CycleDetector.a(arrayList6);
            }
            int size3 = arrayList3.size();
            int i4 = 0;
            while (i4 < size3) {
                Object obj3 = arrayList3.get(i4);
                i4++;
                final Component component2 = (Component) obj3;
                this.f12611a.put(component2, new Lazy(new Provider(this, component2) { // from class: com.google.firebase.components.ComponentRuntime$$Lambda$1

                    /* renamed from: a, reason: collision with root package name */
                    public final ComponentRuntime f12613a;
                    public final Component b;

                    {
                        this.f12613a = this;
                        this.b = component2;
                    }

                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        Provider provider = ComponentRuntime.f;
                        Component component3 = this.b;
                        return component3.d.a(new RestrictedComponentContainer(component3, this.f12613a));
                    }
                }));
            }
            arrayList5.addAll(h(arrayList3));
            arrayList5.addAll(i());
            g();
        }
        int size4 = arrayList5.size();
        while (i < size4) {
            Object obj4 = arrayList5.get(i);
            i++;
            ((Runnable) obj4).run();
        }
        Boolean bool = (Boolean) this.e.get();
        if (bool != null) {
            e(this.f12611a, bool.booleanValue());
        }
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider b(Class cls) {
        return (Provider) this.b.get(cls);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider c(Class cls) {
        LazySet lazySet = (LazySet) this.f12612c.get(cls);
        if (lazySet != null) {
            return lazySet;
        }
        return ComponentRuntime$$Lambda$5.f12616a;
    }

    public final void e(HashMap hashMap, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : hashMap.entrySet()) {
            Component component = (Component) entry.getKey();
            component.getClass();
        }
        EventBus eventBus = this.d;
        synchronized (eventBus) {
            try {
                arrayDeque = eventBus.b;
                if (arrayDeque != null) {
                    eventBus.b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                eventBus.b((Event) it.next());
            }
        }
    }

    public final void f() {
        HashMap hashMap;
        AtomicReference atomicReference = this.e;
        Boolean bool = Boolean.TRUE;
        while (!atomicReference.compareAndSet(null, bool)) {
            if (atomicReference.get() != null) {
                return;
            }
        }
        synchronized (this) {
            hashMap = new HashMap(this.f12611a);
        }
        e(hashMap, true);
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, com.google.firebase.components.OptionalProvider] */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.google.firebase.components.LazySet, java.lang.Object] */
    public final void g() {
        for (Component component : this.f12611a.keySet()) {
            for (Dependency dependency : component.b) {
                if (dependency.b == 2 && !this.f12612c.containsKey(dependency.f12622a)) {
                    HashMap hashMap = this.f12612c;
                    Class cls = dependency.f12622a;
                    Set set = Collections.EMPTY_SET;
                    ?? obj = new Object();
                    obj.b = null;
                    obj.f12629a = Collections.newSetFromMap(new ConcurrentHashMap());
                    obj.f12629a.addAll(set);
                    hashMap.put(cls, obj);
                } else if (this.b.containsKey(dependency.f12622a)) {
                    continue;
                } else {
                    int i = dependency.b;
                    if (i != 1) {
                        if (i != 2) {
                            HashMap hashMap2 = this.b;
                            Class cls2 = dependency.f12622a;
                            OptionalProvider$$Lambda$4 optionalProvider$$Lambda$4 = OptionalProvider$$Lambda$4.f12632a;
                            OptionalProvider$$Lambda$5 optionalProvider$$Lambda$5 = OptionalProvider$$Lambda$5.f12633a;
                            ?? obj2 = new Object();
                            obj2.f12631a = optionalProvider$$Lambda$4;
                            obj2.b = optionalProvider$$Lambda$5;
                            hashMap2.put(cls2, obj2);
                        }
                    } else {
                        throw new RuntimeException("Unsatisfied dependency for component " + component + ": " + dependency.f12622a);
                    }
                }
            }
        }
    }

    public final ArrayList h(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Component component = (Component) obj;
            if (component.f12605c == 0) {
                final Provider provider = (Provider) this.f12611a.get(component);
                for (Class cls : component.f12604a) {
                    HashMap hashMap = this.b;
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, provider);
                    } else {
                        final OptionalProvider optionalProvider = (OptionalProvider) ((Provider) hashMap.get(cls));
                        arrayList2.add(new Runnable(optionalProvider, provider) { // from class: com.google.firebase.components.ComponentRuntime$$Lambda$3

                            /* renamed from: c, reason: collision with root package name */
                            public final OptionalProvider f12614c;
                            public final Provider f;

                            {
                                this.f12614c = optionalProvider;
                                this.f = provider;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                Deferred.DeferredHandler deferredHandler;
                                OptionalProvider optionalProvider2 = this.f12614c;
                                Provider provider2 = this.f;
                                Provider provider3 = ComponentRuntime.f;
                                if (optionalProvider2.b == OptionalProvider$$Lambda$5.f12633a) {
                                    synchronized (optionalProvider2) {
                                        deferredHandler = optionalProvider2.f12631a;
                                        optionalProvider2.f12631a = null;
                                        optionalProvider2.b = provider2;
                                    }
                                    ((OptionalProvider$$Lambda$4) deferredHandler).getClass();
                                    Deferred.DeferredHandler deferredHandler2 = OptionalProvider.f12630c;
                                    return;
                                }
                                throw new IllegalStateException("provide() can be called only once.");
                            }
                        });
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.firebase.components.LazySet, java.lang.Object] */
    public final ArrayList i() {
        HashMap hashMap = this.f12612c;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry : this.f12611a.entrySet()) {
            Component component = (Component) entry.getKey();
            if (component.f12605c != 0) {
                Provider provider = (Provider) entry.getValue();
                for (Class cls : component.f12604a) {
                    if (!hashMap2.containsKey(cls)) {
                        hashMap2.put(cls, new HashSet());
                    }
                    ((Set) hashMap2.get(cls)).add(provider);
                }
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (!hashMap.containsKey(entry2.getKey())) {
                Class cls2 = (Class) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                ?? obj = new Object();
                obj.b = null;
                obj.f12629a = Collections.newSetFromMap(new ConcurrentHashMap());
                obj.f12629a.addAll(set);
                hashMap.put(cls2, obj);
            } else {
                final LazySet lazySet = (LazySet) hashMap.get(entry2.getKey());
                for (final Provider provider2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable(lazySet, provider2) { // from class: com.google.firebase.components.ComponentRuntime$$Lambda$4

                        /* renamed from: c, reason: collision with root package name */
                        public final LazySet f12615c;
                        public final Provider f;

                        {
                            this.f12615c = lazySet;
                            this.f = provider2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            LazySet lazySet2 = this.f12615c;
                            Provider provider3 = this.f;
                            Provider provider4 = ComponentRuntime.f;
                            synchronized (lazySet2) {
                                try {
                                    if (lazySet2.b == null) {
                                        lazySet2.f12629a.add(provider3);
                                    } else {
                                        lazySet2.b.add(provider3.get());
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    });
                }
            }
        }
        return arrayList;
    }
}
