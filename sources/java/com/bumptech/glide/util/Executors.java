package com.bumptech.glide.util;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class Executors {

    /* renamed from: a, reason: collision with root package name */
    public static final Executor f2488a = new Object();
    public static final Executor b = new Object();

    /* renamed from: com.bumptech.glide.util.Executors$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Util.f().post(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.util.Executors$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Util.f().postAtFrontOfQueue(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.util.Executors$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }
}
