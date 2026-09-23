package com.google.android.gms.internal.mlkit_vision_text_common;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzuc {
    public static zzbk k;
    public static final zzbm l;

    /* renamed from: a, reason: collision with root package name */
    public final String f11421a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zztv f11422c;
    public final SharedPrefManager d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;
    public final HashMap i = new HashMap();
    public final HashMap j = new HashMap();

    static {
        Object[] objArr = {"optional-module-barcode", "com.google.android.gms.vision.barcode"};
        Objects.requireNonNull(objArr[0]);
        Objects.requireNonNull(objArr[1]);
        l = new zzcj(objArr);
    }

    public zzuc(Context context, final SharedPrefManager sharedPrefManager, zztv zztvVar, String str) {
        int i;
        this.f11421a = context.getPackageName();
        this.b = CommonUtils.a(context);
        this.d = sharedPrefManager;
        this.f11422c = zztvVar;
        zzuo.a();
        this.g = str;
        MLTaskExecutor a2 = MLTaskExecutor.a();
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzty
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzuc zzucVar = zzuc.this;
                zzucVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzucVar.g);
            }
        };
        a2.getClass();
        this.e = MLTaskExecutor.b(callable);
        MLTaskExecutor a3 = MLTaskExecutor.a();
        Objects.requireNonNull(sharedPrefManager);
        Callable callable2 = new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zztz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.a();
            }
        };
        a3.getClass();
        this.f = MLTaskExecutor.b(callable2);
        zzbm zzbmVar = l;
        if (zzbmVar.containsKey(str)) {
            i = DynamiteModule.d(context, (String) zzbmVar.get(str), false);
        } else {
            i = -1;
        }
        this.h = i;
    }

    public static long a(ArrayList arrayList, double d) {
        return ((Long) arrayList.get(Math.max(((int) Math.ceil((d / 100.0d) * arrayList.size())) - 1, 0))).longValue();
    }

    public final void b(zzub zzubVar, zzov zzovVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (!d(zzovVar, elapsedRealtime)) {
            return;
        }
        this.i.put(zzovVar, Long.valueOf(elapsedRealtime));
        MLTaskExecutor.c().execute(new zztw(this, zzubVar.zza(), zzovVar, c()));
    }

    public final String c() {
        Task task = this.e;
        if (task.p()) {
            return (String) task.m();
        }
        return LibraryVersion.getInstance().getVersion(this.g);
    }

    public final boolean d(zzov zzovVar, long j) {
        HashMap hashMap = this.i;
        if (hashMap.get(zzovVar) == null || j - ((Long) hashMap.get(zzovVar)).longValue() > TimeUnit.SECONDS.toMillis(30L)) {
            return true;
        }
        return false;
    }
}
