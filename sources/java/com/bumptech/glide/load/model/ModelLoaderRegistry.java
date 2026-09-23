package com.bumptech.glide.load.model;

import androidx.core.util.Pools;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class ModelLoaderRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final MultiModelLoaderFactory f2304a;
    public final ModelLoaderCache b;

    /* loaded from: classes.dex */
    public static class ModelLoaderCache {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f2305a = new HashMap();

        /* loaded from: classes.dex */
        public static class Entry<Model> {

            /* renamed from: a, reason: collision with root package name */
            public final List f2306a;

            public Entry(List list) {
                this.f2306a = list;
            }
        }
    }

    public ModelLoaderRegistry(Pools.Pool pool) {
        MultiModelLoaderFactory multiModelLoaderFactory = new MultiModelLoaderFactory(pool);
        this.b = new ModelLoaderCache();
        this.f2304a = multiModelLoaderFactory;
    }

    public final synchronized void a(Class cls, Class cls2, ModelLoaderFactory modelLoaderFactory) {
        this.f2304a.a(cls, cls2, modelLoaderFactory);
        this.b.f2305a.clear();
    }

    public final synchronized ArrayList b(Class cls) {
        return this.f2304a.d(cls);
    }

    public final List c(Object obj) {
        List list;
        Class<?> cls = obj.getClass();
        synchronized (this) {
            ModelLoaderCache.Entry entry = (ModelLoaderCache.Entry) this.b.f2305a.get(cls);
            if (entry == null) {
                list = null;
            } else {
                list = entry.f2306a;
            }
            if (list == null) {
                list = DesugarCollections.unmodifiableList(this.f2304a.c(cls));
                if (((ModelLoaderCache.Entry) this.b.f2305a.put(cls, new ModelLoaderCache.Entry(list))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (!list.isEmpty()) {
            int size = list.size();
            List list2 = Collections.EMPTY_LIST;
            boolean z = true;
            for (int i = 0; i < size; i++) {
                ModelLoader modelLoader = (ModelLoader) list.get(i);
                if (modelLoader.a(obj)) {
                    if (z) {
                        list2 = new ArrayList(size - i);
                        z = false;
                    }
                    list2.add(modelLoader);
                }
            }
            if (!list2.isEmpty()) {
                return list2;
            }
            throw new RuntimeException("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + obj);
        }
        throw new RuntimeException("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
    }
}
