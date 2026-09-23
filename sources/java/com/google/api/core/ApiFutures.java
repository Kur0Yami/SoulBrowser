package com.google.api.core;

import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes3.dex */
public final class ApiFutures {

    /* renamed from: com.google.api.core.ApiFutures$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements FutureCallback<Object> {
        @Override // com.google.common.util.concurrent.FutureCallback
        public final void a(Throwable th) {
            throw null;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            throw null;
        }
    }

    /* renamed from: com.google.api.core.ApiFutures$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements AsyncFunction<Throwable, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            throw null;
        }
    }

    /* renamed from: com.google.api.core.ApiFutures$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Function<ApiFuture<Object>, ListenableFuture<Object>> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            ApiFuture apiFuture = (ApiFuture) obj;
            if (apiFuture instanceof AbstractApiFuture) {
                return null;
            }
            return new ApiFutureToListenableFuture(apiFuture);
        }
    }

    /* renamed from: com.google.api.core.ApiFutures$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Function<ApiFuture<Object>, ListenableFuture<Object>> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            ApiFuture apiFuture = (ApiFuture) obj;
            if (apiFuture instanceof AbstractApiFuture) {
                return null;
            }
            return new ApiFutureToListenableFuture(apiFuture);
        }
    }

    /* renamed from: com.google.api.core.ApiFutures$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements AsyncFunction<Object, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class ApiFunctionToGuavaFunction<X, V> implements Function<X, V> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }
    }
}
