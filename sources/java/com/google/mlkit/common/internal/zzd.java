package com.google.mlkit.common.internal;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitThreadPool;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzd implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object a(ComponentContainer componentContainer) {
        return new ExecutorSelector(componentContainer.b(MlKitThreadPool.class));
    }
}
