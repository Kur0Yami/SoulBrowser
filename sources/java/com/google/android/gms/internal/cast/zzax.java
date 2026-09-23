package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.Logger;
import j$.util.DesugarCollections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzax extends com.google.android.gms.cast.framework.zzab {
    public static final Logger g = new Logger("AppVisibilityProxy", null);
    public static final int h = 1;

    /* renamed from: c, reason: collision with root package name */
    public final Set f9624c;
    public int f;

    public zzax() {
        super("com.google.android.gms.cast.framework.IAppVisibilityListener");
        this.f9624c = DesugarCollections.synchronizedSet(new HashSet());
        this.f = h;
    }
}
