package com.mycompany.app.view;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
public abstract class MyGlideTarget<Z> implements Target<Z> {

    /* renamed from: c, reason: collision with root package name */
    public Request f18794c;

    @Override // com.bumptech.glide.request.target.Target
    public final void e(Request request) {
        this.f18794c = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void f(SingleRequest singleRequest) {
        if (Util.j(IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE)) {
            singleRequest.b(IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648, either provide dimensions in the constructor or call override()");
    }

    @Override // com.bumptech.glide.request.target.Target
    public void g(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void i(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final Request j() {
        return this.f18794c;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void l(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void m() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) {
    }
}
