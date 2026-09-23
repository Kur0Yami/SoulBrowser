package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.DesugarCollections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@TargetApi(30)
/* loaded from: classes.dex */
public final class zzce {
    public static final Logger i = new Logger("SessionTransController", null);

    /* renamed from: a, reason: collision with root package name */
    public final CastOptions f9648a;
    public boolean f;
    public SessionManager g;
    public SessionState h;
    public final Set b = DesugarCollections.synchronizedSet(new HashSet());
    public int e = 0;

    /* renamed from: c, reason: collision with root package name */
    public final zzfk f9649c = new zzfk(Looper.getMainLooper());
    public final Runnable d = new Runnable() { // from class: com.google.android.gms.internal.cast.zzcd
        @Override // java.lang.Runnable
        public final void run() {
            Logger logger = zzce.i;
            zzce zzceVar = zzce.this;
            Log.i(logger.f3604a, logger.d("transfer with type = %d has timed out", Integer.valueOf(zzceVar.e)));
            logger.b("notify failed transfer with type = %d, reason = %d", Integer.valueOf(zzceVar.e), 101);
            Iterator it = new HashSet(zzceVar.b).iterator();
            while (it.hasNext()) {
                ((SessionTransferCallback) it.next()).a(zzceVar.e, 101);
            }
            zzceVar.b();
        }
    };

    public zzce(CastOptions castOptions) {
        this.f9648a = castOptions;
    }

    public final void a(SessionManager sessionManager) {
        this.g = sessionManager;
        ((Handler) Preconditions.checkNotNull(this.f9649c)).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzca
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzce zzceVar = zzce.this;
                ((SessionManager) Preconditions.checkNotNull(zzceVar.g)).a(new zzbz(zzceVar));
            }
        });
    }

    public final void b() {
        ((Handler) Preconditions.checkNotNull(this.f9649c)).removeCallbacks((Runnable) Preconditions.checkNotNull(this.d));
        this.e = 0;
        this.h = null;
    }
}
