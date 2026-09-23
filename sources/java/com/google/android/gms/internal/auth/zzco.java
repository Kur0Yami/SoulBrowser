package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzco implements zzcl {

    /* renamed from: c, reason: collision with root package name */
    public static zzco f9511c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9512a;
    public final ContentObserver b;

    public zzco() {
        this.f9512a = null;
        this.b = null;
    }

    public static zzco b(Context context) {
        zzco zzcoVar;
        zzco zzcoVar2;
        synchronized (zzco.class) {
            try {
                if (f9511c == null) {
                    if (PermissionChecker.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                        zzcoVar2 = new zzco(context);
                    } else {
                        zzcoVar2 = new zzco();
                    }
                    f9511c = zzcoVar2;
                }
                zzcoVar = f9511c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcoVar;
    }

    public static synchronized void d() {
        Context context;
        synchronized (zzco.class) {
            try {
                zzco zzcoVar = f9511c;
                if (zzcoVar != null && (context = zzcoVar.f9512a) != null && zzcoVar.b != null) {
                    context.getContentResolver().unregisterContentObserver(f9511c.b);
                }
                f9511c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.gms.internal.auth.zzcm] */
    @Override // com.google.android.gms.internal.auth.zzcl
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String a(final String str) {
        Object a2;
        Context context = this.f9512a;
        if (context != null && !zzcc.a(context)) {
            try {
                try {
                    ?? r1 = new zzck() { // from class: com.google.android.gms.internal.auth.zzcm
                        public final Object a() {
                            zzco zzcoVar = zzco.this;
                            String str2 = str;
                            ContentResolver contentResolver = zzcoVar.f9512a.getContentResolver();
                            Uri uri = zzcb.f9501a;
                            synchronized (zzcb.class) {
                                try {
                                    String str3 = null;
                                    if (zzcb.e == null) {
                                        zzcb.d.set(false);
                                        zzcb.e = new HashMap(16, 1.0f);
                                        zzcb.j = new Object();
                                        contentResolver.registerContentObserver(zzcb.f9501a, true, new ContentObserver(null));
                                    } else if (zzcb.d.getAndSet(false)) {
                                        zzcb.e.clear();
                                        zzcb.f.clear();
                                        zzcb.g.clear();
                                        zzcb.h.clear();
                                        zzcb.i.clear();
                                        zzcb.j = new Object();
                                    }
                                    Object obj = zzcb.j;
                                    if (zzcb.e.containsKey(str2)) {
                                        String str4 = (String) zzcb.e.get(str2);
                                        if (str4 != null) {
                                            str3 = str4;
                                        }
                                        return str3;
                                    }
                                    int length = zzcb.k.length;
                                    Cursor query = contentResolver.query(zzcb.f9501a, null, null, new String[]{str2}, null);
                                    if (query != null) {
                                        try {
                                            if (!query.moveToFirst()) {
                                                zzcb.a(obj, str2, null);
                                                return null;
                                            }
                                            String string = query.getString(1);
                                            if (string != null && string.equals(null)) {
                                                string = null;
                                            }
                                            zzcb.a(obj, str2, string);
                                            if (string != null) {
                                                return string;
                                            }
                                        } finally {
                                            query.close();
                                        }
                                    }
                                    return null;
                                } finally {
                                }
                            }
                        }
                    };
                    try {
                        a2 = r1.a();
                    } catch (SecurityException unused) {
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        try {
                            a2 = r1.a();
                        } finally {
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                        }
                    }
                    return (String) a2;
                } catch (SecurityException e) {
                    e = e;
                    Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                    return null;
                }
            } catch (IllegalStateException e2) {
                e = e2;
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                return null;
            }
        }
        return null;
    }

    public zzco(Context context) {
        this.f9512a = context;
        ContentObserver contentObserver = new ContentObserver(null);
        this.b = contentObserver;
        context.getContentResolver().registerContentObserver(zzcb.f9501a, true, contentObserver);
    }
}
