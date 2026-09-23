package com.bumptech.glide.request;

import com.bumptech.glide.request.RequestCoordinator;

/* loaded from: classes.dex */
public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {

    /* renamed from: a, reason: collision with root package name */
    public final RequestCoordinator f2464a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public volatile SingleRequest f2465c;
    public volatile Request d;
    public RequestCoordinator.RequestState e;
    public RequestCoordinator.RequestState f;
    public boolean g;

    public ThumbnailRequestCoordinator(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.e = requestState;
        this.f = requestState;
        this.b = obj;
        this.f2464a = requestCoordinator;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z;
        synchronized (this.b) {
            try {
                if (!this.d.a() && !this.f2465c.a()) {
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
        synchronized (this.b) {
            try {
                if (!request.equals(this.f2465c)) {
                    this.f = RequestCoordinator.RequestState.FAILED;
                    return;
                }
                this.e = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f2464a;
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
        if (request instanceof ThumbnailRequestCoordinator) {
            ThumbnailRequestCoordinator thumbnailRequestCoordinator = (ThumbnailRequestCoordinator) request;
            if (this.f2465c == null) {
                if (thumbnailRequestCoordinator.f2465c != null) {
                    return false;
                }
            } else if (!this.f2465c.c(thumbnailRequestCoordinator.f2465c)) {
                return false;
            }
            if (this.d == null) {
                if (thumbnailRequestCoordinator.d == null) {
                    return true;
                }
                return false;
            }
            if (this.d.c(thumbnailRequestCoordinator.d)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.b) {
            this.g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.e = requestState;
            this.f = requestState;
            this.d.clear();
            this.f2465c.clear();
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean d() {
        boolean z;
        synchronized (this.b) {
            if (this.e == RequestCoordinator.RequestState.CLEARED) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean e(Request request) {
        boolean z;
        synchronized (this.b) {
            try {
                RequestCoordinator requestCoordinator = this.f2464a;
                if ((requestCoordinator == null || requestCoordinator.e(this)) && request.equals(this.f2465c) && !a()) {
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
    public final boolean f(Request request) {
        boolean z;
        synchronized (this.b) {
            try {
                RequestCoordinator requestCoordinator = this.f2464a;
                if ((requestCoordinator != null && !requestCoordinator.f(this)) || (!request.equals(this.f2465c) && this.e == RequestCoordinator.RequestState.SUCCESS)) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void g() {
        synchronized (this.b) {
            try {
                this.g = true;
                try {
                    if (this.e != RequestCoordinator.RequestState.SUCCESS) {
                        RequestCoordinator.RequestState requestState = this.f;
                        RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState != requestState2) {
                            this.f = requestState2;
                            this.d.g();
                        }
                    }
                    if (this.g) {
                        RequestCoordinator.RequestState requestState3 = this.e;
                        RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState3 != requestState4) {
                            this.e = requestState4;
                            this.f2465c.g();
                        }
                    }
                    this.g = false;
                } catch (Throwable th) {
                    this.g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final RequestCoordinator getRoot() {
        RequestCoordinator requestCoordinator;
        synchronized (this.b) {
            try {
                RequestCoordinator requestCoordinator2 = this.f2464a;
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
        synchronized (this.b) {
            try {
                if (request.equals(this.d)) {
                    this.f = RequestCoordinator.RequestState.SUCCESS;
                    return;
                }
                this.e = RequestCoordinator.RequestState.SUCCESS;
                RequestCoordinator requestCoordinator = this.f2464a;
                if (requestCoordinator != null) {
                    requestCoordinator.h(this);
                }
                if (!this.f.f2459c) {
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean i(Request request) {
        boolean z;
        synchronized (this.b) {
            try {
                RequestCoordinator requestCoordinator = this.f2464a;
                if ((requestCoordinator == null || requestCoordinator.i(this)) && request.equals(this.f2465c) && this.e != RequestCoordinator.RequestState.PAUSED) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isComplete() {
        boolean z;
        synchronized (this.b) {
            if (this.e == RequestCoordinator.RequestState.SUCCESS) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z;
        synchronized (this.b) {
            if (this.e == RequestCoordinator.RequestState.RUNNING) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.b) {
            try {
                if (!this.f.f2459c) {
                    this.f = RequestCoordinator.RequestState.PAUSED;
                    this.d.pause();
                }
                if (!this.e.f2459c) {
                    this.e = RequestCoordinator.RequestState.PAUSED;
                    this.f2465c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
