package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class NonOwnedDrawableResource extends DrawableResource<Drawable> {
    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return this.f2396c.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        Drawable drawable = this.f2396c;
        return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
    }
}
