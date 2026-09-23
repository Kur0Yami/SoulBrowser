package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;

@Deprecated
/* loaded from: classes.dex */
public abstract class BaseTarget<Z> implements Target<Z> {

    /* renamed from: c, reason: collision with root package name */
    public Request f2466c;

    @Override // com.bumptech.glide.request.target.Target
    public void e(Request request) {
        this.f2466c = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void g(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void h() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void i(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public Request j() {
        return this.f2466c;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void l(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void m() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }
}
