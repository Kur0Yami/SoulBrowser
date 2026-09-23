package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.RequiresApi;
import j$.util.function.IntConsumer$CC;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public final class zzko {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f9065a;
    public final IntConsumer b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzkp f9066c;

    public /* synthetic */ zzko(zzkp zzkpVar, Context context) {
        this.f9066c = zzkpVar;
        this.f9065a = new WeakReference(context);
        IntConsumer intConsumer = new IntConsumer() { // from class: com.google.android.gms.internal.ads.zzkm
            @Override // java.util.function.IntConsumer
            public final /* synthetic */ void accept(int i) {
                zzkp zzkpVar2 = zzko.this.f9066c;
                if (zzkpVar2.V) {
                    return;
                }
                zzkpVar2.q(1, 19, Integer.valueOf(i));
            }

            public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer2) {
                return IntConsumer$CC.$default$andThen(this, intConsumer2);
            }
        };
        this.b = intConsumer;
        final zzdx a2 = zzkpVar.u.a(zzkpVar.s, null);
        context.registerDeviceIdChangeListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzkn
            @Override // java.util.concurrent.Executor
            public final /* synthetic */ void execute(Runnable runnable) {
                zzdx.this.g(runnable);
            }
        }, intConsumer);
    }

    public final /* synthetic */ void a() {
        Context context = (Context) this.f9065a.get();
        if (context == null) {
            return;
        }
        context.unregisterDeviceIdChangeListener(this.b);
    }
}
