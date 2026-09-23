package com.bumptech.glide.manager;

import com.bumptech.glide.request.Request;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RequestTracker {

    /* renamed from: a, reason: collision with root package name */
    public final Set f2427a = Collections.newSetFromMap(new WeakHashMap());
    public final HashSet b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public boolean f2428c;

    public final boolean a(Request request) {
        boolean z = true;
        if (request == null) {
            return true;
        }
        boolean remove = this.f2427a.remove(request);
        if (!this.b.remove(request) && !remove) {
            z = false;
        }
        if (z) {
            request.clear();
        }
        return z;
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f2427a.size() + ", isPaused=" + this.f2428c + "}";
    }
}
