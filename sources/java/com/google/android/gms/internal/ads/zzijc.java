package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
abstract class zzijc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final Map f9002a;

    public zzijc(LinkedHashMap linkedHashMap) {
        this.f9002a = DesugarCollections.unmodifiableMap(linkedHashMap);
    }
}
