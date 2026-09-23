package com.bumptech.glide.provider;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.util.MultiClassKey;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class LoadPathCache {

    /* renamed from: c, reason: collision with root package name */
    public static final LoadPath f2448c = new LoadPath(Object.class, Object.class, Object.class, Collections.singletonList(new DecodePath(Object.class, Object.class, Object.class, Collections.EMPTY_LIST, new Object(), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayMap f2449a = new SimpleArrayMap(0);
    public final AtomicReference b = new AtomicReference();

    public final void a(Class cls, Class cls2, Class cls3, LoadPath loadPath) {
        synchronized (this.f2449a) {
            ArrayMap arrayMap = this.f2449a;
            MultiClassKey multiClassKey = new MultiClassKey(cls, cls2, cls3);
            if (loadPath == null) {
                loadPath = f2448c;
            }
            arrayMap.put(multiClassKey, loadPath);
        }
    }
}
