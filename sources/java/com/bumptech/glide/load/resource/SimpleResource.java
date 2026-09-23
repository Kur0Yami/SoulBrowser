package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
public class SimpleResource<T> implements Resource<T> {

    /* renamed from: c, reason: collision with root package name */
    public final Object f2343c;

    public SimpleResource(Object obj) {
        Preconditions.c(obj, "Argument must not be null");
        this.f2343c = obj;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return this.f2343c.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f2343c;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return 1;
    }
}
