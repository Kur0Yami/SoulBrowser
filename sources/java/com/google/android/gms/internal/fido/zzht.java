package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
final class zzht {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f10336a = new ArrayDeque(16);

    public final void a() {
        ArrayDeque arrayDeque = this.f10336a;
        if (arrayDeque.isEmpty()) {
            return;
        }
        throw new IOException("data item not completed, stackSize: " + arrayDeque.size() + " scope: " + c());
    }

    public final void b(long j) {
        long c2 = c();
        if (c2 != j) {
            if (c2 != -1) {
                if (c2 == -2) {
                    c2 = -2;
                } else {
                    return;
                }
            }
            throw new IOException("expected non-string scope or scope " + j + " but found " + c2);
        }
    }

    public final long c() {
        ArrayDeque arrayDeque = this.f10336a;
        if (arrayDeque.isEmpty()) {
            return 0L;
        }
        return ((Long) arrayDeque.peek()).longValue();
    }
}
