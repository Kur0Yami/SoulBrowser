package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.Map;

@Immutable
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ImmutableClassToInstanceMap<B> extends ForwardingMap<Class<? extends B>, B> implements ClassToInstanceMap<B>, Serializable {

    /* loaded from: classes3.dex */
    public static final class Builder<B> {
    }

    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public final Object e0() {
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap
    /* renamed from: h0 */
    public final Map e0() {
        throw null;
    }
}
