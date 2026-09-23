package com.google.android.gms.internal.ads;

import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfd implements zzdw {

    /* renamed from: a, reason: collision with root package name */
    public Message f7233a;

    public final void a() {
        Message message = this.f7233a;
        message.getClass();
        message.sendToTarget();
        this.f7233a = null;
        zzfe.k(this);
    }
}
