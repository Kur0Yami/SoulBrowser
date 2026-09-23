package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AbstractComponentContainer implements ComponentContainer {
    @Override // com.google.firebase.components.ComponentContainer
    public Object a(Class cls) {
        Provider b = b(cls);
        if (b == null) {
            return null;
        }
        return b.get();
    }

    @Override // com.google.firebase.components.ComponentContainer
    public Set d(Class cls) {
        return (Set) c(cls).get();
    }
}
