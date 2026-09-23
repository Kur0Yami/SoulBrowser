package com.bumptech.glide.manager;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RequestManagerRetriever implements Handler.Callback {
    public static final RequestManagerFactory j = new Object();

    /* renamed from: c, reason: collision with root package name */
    public volatile RequestManager f2426c;
    public final RequestManagerFactory f;
    public final ArrayMap g = new SimpleArrayMap(0);
    public final FrameWaiter h;
    public final LifecycleRequestManagerRetriever i;

    /* renamed from: com.bumptech.glide.manager.RequestManagerRetriever$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements RequestManagerFactory {
        @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
        public final RequestManager a(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
            return new RequestManager(glide, lifecycle, requestManagerTreeNode, context);
        }
    }

    /* loaded from: classes.dex */
    public interface RequestManagerFactory {
        RequestManager a(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.bumptech.glide.manager.FrameWaiter] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public RequestManagerRetriever(RequestManagerFactory requestManagerFactory) {
        ?? r3;
        requestManagerFactory = requestManagerFactory == null ? j : requestManagerFactory;
        this.f = requestManagerFactory;
        this.i = new LifecycleRequestManagerRetriever(requestManagerFactory);
        if (HardwareConfigState.f && HardwareConfigState.e) {
            r3 = new FirstFrameWaiter();
        } else {
            r3 = new Object();
        }
        this.h = r3;
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void b(List list, ArrayMap arrayMap) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Fragment fragment = (Fragment) it.next();
                if (fragment != null && fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    b(fragment.getChildFragmentManager().G(), arrayMap);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.bumptech.glide.manager.Lifecycle, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, com.bumptech.glide.manager.RequestManagerTreeNode] */
    public final RequestManager c(Context context) {
        if (context != null) {
            char[] cArr = Util.f2497a;
            if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return e((FragmentActivity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return c(contextWrapper.getBaseContext());
                    }
                }
            }
            if (this.f2426c == null) {
                synchronized (this) {
                    try {
                        if (this.f2426c == null) {
                            this.f2426c = this.f.a(Glide.a(context.getApplicationContext()), new Object(), new Object(), context.getApplicationContext());
                        }
                    } finally {
                    }
                }
            }
            return this.f2426c;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public final RequestManager d(View view) {
        boolean z;
        char[] cArr = Util.f2497a;
        boolean z2 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return c(view.getContext().getApplicationContext());
        }
        Preconditions.c(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity a2 = a(view.getContext());
        if (a2 == null) {
            return c(view.getContext().getApplicationContext());
        }
        if (a2 instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) a2;
            ArrayMap arrayMap = this.g;
            arrayMap.clear();
            b(fragmentActivity.T().G(), arrayMap);
            View findViewById = fragmentActivity.findViewById(R.id.content);
            Fragment fragment = null;
            while (!view.equals(findViewById) && (fragment = (Fragment) arrayMap.get(view)) == null && (view.getParent() instanceof View)) {
                view = (View) view.getParent();
            }
            arrayMap.clear();
            if (fragment != null) {
                Preconditions.c(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    z2 = true;
                }
                if (!z2) {
                    return c(fragment.getContext().getApplicationContext());
                }
                if (fragment.getActivity() != null) {
                    this.h.a(fragment.getActivity());
                }
                FragmentManager childFragmentManager = fragment.getChildFragmentManager();
                Context context = fragment.getContext();
                return this.i.a(context, Glide.a(context.getApplicationContext()), fragment.getLifecycle(), childFragmentManager, fragment.isVisible());
            }
            return e(fragmentActivity);
        }
        return c(view.getContext().getApplicationContext());
    }

    public final RequestManager e(FragmentActivity fragmentActivity) {
        boolean z;
        boolean z2;
        char[] cArr = Util.f2497a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return c(fragmentActivity.getApplicationContext());
        }
        if (!fragmentActivity.isDestroyed()) {
            this.h.a(fragmentActivity);
            Activity a2 = a(fragmentActivity);
            if (a2 != null && a2.isFinishing()) {
                z2 = false;
            } else {
                z2 = true;
            }
            return this.i.a(fragmentActivity, Glide.a(fragmentActivity.getApplicationContext()), fragmentActivity.f624c, fragmentActivity.T(), z2);
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
