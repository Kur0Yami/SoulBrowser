package com.google.mlkit.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_common.zzaf;
import com.google.android.gms.internal.mlkit_common.zzak;
import com.google.android.gms.internal.mlkit_common.zzat;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.model.RemoteModelManager;
import com.google.mlkit.common.sdkinternal.Cleaner;
import com.google.mlkit.common.sdkinternal.CloseGuard;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.MlKitThreadPool;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import com.google.mlkit.common.sdkinternal.model.ModelFileHelper;
import java.util.List;

@KeepForSdk
/* loaded from: classes3.dex */
public class CommonComponentRegistrar implements ComponentRegistrar {
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List a() {
        Component.Builder a2 = Component.a(ModelFileHelper.class);
        a2.a(new Dependency(1, 0, MlKitContext.class));
        a2.d = new Object();
        Component b = a2.b();
        Component.Builder a3 = Component.a(MlKitThreadPool.class);
        a3.d = new Object();
        Component b2 = a3.b();
        Component.Builder a4 = Component.a(RemoteModelManager.class);
        a4.a(new Dependency(2, 0, RemoteModelManager.RemoteModelManagerRegistration.class));
        a4.d = new Object();
        Component b3 = a4.b();
        Component.Builder a5 = Component.a(ExecutorSelector.class);
        a5.a(new Dependency(1, 1, MlKitThreadPool.class));
        a5.d = new Object();
        Component b4 = a5.b();
        Component.Builder a6 = Component.a(Cleaner.class);
        a6.d = new Object();
        Component b5 = a6.b();
        Component.Builder a7 = Component.a(CloseGuard.Factory.class);
        a7.a(new Dependency(1, 0, Cleaner.class));
        a7.d = new Object();
        Component b6 = a7.b();
        Component.Builder a8 = Component.a(com.google.mlkit.common.internal.model.zzg.class);
        a8.a(new Dependency(1, 0, MlKitContext.class));
        a8.d = new Object();
        Component b7 = a8.b();
        Component.Builder a9 = Component.a(RemoteModelManager.RemoteModelManagerRegistration.class);
        a9.f12608c = 1;
        a9.a(new Dependency(1, 1, com.google.mlkit.common.internal.model.zzg.class));
        a9.d = new Object();
        Component b8 = a9.b();
        zzat zzatVar = zzaf.f;
        Object[] objArr = {SharedPrefManager.b, b, b2, b3, b4, b5, b6, b7, b8};
        zzak.a(9, objArr);
        return zzaf.p(9, objArr);
    }
}
