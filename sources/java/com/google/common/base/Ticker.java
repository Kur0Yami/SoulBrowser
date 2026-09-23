package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class Ticker {

    /* renamed from: a, reason: collision with root package name */
    public static final Ticker f12193a = new Object();

    /* renamed from: com.google.common.base.Ticker$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends Ticker {
        @Override // com.google.common.base.Ticker
        public final long a() {
            return System.nanoTime();
        }
    }

    public abstract long a();
}
