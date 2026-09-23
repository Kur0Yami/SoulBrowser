package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
final class LifecycleLifecycle implements Lifecycle, LifecycleObserver {

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f2423c = new HashSet();
    public final androidx.lifecycle.Lifecycle f;

    public LifecycleLifecycle(androidx.lifecycle.Lifecycle lifecycle) {
        this.f = lifecycle;
        lifecycle.a(this);
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public final void c(LifecycleListener lifecycleListener) {
        this.f2423c.add(lifecycleListener);
        androidx.lifecycle.Lifecycle lifecycle = this.f;
        if (lifecycle.b() == Lifecycle.State.f1198c) {
            lifecycleListener.onDestroy();
        } else if (lifecycle.b().a(Lifecycle.State.h)) {
            lifecycleListener.m();
        } else {
            lifecycleListener.h();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public final void e(LifecycleListener lifecycleListener) {
        this.f2423c.remove(lifecycleListener);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList e = Util.e(this.f2423c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((LifecycleListener) obj).onDestroy();
        }
        lifecycleOwner.getLifecycle().c(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList e = Util.e(this.f2423c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((LifecycleListener) obj).m();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList e = Util.e(this.f2423c);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            ((LifecycleListener) obj).h();
        }
    }
}
