package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.mycompany.app.main.MainApp;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class PrefCore {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17317a = new Object();
    public final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public String f17318c;
    public String d;
    public JsonObject e;
    public boolean f;
    public boolean g;
    public ExecutorService h;

    public PrefCore(Context context, String str) {
        if (context == null) {
            return;
        }
        i(context, str);
    }

    public final void a() {
        Runnable runnable = new Runnable() { // from class: com.mycompany.app.pref.PrefCore.1
            @Override // java.lang.Runnable
            public final void run() {
                PrefCore.this.c();
            }
        };
        ExecutorService executorService = this.h;
        if (executorService == null) {
            return;
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r6 = this;
            com.google.gson.JsonObject r0 = r6.e
            if (r0 != 0) goto L6
            goto L66
        L6:
            java.lang.String r0 = r6.d
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lf
            goto L66
        Lf:
            r0 = 0
            java.lang.Object r1 = r6.f17317a     // Catch: java.lang.Exception -> L56
            monitor-enter(r1)     // Catch: java.lang.Exception -> L56
            com.google.gson.JsonObject r2 = r6.e     // Catch: java.lang.Throwable -> L58
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L58
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L58
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L56
            if (r1 == 0) goto L21
            goto L66
        L21:
            java.lang.String r1 = r6.f17318c     // Catch: java.lang.Exception -> L56
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L56
            if (r1 == 0) goto L2a
            goto L3b
        L2a:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L56
            java.lang.String r3 = r6.f17318c     // Catch: java.lang.Exception -> L56
            r1.<init>(r3)     // Catch: java.lang.Exception -> L56
            boolean r3 = r1.isDirectory()     // Catch: java.lang.Exception -> L56
            if (r3 == 0) goto L38
            goto L3b
        L38:
            r1.mkdir()     // Catch: java.lang.Exception -> L56
        L3b:
            java.lang.String r1 = r6.d     // Catch: java.lang.Exception -> L56
            r3 = 0
            java.io.OutputStream r1 = com.mycompany.app.main.MainUtil.c1(r1, r3)     // Catch: java.lang.Exception -> L56
            java.io.BufferedWriter r3 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L54
            java.io.OutputStreamWriter r4 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L54
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L54
            r4.<init>(r1, r5)     // Catch: java.lang.Exception -> L54
            r3.<init>(r4)     // Catch: java.lang.Exception -> L54
            r3.write(r2)     // Catch: java.lang.Exception -> L52
            goto L5c
        L52:
            r0 = r1
            goto L5b
        L54:
            r3 = r0
            goto L52
        L56:
            r3 = r0
            goto L5b
        L58:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L58
            throw r2     // Catch: java.lang.Exception -> L56
        L5b:
            r1 = r0
        L5c:
            if (r3 == 0) goto L61
            r3.close()     // Catch: java.lang.Exception -> L61
        L61:
            if (r1 == 0) goto L66
            r1.close()     // Catch: java.lang.Exception -> L66
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.pref.PrefCore.b():void");
    }

    public final void c() {
        synchronized (this.b) {
            try {
                if (this.f) {
                    this.g = true;
                    return;
                }
                this.f = true;
                b();
                boolean z = this.g;
                this.g = false;
                if (z) {
                    b();
                }
                synchronized (this.b) {
                    this.f = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d(String str, boolean z) {
        JsonElement r;
        JsonObject jsonObject = this.e;
        if (jsonObject != null && (r = jsonObject.r(str)) != null) {
            try {
                if (!(r instanceof JsonNull)) {
                    return r.a();
                }
            } catch (Exception unused) {
            }
        }
        return z;
    }

    public final float e(String str, float f) {
        JsonElement r;
        JsonObject jsonObject = this.e;
        if (jsonObject != null && (r = jsonObject.r(str)) != null) {
            try {
                if (!(r instanceof JsonNull)) {
                    return r.c();
                }
            } catch (Exception unused) {
            }
        }
        return f;
    }

    public final int f(String str, int i) {
        JsonElement r;
        JsonObject jsonObject = this.e;
        if (jsonObject != null && (r = jsonObject.r(str)) != null) {
            try {
                if (!(r instanceof JsonNull)) {
                    return r.g();
                }
            } catch (Exception unused) {
            }
        }
        return i;
    }

    public final long g(String str, long j) {
        JsonElement r;
        JsonObject jsonObject = this.e;
        if (jsonObject != null && (r = jsonObject.r(str)) != null) {
            try {
                if (!(r instanceof JsonNull)) {
                    return r.m();
                }
            } catch (Exception unused) {
            }
        }
        return j;
    }

    public final String h(String str, String str2) {
        JsonElement r;
        JsonObject jsonObject = this.e;
        if (jsonObject != null && (r = jsonObject.r(str)) != null) {
            try {
                if (!(r instanceof JsonNull)) {
                    String p = r.p();
                    if (p != null) {
                        return p;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return str2;
    }

    public final void i(Context context, String str) {
        if (context != null) {
            this.h = MainApp.i(context);
            try {
                String path = new File(context.getFilesDir(), ".pref").getPath();
                if (!TextUtils.isEmpty(path)) {
                    this.f17318c = path;
                    this.d = path + "/" + str;
                    k();
                }
            } catch (Exception unused) {
            }
        }
    }

    public final boolean j() {
        if (this.e == null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            r5 = this;
            java.lang.String r0 = r5.d
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto La
            goto L69
        La:
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L3d
            java.lang.String r2 = r5.d     // Catch: java.lang.Exception -> L3d
            r1.<init>(r2)     // Catch: java.lang.Exception -> L3d
            boolean r1 = r1.exists()     // Catch: java.lang.Exception -> L3d
            if (r1 != 0) goto L19
            goto L69
        L19:
            java.lang.String r1 = r5.d     // Catch: java.lang.Exception -> L3d
            java.io.InputStream r1 = com.mycompany.app.main.MainUtil.a1(r1)     // Catch: java.lang.Exception -> L3d
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L3a
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L3a
            r3.<init>(r1)     // Catch: java.lang.Exception -> L3a
            r2.<init>(r3)     // Catch: java.lang.Exception -> L3a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L38
            r3.<init>()     // Catch: java.lang.Exception -> L38
        L2e:
            java.lang.String r4 = r2.readLine()     // Catch: java.lang.Exception -> L40
            if (r4 == 0) goto L40
            r3.append(r4)     // Catch: java.lang.Exception -> L40
            goto L2e
        L38:
            r3 = r0
            goto L40
        L3a:
            r2 = r0
        L3b:
            r3 = r2
            goto L40
        L3d:
            r1 = r0
            r2 = r1
            goto L3b
        L40:
            if (r2 == 0) goto L45
            r2.close()     // Catch: java.lang.Exception -> L45
        L45:
            if (r1 == 0) goto L4a
            r1.close()     // Catch: java.lang.Exception -> L4a
        L4a:
            if (r3 != 0) goto L4d
            goto L69
        L4d:
            java.lang.String r1 = r3.toString()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L58
            goto L69
        L58:
            com.google.gson.JsonElement r1 = com.google.gson.JsonParser.b(r1)     // Catch: java.lang.Exception -> L60
            com.google.gson.JsonObject r0 = r1.k()     // Catch: java.lang.Exception -> L60
        L60:
            if (r0 != 0) goto L63
            goto L69
        L63:
            java.lang.Object r1 = r5.f17317a
            monitor-enter(r1)
            r5.e = r0     // Catch: java.lang.Throwable -> L6a
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6a
        L69:
            return
        L6a:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.pref.PrefCore.k():void");
    }

    public final void l(String str, boolean z) {
        synchronized (this.f17317a) {
            try {
                if (this.e == null) {
                    this.e = new JsonObject();
                }
                JsonObject jsonObject = this.e;
                Boolean valueOf = Boolean.valueOf(z);
                jsonObject.getClass();
                jsonObject.f12671c.put(str, new JsonPrimitive(valueOf));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(String str, float f) {
        synchronized (this.f17317a) {
            try {
                if (this.e == null) {
                    this.e = new JsonObject();
                }
                JsonObject jsonObject = this.e;
                Float valueOf = Float.valueOf(f);
                jsonObject.getClass();
                jsonObject.f12671c.put(str, new JsonPrimitive(valueOf));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(int i, String str) {
        synchronized (this.f17317a) {
            try {
                if (this.e == null) {
                    this.e = new JsonObject();
                }
                JsonObject jsonObject = this.e;
                Integer valueOf = Integer.valueOf(i);
                jsonObject.getClass();
                jsonObject.f12671c.put(str, new JsonPrimitive(valueOf));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o(long j, String str) {
        synchronized (this.f17317a) {
            try {
                if (this.e == null) {
                    this.e = new JsonObject();
                }
                JsonObject jsonObject = this.e;
                Long valueOf = Long.valueOf(j);
                jsonObject.getClass();
                jsonObject.f12671c.put(str, new JsonPrimitive(valueOf));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(String str, String str2) {
        if (str2 == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        synchronized (this.f17317a) {
            try {
                if (this.e == null) {
                    this.e = new JsonObject();
                }
                JsonObject jsonObject = this.e;
                jsonObject.getClass();
                jsonObject.f12671c.put(str, new JsonPrimitive(str2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q(String str) {
        synchronized (this.f17317a) {
            try {
                JsonObject jsonObject = this.e;
                if (jsonObject == null) {
                    return;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
