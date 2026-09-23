package com.google.android.gms.internal.auth;

import android.os.Build;
import android.os.StrictMode;
import android.os.UserManager;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzdd implements zzcl {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayMap f9521a = new SimpleArrayMap(0);

    public static zzdd b() {
        zzdd zzddVar;
        UserManager userManager = zzcc.f9503a;
        if (Build.VERSION.SDK_INT < 24) {
            synchronized (zzdd.class) {
                try {
                    zzddVar = (zzdd) f9521a.get(null);
                    if (zzddVar == null) {
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            throw null;
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return zzddVar;
        }
        throw null;
    }

    public static synchronized void c() {
        synchronized (zzdd.class) {
            ArrayMap arrayMap = f9521a;
            Iterator it = arrayMap.values().iterator();
            if (!it.hasNext()) {
                arrayMap.clear();
            } else {
                ((zzdd) it.next()).getClass();
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.auth.zzcl
    public final Object a(String str) {
        throw null;
    }
}
