package com.bumptech.glide.provider;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.MultiClassKey;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class ModelToResourceClassCache {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f2450a = new AtomicReference();
    public final ArrayMap b = new SimpleArrayMap(0);

    public final void a(Class cls, Class cls2, Class cls3, List list) {
        synchronized (this.b) {
            this.b.put(new MultiClassKey(cls, cls2, cls3), list);
        }
    }
}
