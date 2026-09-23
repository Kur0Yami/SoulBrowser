package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzts extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zztu f9279a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzts(zztu zztuVar, Looper looper) {
        super(looper);
        this.f9279a = zztuVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        zztu zztuVar = this.f9279a;
        zztuVar.getClass();
        int i = message.what;
        zztt zzttVar = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        AtomicReference atomicReference = zztuVar.d;
                        IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(message.what));
                        while (!atomicReference.compareAndSet(null, illegalStateException) && atomicReference.get() == null) {
                        }
                    } else {
                        try {
                            zztuVar.f9282a.setParameters((Bundle) message.obj);
                        } catch (RuntimeException e) {
                            AtomicReference atomicReference2 = zztuVar.d;
                            while (!atomicReference2.compareAndSet(null, e) && atomicReference2.get() == null) {
                            }
                        }
                    }
                } else {
                    zztuVar.e.a();
                }
            } else {
                zztt zzttVar2 = (zztt) message.obj;
                int i2 = zzttVar2.f9280a;
                MediaCodec.CryptoInfo cryptoInfo = zzttVar2.f9281c;
                long j = zzttVar2.d;
                int i3 = zzttVar2.e;
                try {
                    synchronized (zztu.h) {
                        zztuVar.f9282a.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                    }
                } catch (RuntimeException e2) {
                    AtomicReference atomicReference3 = zztuVar.d;
                    while (!atomicReference3.compareAndSet(null, e2) && atomicReference3.get() == null) {
                    }
                }
                zzttVar = zzttVar2;
            }
        } else {
            zztt zzttVar3 = (zztt) message.obj;
            try {
                zztuVar.f9282a.queueInputBuffer(zzttVar3.f9280a, 0, zzttVar3.b, zzttVar3.d, zzttVar3.e);
            } catch (RuntimeException e3) {
                AtomicReference atomicReference4 = zztuVar.d;
                while (!atomicReference4.compareAndSet(null, e3) && atomicReference4.get() == null) {
                }
            }
            zzttVar = zzttVar3;
        }
        if (zzttVar != null) {
            ArrayDeque arrayDeque = zztu.g;
            synchronized (arrayDeque) {
                arrayDeque.add(zzttVar);
            }
        }
    }
}
