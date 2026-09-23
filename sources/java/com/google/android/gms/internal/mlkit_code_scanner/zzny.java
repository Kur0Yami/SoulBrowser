package com.google.android.gms.internal.mlkit_code_scanner;

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
public final class zzny {
    public static zzp i;
    public static final zzr j;

    /* renamed from: a, reason: collision with root package name */
    public final String f10624a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zznu f10625c;
    public final SharedPrefManager d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;

    static {
        Object[] objArr = {"optional-module-barcode", "com.google.android.gms.vision.barcode"};
        objArr[0].getClass();
        objArr[1].getClass();
        j = new zzy(objArr);
    }

    public zzny(Context context, final SharedPrefManager sharedPrefManager, zznu zznuVar, String str) {
        int i2;
        new HashMap();
        new HashMap();
        this.f10624a = context.getPackageName();
        this.b = CommonUtils.a(context);
        this.d = sharedPrefManager;
        this.f10625c = zznuVar;
        zzok.a();
        this.g = str;
        MLTaskExecutor a2 = MLTaskExecutor.a();
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zznv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzny zznyVar = zzny.this;
                zznyVar.getClass();
                return LibraryVersion.getInstance().getVersion(zznyVar.g);
            }
        };
        a2.getClass();
        this.e = MLTaskExecutor.b(callable);
        MLTaskExecutor a3 = MLTaskExecutor.a();
        sharedPrefManager.getClass();
        Callable callable2 = new Callable() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zznw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.a();
            }
        };
        a3.getClass();
        this.f = MLTaskExecutor.b(callable2);
        zzr zzrVar = j;
        if (zzrVar.containsKey(str)) {
            i2 = DynamiteModule.d(context, (String) zzrVar.get(str), false);
        } else {
            i2 = -1;
        }
        this.h = i2;
    }
}
