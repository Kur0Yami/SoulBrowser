package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentLifecycleCallbacksDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f1104a = new CopyOnWriteArrayList();
    public final FragmentManager b;

    /* loaded from: classes.dex */
    public static final class FragmentLifecycleCallbacksHolder {
    }

    public FragmentLifecycleCallbacksDispatcher(FragmentManager fragmentManager) {
        this.b = fragmentManager;
    }

    public final void a(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.a(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void b(boolean z) {
        FragmentManager fragmentManager = this.b;
        FragmentActivity fragmentActivity = fragmentManager.u.f;
        Fragment fragment = fragmentManager.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.b(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void c(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.c(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void d(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.d(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void e(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.e(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void f(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.f(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void g(boolean z) {
        FragmentManager fragmentManager = this.b;
        FragmentActivity fragmentActivity = fragmentManager.u.f;
        Fragment fragment = fragmentManager.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.g(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void h(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.h(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void i(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.i(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void j(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.j(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void k(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.k(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void l(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.l(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.b.w;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().m.m(fragment, view, bundle, true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    public final void n(boolean z) {
        Fragment fragment = this.b.w;
        if (fragment != null) {
            fragment.getParentFragmentManager().m.n(true);
        }
        Iterator it = this.f1104a.iterator();
        if (it.hasNext()) {
            if (z) {
                throw null;
            }
            throw null;
        }
    }
}
