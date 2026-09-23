package com.bumptech.glide.load.model;

import androidx.core.util.Pools;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class MultiModelLoaderFactory {
    public static final Factory e = new Object();
    public static final ModelLoader f = new Object();
    public final Pools.Pool d;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2309a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f2310c = new HashSet();
    public final Factory b = e;

    /* loaded from: classes.dex */
    public static class EmptyModelLoader implements ModelLoader<Object, Object> {
        @Override // com.bumptech.glide.load.model.ModelLoader
        public final boolean a(Object obj) {
            return false;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<Model, Data> {

        /* renamed from: a, reason: collision with root package name */
        public final Class f2311a;
        public final Class b;

        /* renamed from: c, reason: collision with root package name */
        public final ModelLoaderFactory f2312c;

        public Entry(Class cls, Class cls2, ModelLoaderFactory modelLoaderFactory) {
            this.f2311a = cls;
            this.b = cls2;
            this.f2312c = modelLoaderFactory;
        }
    }

    /* loaded from: classes.dex */
    public static class Factory {
    }

    public MultiModelLoaderFactory(Pools.Pool pool) {
        this.d = pool;
    }

    public final synchronized void a(Class cls, Class cls2, ModelLoaderFactory modelLoaderFactory) {
        Entry entry = new Entry(cls, cls2, modelLoaderFactory);
        ArrayList arrayList = this.f2309a;
        arrayList.add(arrayList.size(), entry);
    }

    public final synchronized ModelLoader b(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.f2309a;
            int size = arrayList2.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                Entry entry = (Entry) obj;
                if (this.f2310c.contains(entry)) {
                    z = true;
                } else if (entry.f2311a.isAssignableFrom(cls) && entry.b.isAssignableFrom(cls2)) {
                    this.f2310c.add(entry);
                    arrayList.add(entry.f2312c.d(this));
                    this.f2310c.remove(entry);
                }
            }
            if (arrayList.size() > 1) {
                Factory factory = this.b;
                Pools.Pool pool = this.d;
                factory.getClass();
                return new MultiModelLoader(arrayList, pool);
            }
            if (arrayList.size() == 1) {
                return (ModelLoader) arrayList.get(0);
            }
            if (z) {
                return f;
            }
            throw new RuntimeException("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f2310c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            ArrayList arrayList2 = this.f2309a;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                Entry entry = (Entry) obj;
                if (!this.f2310c.contains(entry) && entry.f2311a.isAssignableFrom(cls)) {
                    this.f2310c.add(entry);
                    arrayList.add(entry.f2312c.d(this));
                    this.f2310c.remove(entry);
                }
            }
        } catch (Throwable th) {
            this.f2310c.clear();
            throw th;
        }
        return arrayList;
    }

    public final synchronized ArrayList d(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2309a;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            Entry entry = (Entry) obj;
            if (!arrayList.contains(entry.b) && entry.f2311a.isAssignableFrom(cls)) {
                arrayList.add(entry.b);
            }
        }
        return arrayList;
    }
}
