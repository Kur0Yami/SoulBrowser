package androidx.viewpager2.adapter;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.RequiresOptIn;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements LifecycleEventObserver {
        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            throw null;
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends FragmentManager.FragmentLifecycleCallbacks {
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements LifecycleEventObserver {
        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            if (event != Lifecycle.Event.ON_DESTROY) {
            } else {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void a();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void b() {
            a();
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void c(int i, int i2) {
            a();
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void d(int i) {
            a();
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void e(int i, int i2) {
            a();
            throw null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void f(int i) {
            a();
            throw null;
        }
    }

    @RequiresOptIn
    /* loaded from: classes.dex */
    public @interface ExperimentalFragmentStateAdapterApi {
    }

    /* loaded from: classes.dex */
    public static class FragmentEventDispatcher {
    }

    /* loaded from: classes.dex */
    public class FragmentMaxLifecycleEnforcer {

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends ViewPager2.OnPageChangeCallback {
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public final void a(int i) {
                throw null;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public final void c(int i) {
                throw null;
            }
        }

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 extends DataSetChangeObserver {
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void a() {
                throw null;
            }
        }

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements LifecycleEventObserver {
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class FragmentTransactionCallback {

        /* renamed from: a, reason: collision with root package name */
        public static final OnPostEventListener f1768a = null;

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentTransactionCallback$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements OnPostEventListener {
        }

        /* loaded from: classes.dex */
        public interface OnPostEventListener {
        }
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final Parcelable a() {
        throw null;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void b() {
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void m(RecyclerView recyclerView) {
        throw new IllegalArgumentException();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        ((FrameLayout) ((FragmentViewHolder) viewHolder).f1589a).getId();
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int i2 = FragmentViewHolder.u;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(View.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new RecyclerView.ViewHolder(frameLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void p(RecyclerView recyclerView) {
        ViewParent parent = recyclerView.getParent();
        if (parent instanceof ViewPager2) {
            ((ViewPager2) parent).f(null);
            throw null;
        }
        throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final /* bridge */ /* synthetic */ boolean q(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void r(RecyclerView.ViewHolder viewHolder) {
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void t(RecyclerView.ViewHolder viewHolder) {
        ((FrameLayout) ((FragmentViewHolder) viewHolder).f1589a).getId();
        throw null;
    }
}
