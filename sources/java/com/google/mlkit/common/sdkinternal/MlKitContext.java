package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes3.dex */
public class MlKitContext {
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static MlKitContext f12771c;

    /* renamed from: a, reason: collision with root package name */
    public ComponentRuntime f12772a;

    public static MlKitContext c() {
        boolean z;
        MlKitContext mlKitContext;
        synchronized (b) {
            if (f12771c != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MlKitContext has not been initialized");
            mlKitContext = (MlKitContext) Preconditions.checkNotNull(f12771c);
        }
        return mlKitContext;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.mlkit.common.sdkinternal.MlKitContext] */
    public static MlKitContext d(Context context, Executor executor) {
        boolean z;
        MlKitContext mlKitContext;
        synchronized (b) {
            if (f12771c == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MlKitContext is already initialized");
            ?? obj = new Object();
            f12771c = obj;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            ArrayList a2 = ComponentDiscovery.b(context).a();
            Provider provider = ComponentRuntime.f;
            ComponentRuntime.Builder builder = new ComponentRuntime.Builder(executor);
            builder.b.addAll(a2);
            builder.f12618c.add(Component.b(context, Context.class, new Class[0]));
            builder.f12618c.add(Component.b(obj, MlKitContext.class, new Class[0]));
            ComponentRuntime componentRuntime = new ComponentRuntime(builder.f12617a, builder.b, builder.f12618c);
            obj.f12772a = componentRuntime;
            componentRuntime.f();
            mlKitContext = f12771c;
        }
        return mlKitContext;
    }

    public final Object a(Class cls) {
        boolean z;
        if (f12771c == this) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "MlKitContext has been deleted");
        Preconditions.checkNotNull(this.f12772a);
        return this.f12772a.a(cls);
    }

    public final Context b() {
        return (Context) a(Context.class);
    }
}
