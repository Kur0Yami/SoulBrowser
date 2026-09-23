package com.bumptech.glide.request;

import com.bumptech.glide.request.RequestCoordinator;

/* loaded from: classes.dex */
public final class ErrorRequestCoordinator implements RequestCoordinator, Request {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2457a;
    public final RequestCoordinator b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Request f2458c;
    public volatile Request d;
    public RequestCoordinator.RequestState e;
    public RequestCoordinator.RequestState f;

    public ErrorRequestCoordinator(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.e = requestState;
        this.f = requestState;
        this.f2457a = obj;
        this.b = requestCoordinator;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z;
        synchronized (this.f2457a) {
            try {
                if (!this.f2458c.a() && !this.d.a()) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void b(Request request) {
        synchronized (this.f2457a) {
            try {
                if (!request.equals(this.d)) {
                    this.e = RequestCoordinator.RequestState.FAILED;
                    RequestCoordinator.RequestState requestState = this.f;
                    RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState != requestState2) {
                        this.f = requestState2;
                        this.d.g();
                    }
                    return;
                }
                this.f = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.b;
                if (requestCoordinator != null) {
                    requestCoordinator.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean c(Request request) {
        if (request instanceof ErrorRequestCoordinator) {
            ErrorRequestCoordinator errorRequestCoordinator = (ErrorRequestCoordinator) request;
            if (this.f2458c.c(errorRequestCoordinator.f2458c) && this.d.c(errorRequestCoordinator.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
                this.e = requestState;
                this.f2458c.clear();
                if (this.f != requestState) {
                    this.f = requestState;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean d() {
        boolean z;
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = this.e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
                if (requestState == requestState2 && this.f == requestState2) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean e(Request request) {
        boolean z;
        boolean z2;
        RequestCoordinator.RequestState requestState;
        synchronized (this.f2457a) {
            RequestCoordinator requestCoordinator = this.b;
            z = false;
            if (requestCoordinator == null || requestCoordinator.e(this)) {
                RequestCoordinator.RequestState requestState2 = this.e;
                RequestCoordinator.RequestState requestState3 = RequestCoordinator.RequestState.FAILED;
                if (requestState2 != requestState3) {
                    z2 = request.equals(this.f2458c);
                } else if (request.equals(this.d) && ((requestState = this.f) == RequestCoordinator.RequestState.SUCCESS || requestState == requestState3)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean f(Request request) {
        boolean z;
        synchronized (this.f2457a) {
            RequestCoordinator requestCoordinator = this.b;
            if (requestCoordinator != null && !requestCoordinator.f(this)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void g() {
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = this.e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.e = requestState2;
                    this.f2458c.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final RequestCoordinator getRoot() {
        RequestCoordinator requestCoordinator;
        synchronized (this.f2457a) {
            try {
                RequestCoordinator requestCoordinator2 = this.b;
                if (requestCoordinator2 != null) {
                    requestCoordinator = requestCoordinator2.getRoot();
                } else {
                    requestCoordinator = this;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return requestCoordinator;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void h(Request request) {
        synchronized (this.f2457a) {
            try {
                if (request.equals(this.f2458c)) {
                    this.e = RequestCoordinator.RequestState.SUCCESS;
                } else if (request.equals(this.d)) {
                    this.f = RequestCoordinator.RequestState.SUCCESS;
                }
                RequestCoordinator requestCoordinator = this.b;
                if (requestCoordinator != null) {
                    requestCoordinator.h(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean i(Request request) {
        boolean z;
        synchronized (this.f2457a) {
            RequestCoordinator requestCoordinator = this.b;
            if ((requestCoordinator == null || requestCoordinator.i(this)) && request.equals(this.f2458c)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isComplete() {
        boolean z;
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = this.e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
                if (requestState != requestState2 && this.f != requestState2) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = this.e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2 && this.f != requestState2) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.f2457a) {
            try {
                RequestCoordinator.RequestState requestState = this.e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState == requestState2) {
                    this.e = RequestCoordinator.RequestState.PAUSED;
                    this.f2458c.pause();
                }
                if (this.f == requestState2) {
                    this.f = RequestCoordinator.RequestState.PAUSED;
                    this.d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
