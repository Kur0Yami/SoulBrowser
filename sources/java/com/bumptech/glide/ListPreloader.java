package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public int f2084a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2085c;
    public boolean d;

    /* loaded from: classes.dex */
    public interface PreloadModelProvider<U> {
    }

    /* loaded from: classes.dex */
    public interface PreloadSizeProvider<T> {
    }

    /* loaded from: classes.dex */
    public static final class PreloadTargetQueue {
    }

    public final void a(int i, boolean z) {
        if (this.d == z) {
            int min = Math.min(this.f2085c, Math.min(this.f2084a, i));
            int min2 = Math.min(this.f2085c, Math.max(0, i));
            if (min - 1 < min2) {
                this.f2084a = min2;
                return;
            }
            throw null;
        }
        this.d = z;
        throw null;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f2085c == 0 && i3 == 0) {
            return;
        }
        this.f2085c = i3;
        int i4 = this.b;
        if (i > i4) {
            a(i2 + i, true);
        } else if (i < i4) {
            a(i, false);
        }
        this.b = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }

    /* loaded from: classes.dex */
    public static final class PreloadTarget implements Target<Object> {

        /* renamed from: c, reason: collision with root package name */
        public Request f2086c;

        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void e(Request request) {
            this.f2086c = request;
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void f(SingleRequest singleRequest) {
            singleRequest.b(0, 0);
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
            return this.f2086c;
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
}
