package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzacg implements zzbs {

    /* renamed from: a, reason: collision with root package name */
    public final zzbq f3897a = new Object();

    @Override // com.google.android.gms.internal.ads.zzbs
    public final zzbu a(Context context, zzi zziVar, zzbt zzbtVar, Executor executor) {
        try {
            return ((zzbs) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(zzbq.class).newInstance(this.f3897a)).a(context, zziVar, zzbtVar, executor);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }
}
