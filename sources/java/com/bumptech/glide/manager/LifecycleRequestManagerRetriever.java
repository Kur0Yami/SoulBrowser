package com.bumptech.glide.manager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.util.Util;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class LifecycleRequestManagerRetriever {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2424a = new HashMap();
    public final RequestManagerRetriever.RequestManagerFactory b;

    /* loaded from: classes.dex */
    public final class SupportRequestManagerTreeNode implements RequestManagerTreeNode {
    }

    public LifecycleRequestManagerRetriever(RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.b = requestManagerFactory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.bumptech.glide.manager.RequestManagerTreeNode] */
    public final RequestManager a(Context context, Glide glide, final androidx.lifecycle.Lifecycle lifecycle, FragmentManager fragmentManager, boolean z) {
        Util.a();
        Util.a();
        HashMap hashMap = this.f2424a;
        RequestManager requestManager = (RequestManager) hashMap.get(lifecycle);
        if (requestManager == null) {
            LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
            RequestManager a2 = this.b.a(glide, lifecycleLifecycle, new Object(), context);
            hashMap.put(lifecycle, a2);
            lifecycleLifecycle.c(new LifecycleListener() { // from class: com.bumptech.glide.manager.LifecycleRequestManagerRetriever.1
                @Override // com.bumptech.glide.manager.LifecycleListener
                public final void h() {
                }

                @Override // com.bumptech.glide.manager.LifecycleListener
                public final void m() {
                }

                @Override // com.bumptech.glide.manager.LifecycleListener
                public final void onDestroy() {
                    LifecycleRequestManagerRetriever.this.f2424a.remove(lifecycle);
                }
            });
            if (z) {
                a2.m();
            }
            return a2;
        }
        return requestManager;
    }
}
