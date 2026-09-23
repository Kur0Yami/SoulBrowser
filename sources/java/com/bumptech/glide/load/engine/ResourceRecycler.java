package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
class ResourceRecycler {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2232a;
    public final Handler b = new Handler(Looper.getMainLooper(), new Object());

    /* loaded from: classes.dex */
    public static final class ResourceRecyclerCallback implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((Resource) message.obj).a();
                return true;
            }
            return false;
        }
    }

    public final synchronized void a(Resource resource, boolean z) {
        try {
            if (!this.f2232a && !z) {
                this.f2232a = true;
                resource.a();
                this.f2232a = false;
            }
            this.b.obtainMessage(1, resource).sendToTarget();
        } catch (Throwable th) {
            throw th;
        }
    }
}
