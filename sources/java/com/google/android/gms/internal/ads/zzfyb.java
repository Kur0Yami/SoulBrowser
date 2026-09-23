package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.datastore.core.DataStoreFactory;
import java.io.File;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* loaded from: classes.dex */
public final class zzfyb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcln f7717a;

    public zzfyb(zzcln zzclnVar) {
        this.f7717a = zzclnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        final Context context = this.f7717a.f5250a.b;
        zzijo.a(context);
        Intrinsics.checkNotNullParameter(context, "context");
        zzfxz zzfxzVar = zzfxz.f7713a;
        return DataStoreFactory.a(CollectionsKt.emptyList(), CoroutineScopeKt.a(Dispatchers.b.plus(SupervisorKt.a())), new Function0() { // from class: com.google.android.gms.internal.ads.zzfya
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Context context2 = context;
                Intrinsics.checkNotNullParameter(context2, "<this>");
                Intrinsics.checkNotNullParameter("ad_quality_data.pb", "fileName");
                return new File(context2.getApplicationContext().getFilesDir(), Intrinsics.stringPlus("datastore/", "ad_quality_data.pb"));
            }
        });
    }
}
