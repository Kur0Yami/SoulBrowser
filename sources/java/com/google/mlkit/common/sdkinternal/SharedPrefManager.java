package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.Component;
import com.google.firebase.components.Dependency;
import java.util.UUID;

@KeepForSdk
/* loaded from: classes3.dex */
public class SharedPrefManager {
    public static final Component b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f12779a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.firebase.components.ComponentFactory, java.lang.Object] */
    static {
        Component.Builder a2 = Component.a(SharedPrefManager.class);
        a2.a(new Dependency(1, 0, MlKitContext.class));
        a2.a(new Dependency(1, 0, Context.class));
        a2.d = new Object();
        b = a2.b();
    }

    public SharedPrefManager(Context context) {
        this.f12779a = context;
    }

    public final synchronized String a() {
        String string = b().getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        b().edit().putString("ml_sdk_instance_id", uuid).apply();
        return uuid;
    }

    public final SharedPreferences b() {
        return this.f12779a.getSharedPreferences("com.google.mlkit.internal", 0);
    }
}
