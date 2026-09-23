package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcg implements zzcl {
    public static final ArrayMap g = new SimpleArrayMap(0);
    public static final String[] h = {"key", "value"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f9507a;
    public final Uri b;

    /* renamed from: c, reason: collision with root package name */
    public final ContentObserver f9508c;
    public final Object d;
    public volatile Map e;
    public final ArrayList f;

    public zzcg(ContentResolver contentResolver, Uri uri) {
        zzcf zzcfVar = new zzcf(this);
        this.f9508c = zzcfVar;
        this.d = new Object();
        this.f = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f9507a = contentResolver;
        this.b = uri;
        contentResolver.registerContentObserver(uri, false, zzcfVar);
    }

    public static zzcg b(ContentResolver contentResolver, Uri uri) {
        zzcg zzcgVar;
        synchronized (zzcg.class) {
            ArrayMap arrayMap = g;
            zzcgVar = (zzcg) arrayMap.get(uri);
            if (zzcgVar == null) {
                try {
                    zzcg zzcgVar2 = new zzcg(contentResolver, uri);
                    try {
                        arrayMap.put(uri, zzcgVar2);
                    } catch (SecurityException unused) {
                    }
                    zzcgVar = zzcgVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzcgVar;
    }

    public static synchronized void c() {
        synchronized (zzcg.class) {
            try {
                for (zzcg zzcgVar : g.values()) {
                    zzcgVar.f9507a.unregisterContentObserver(zzcgVar.f9508c);
                }
                g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.auth.zzce] */
    @Override // com.google.android.gms.internal.auth.zzcl
    public final Object a(String str) {
        Map map;
        Map map2;
        Object a2;
        Map map3 = this.e;
        Map map4 = map3;
        if (map3 == null) {
            synchronized (this.d) {
                ?? r0 = this.e;
                if (r0 != 0) {
                    map2 = r0;
                } else {
                    try {
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            ?? r2 = new zzck() { // from class: com.google.android.gms.internal.auth.zzce
                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX WARN: Type inference failed for: r2v4, types: [androidx.collection.SimpleArrayMap] */
                                public final Object a() {
                                    HashMap hashMap;
                                    zzcg zzcgVar = zzcg.this;
                                    Cursor query = zzcgVar.f9507a.query(zzcgVar.b, zzcg.h, null, null, null);
                                    if (query == null) {
                                        return Collections.EMPTY_MAP;
                                    }
                                    try {
                                        int count = query.getCount();
                                        if (count == 0) {
                                            return Collections.EMPTY_MAP;
                                        }
                                        if (count <= 256) {
                                            hashMap = new SimpleArrayMap(count);
                                        } else {
                                            hashMap = new HashMap(count, 1.0f);
                                        }
                                        while (query.moveToNext()) {
                                            hashMap.put(query.getString(0), query.getString(1));
                                        }
                                        return hashMap;
                                    } finally {
                                        query.close();
                                    }
                                }
                            };
                            try {
                                a2 = r2.a();
                            } catch (SecurityException unused) {
                                long clearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    a2 = r2.a();
                                } finally {
                                    Binder.restoreCallingIdentity(clearCallingIdentity);
                                }
                            }
                            map = (Map) a2;
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused2) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            map = null;
                        }
                        this.e = map;
                        map2 = map;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(r0);
                        throw th;
                    }
                }
            }
            map4 = map2;
        }
        if (map4 == null) {
            map4 = Collections.EMPTY_MAP;
        }
        return (String) map4.get(str);
    }
}
