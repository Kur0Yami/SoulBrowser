package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
final class Platform {

    /* renamed from: com.google.common.escape.Platform$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ThreadLocal<char[]> {
        @Override // java.lang.ThreadLocal
        public final char[] initialValue() {
            return new char[1024];
        }
    }

    static {
        new ThreadLocal();
    }
}
