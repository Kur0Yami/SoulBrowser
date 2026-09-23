package com.google.mlkit.vision.text.internal;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzt implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object a(ComponentContainer componentContainer) {
        return new zzo((zzp) componentContainer.a(zzp.class), (ExecutorSelector) componentContainer.a(ExecutorSelector.class));
    }
}
