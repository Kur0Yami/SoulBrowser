package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;

/* loaded from: classes.dex */
public final class zzbff {

    /* renamed from: a, reason: collision with root package name */
    public zzbeu f4608a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4609c = new Object();

    public zzbff(Context context) {
    }

    public final /* synthetic */ void a() {
        synchronized (this.f4609c) {
            try {
                zzbeu zzbeuVar = this.f4608a;
                if (zzbeuVar == null) {
                    return;
                }
                zzbeuVar.disconnect();
                this.f4608a = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
