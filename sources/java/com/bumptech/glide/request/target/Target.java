package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public interface Target<R> extends LifecycleListener {
    void a(Object obj, Transition transition);

    void c(SingleRequest singleRequest);

    void e(Request request);

    void f(SingleRequest singleRequest);

    void g(Drawable drawable);

    void i(Drawable drawable);

    Request j();

    void l(Drawable drawable);
}
