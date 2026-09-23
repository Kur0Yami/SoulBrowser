package com.bumptech.glide.request;

/* loaded from: classes.dex */
public interface RequestCoordinator {

    /* loaded from: classes.dex */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);


        /* renamed from: c, reason: collision with root package name */
        public final boolean f2459c;

        RequestState(boolean z) {
            this.f2459c = z;
        }
    }

    boolean a();

    void b(Request request);

    boolean e(Request request);

    boolean f(Request request);

    RequestCoordinator getRoot();

    void h(Request request);

    boolean i(Request request);
}
