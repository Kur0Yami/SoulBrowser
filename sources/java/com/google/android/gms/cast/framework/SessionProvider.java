package com.google.android.gms.cast.framework;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public abstract class SessionProvider {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3478a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbh f3479c = new zzbh(this);

    public SessionProvider(Context context, String str) {
        this.f3478a = ((Context) Preconditions.checkNotNull(context)).getApplicationContext();
        this.b = Preconditions.checkNotEmpty(str);
    }

    public abstract CastSession a(String str);

    public abstract boolean b();
}
