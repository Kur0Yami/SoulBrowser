package androidx.webkit.internal;

import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class StartupApiFeature {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f1803a = new HashSet();

    /* loaded from: classes.dex */
    public static class NoFramework extends StartupApiFeature {
    }

    /* loaded from: classes.dex */
    public static class P extends StartupApiFeature {
    }

    public StartupApiFeature() {
        f1803a.add(this);
    }
}
