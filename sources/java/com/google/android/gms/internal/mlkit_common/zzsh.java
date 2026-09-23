package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import j$.util.Objects;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzsh {
    public static zzaf i;
    public static final zzai j = zzaq.d(1, new Object[]{"optional-module-barcode", "com.google.android.gms.vision.barcode"}, null);

    /* renamed from: a, reason: collision with root package name */
    public final String f10905a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzsc f10906c;
    public final SharedPrefManager d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;

    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.mlkit_common.zzsv, java.lang.Object] */
    public zzsh(Context context, final SharedPrefManager sharedPrefManager, zzsc zzscVar, String str) {
        int i2;
        new HashMap();
        new HashMap();
        this.f10905a = context.getPackageName();
        this.b = CommonUtils.a(context);
        this.d = sharedPrefManager;
        this.f10906c = zzscVar;
        synchronized (zzsv.class) {
            if (zzsv.f10915a == null) {
                zzsv.f10915a = new Object();
            }
        }
        this.g = str;
        MLTaskExecutor a2 = MLTaskExecutor.a();
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzse
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzsh zzshVar = zzsh.this;
                zzshVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzshVar.g);
            }
        };
        a2.getClass();
        this.e = MLTaskExecutor.b(callable);
        MLTaskExecutor a3 = MLTaskExecutor.a();
        Objects.requireNonNull(sharedPrefManager);
        Callable callable2 = new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzsf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.a();
            }
        };
        a3.getClass();
        this.f = MLTaskExecutor.b(callable2);
        zzai zzaiVar = j;
        if (zzaiVar.containsKey(str)) {
            i2 = DynamiteModule.d(context, (String) zzaiVar.get(str), false);
        } else {
            i2 = -1;
        }
        this.h = i2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzqt, java.lang.Object] */
    public final zzqt a(String str, String str2) {
        zzaf zzafVar;
        String a2;
        ?? obj = new Object();
        obj.f10893a = this.f10905a;
        obj.b = this.b;
        synchronized (zzsh.class) {
            try {
                zzafVar = i;
                if (zzafVar == null) {
                    LocaleListCompat a3 = ConfigurationCompat.a(Resources.getSystem().getConfiguration());
                    zzac zzacVar = new zzac();
                    for (int i2 = 0; i2 < a3.e(); i2++) {
                        zzacVar.b(CommonUtils.b(a3.c(i2)));
                    }
                    zzacVar.f10918c = true;
                    zzafVar = zzaf.p(zzacVar.b, zzacVar.f10917a);
                    i = zzafVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        obj.e = zzafVar;
        obj.h = Boolean.TRUE;
        obj.d = str;
        obj.f10894c = str2;
        if (this.f.p()) {
            a2 = (String) this.f.m();
        } else {
            a2 = this.d.a();
        }
        obj.f = a2;
        obj.j = 10;
        obj.k = Integer.valueOf(this.h);
        return obj;
    }
}
