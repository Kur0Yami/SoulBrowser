package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzfsb extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f7613a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final AudioManager f7614c;
    public final AtomicReference d;
    public final AtomicBoolean e;
    public final ExecutorService f;
    public final zzfsn g;

    public zzfsb(Handler handler, Context context, zzfsn zzfsnVar) {
        super(handler);
        this.d = new AtomicReference(Float.valueOf(-1.0f));
        this.e = new AtomicBoolean(false);
        this.f = Executors.newSingleThreadExecutor();
        this.f7613a = handler;
        this.b = context;
        this.f7614c = (AudioManager) context.getSystemService("audio");
        this.g = zzfsnVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        if (this.e.getAndSet(true)) {
            return;
        }
        this.f.submit(new zzfsa(this));
    }
}
