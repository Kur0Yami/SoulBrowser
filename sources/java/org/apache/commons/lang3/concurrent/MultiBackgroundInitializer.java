package org.apache.commons.lang3.concurrent;

import j$.lang.Iterable;
import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Consumer$CC;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.apache.commons.lang3.concurrent.BackgroundInitializer;

/* loaded from: classes4.dex */
public class MultiBackgroundInitializer extends BackgroundInitializer<MultiBackgroundInitializerResults> {

    /* loaded from: classes4.dex */
    public static class MultiBackgroundInitializerResults {
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer
    public final Object b() {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap((Map) null);
        }
        final ExecutorService c2 = c();
        Iterable.EL.forEach(hashMap.values(), new Consumer() { // from class: org.apache.commons.lang3.concurrent.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ExecutorService executorService;
                ExecutorService executorService2 = c2;
                BackgroundInitializer backgroundInitializer = (BackgroundInitializer) obj;
                if (backgroundInitializer.d() == null) {
                    backgroundInitializer.h(executorService2);
                }
                synchronized (backgroundInitializer) {
                    try {
                        if (!backgroundInitializer.g()) {
                            ExecutorService d = backgroundInitializer.d();
                            backgroundInitializer.b = d;
                            if (d == null) {
                                executorService = Executors.newFixedThreadPool(backgroundInitializer.f());
                                backgroundInitializer.b = executorService;
                            } else {
                                executorService = null;
                            }
                            backgroundInitializer.f22376c = backgroundInitializer.b.submit(new BackgroundInitializer.InitializationTask(executorService));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final HashMap hashMap2 = new HashMap();
        final HashMap hashMap3 = new HashMap();
        Map.EL.forEach(hashMap, new BiConsumer() { // from class: org.apache.commons.lang3.concurrent.b
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                String str = (String) obj;
                try {
                    hashMap2.put(str, ((BackgroundInitializer) obj2).get());
                } catch (ConcurrentException e) {
                    hashMap3.put(str, e);
                }
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        });
        return new Object();
    }

    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public final int f() {
        throw null;
    }
}
