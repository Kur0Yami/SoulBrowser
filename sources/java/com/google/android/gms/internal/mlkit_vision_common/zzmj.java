package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzmj {
    public static zzp j;
    public static final zzr k;

    /* renamed from: a, reason: collision with root package name */
    public final String f11107a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzmf f11108c;
    public final SharedPrefManager d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;
    public final HashMap i = new HashMap();

    static {
        Object[] objArr = {"optional-module-barcode", "com.google.android.gms.vision.barcode"};
        objArr[0].getClass();
        objArr[1].getClass();
        k = new zzz(objArr);
    }

    public zzmj(Context context, final SharedPrefManager sharedPrefManager, zzmf zzmfVar, String str) {
        int i;
        new HashMap();
        this.f11107a = context.getPackageName();
        this.b = CommonUtils.a(context);
        this.d = sharedPrefManager;
        this.f11108c = zzmfVar;
        zzmw.a();
        this.g = str;
        MLTaskExecutor a2 = MLTaskExecutor.a();
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzmj zzmjVar = zzmj.this;
                zzmjVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzmjVar.g);
            }
        };
        a2.getClass();
        this.e = MLTaskExecutor.b(callable);
        MLTaskExecutor a3 = MLTaskExecutor.a();
        sharedPrefManager.getClass();
        Callable callable2 = new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.a();
            }
        };
        a3.getClass();
        this.f = MLTaskExecutor.b(callable2);
        zzr zzrVar = k;
        if (zzrVar.containsKey(str)) {
            i = DynamiteModule.d(context, (String) zzrVar.get(str), false);
        } else {
            i = -1;
        }
        this.h = i;
    }
}
