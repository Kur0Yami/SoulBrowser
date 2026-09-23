package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class ViewPropertyAnimatorCompatSet {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f156c;
    public ViewPropertyAnimatorListener d;
    public boolean e;
    public long b = -1;
    public final ViewPropertyAnimatorListenerAdapter f = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.view.ViewPropertyAnimatorCompatSet.1

        /* renamed from: a, reason: collision with root package name */
        public boolean f157a = false;
        public int b = 0;

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void a() {
            int i = this.b + 1;
            this.b = i;
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = ViewPropertyAnimatorCompatSet.this;
            if (i == viewPropertyAnimatorCompatSet.f155a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = viewPropertyAnimatorCompatSet.d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.a();
                }
                this.b = 0;
                this.f157a = false;
                viewPropertyAnimatorCompatSet.e = false;
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void c() {
            if (!this.f157a) {
                this.f157a = true;
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.c();
                }
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f155a = new ArrayList();

    public final void a() {
        if (!this.e) {
            return;
        }
        ArrayList arrayList = this.f155a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((ViewPropertyAnimatorCompat) obj).b();
        }
        this.e = false;
    }

    public final void b() {
        View view;
        if (this.e) {
            return;
        }
        ArrayList arrayList = this.f155a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat) obj;
            long j = this.b;
            if (j >= 0) {
                viewPropertyAnimatorCompat.c(j);
            }
            Interpolator interpolator = this.f156c;
            if (interpolator != null && (view = (View) viewPropertyAnimatorCompat.f807a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                viewPropertyAnimatorCompat.d(this.f);
            }
            View view2 = (View) viewPropertyAnimatorCompat.f807a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
