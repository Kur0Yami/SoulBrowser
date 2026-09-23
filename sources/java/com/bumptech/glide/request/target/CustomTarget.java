package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Util;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public abstract class CustomTarget<T> implements Target<T> {

    /* renamed from: c, reason: collision with root package name */
    public final int f2467c;
    public final int f;
    public Request g;

    public CustomTarget() {
        if (Util.j(IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE)) {
            this.f2467c = IntCompanionObject.MIN_VALUE;
            this.f = IntCompanionObject.MIN_VALUE;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void e(Request request) {
        this.g = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void f(SingleRequest singleRequest) {
        singleRequest.b(this.f2467c, this.f);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void g(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void i(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final Request j() {
        return this.g;
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
