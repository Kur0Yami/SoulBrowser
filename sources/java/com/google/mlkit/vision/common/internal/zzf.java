package com.google.mlkit.vision.common.internal;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.mlkit.vision.common.internal.MultiFlavorDetectorCreator;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzf implements ComponentFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzf f12817a = new Object();

    @Override // com.google.firebase.components.ComponentFactory
    public final Object a(ComponentContainer componentContainer) {
        return new MultiFlavorDetectorCreator(componentContainer.d(MultiFlavorDetectorCreator.Registration.class));
    }
}
