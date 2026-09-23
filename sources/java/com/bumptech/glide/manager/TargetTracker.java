package com.bumptech.glide.manager;

import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class TargetTracker implements LifecycleListener {

    /* renamed from: c, reason: collision with root package name */
    public final Set f2444c = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
        ArrayList e = Util.e(this.f2444c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((Target) obj).h();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void m() {
        ArrayList e = Util.e(this.f2444c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((Target) obj).m();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
        ArrayList e = Util.e(this.f2444c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((Target) obj).onDestroy();
        }
    }
}
