package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
public final class LazyBitmapDrawableResource implements Resource<BitmapDrawable>, Initializable {

    /* renamed from: c, reason: collision with root package name */
    public final Resources f2375c;
    public final Resource f;

    public LazyBitmapDrawableResource(Resources resources, Resource resource) {
        Preconditions.c(resources, "Argument must not be null");
        this.f2375c = resources;
        Preconditions.c(resource, "Argument must not be null");
        this.f = resource;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        this.f.a();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return new BitmapDrawable(this.f2375c, (Bitmap) this.f.get());
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public final void s() {
        Resource resource = this.f;
        if (resource instanceof Initializable) {
            ((Initializable) resource).s();
        }
    }
}
