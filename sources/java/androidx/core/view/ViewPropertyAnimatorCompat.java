package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ViewPropertyAnimatorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f807a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    public ViewPropertyAnimatorCompat(View view) {
        this.f807a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.f807a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.f807a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j) {
        View view = (View) this.f807a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    public final void d(final ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        final View view = (View) this.f807a.get();
        if (view != null) {
            if (viewPropertyAnimatorListener != null) {
                view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.ViewPropertyAnimatorCompat.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        ViewPropertyAnimatorListener.this.b();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        ViewPropertyAnimatorListener.this.a();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        ViewPropertyAnimatorListener.this.c();
                    }
                });
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.f807a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
