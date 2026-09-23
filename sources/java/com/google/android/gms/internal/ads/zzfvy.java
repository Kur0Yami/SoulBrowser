package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzfvy {
    public static final HashMap h = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f7695a;
    public final zzfvz b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfuf f7696c;
    public final zzfua d;
    public final boolean e;
    public zzfvn f;
    public final Object g = new Object();

    public zzfvy(Context context, zzfvz zzfvzVar, zzfuf zzfufVar, zzfua zzfuaVar, boolean z) {
        this.f7695a = context;
        this.b = zzfvzVar;
        this.f7696c = zzfufVar;
        this.d = zzfuaVar;
        this.e = z;
    }

    public final boolean a(zzfvo zzfvoVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfvn zzfvnVar = new zzfvn(d(zzfvoVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f7695a, "msa-r", zzfvoVar.a(), null, new Bundle(), 2), zzfvoVar, this.b, this.f7696c, this.e);
                if (zzfvnVar.e()) {
                    int g = zzfvnVar.g();
                    if (g == 0) {
                        synchronized (this.g) {
                            zzfvn zzfvnVar2 = this.f;
                            if (zzfvnVar2 != null) {
                                try {
                                    zzfvnVar2.f();
                                } catch (zzfvx e) {
                                    this.f7696c.c(e.f7694c, -1L, e);
                                }
                            }
                            this.f = zzfvnVar;
                        }
                        this.f7696c.b(3000, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(g).length() + 4);
                    sb.append("ci: ");
                    sb.append(g);
                    throw new zzfvx(4001, sb.toString());
                }
                throw new zzfvx(4000, "init failed");
            } catch (Exception e2) {
                throw new zzfvx(2004, e2);
            }
        } catch (zzfvx e3) {
            this.f7696c.c(e3.f7694c, System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.f7696c.c(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }

    public final zzfui b() {
        zzfvn zzfvnVar;
        synchronized (this.g) {
            zzfvnVar = this.f;
        }
        return zzfvnVar;
    }

    public final zzfvo c() {
        synchronized (this.g) {
            try {
                zzfvn zzfvnVar = this.f;
                if (zzfvnVar != null) {
                    return zzfvnVar.b;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Class d(zzfvo zzfvoVar) {
        try {
            zzbby zzbbyVar = zzfvoVar.f7686a;
            if (zzbbyVar != null) {
                String D = zzbbyVar.D();
                HashMap hashMap = h;
                Class cls = (Class) hashMap.get(D);
                if (cls != null) {
                    return cls;
                }
                try {
                    zzfua zzfuaVar = this.d;
                    File file = zzfvoVar.b;
                    zzfuaVar.getClass();
                    if (zzfua.a(file)) {
                        try {
                            File file2 = zzfvoVar.f7687c;
                            if (!file2.exists()) {
                                file2.mkdirs();
                            }
                            Class<?> loadClass = new DexClassLoader(zzfvoVar.b.getAbsolutePath(), file2.getAbsolutePath(), null, this.f7695a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                            hashMap.put(D, loadClass);
                            return loadClass;
                        } catch (ClassNotFoundException e) {
                            e = e;
                            throw new zzfvx(2008, e);
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            throw new zzfvx(2008, e);
                        } catch (SecurityException e3) {
                            e = e3;
                            throw new zzfvx(2008, e);
                        }
                    }
                    throw new zzfvx(2026, "VM did not pass signature verification");
                } catch (GeneralSecurityException e4) {
                    throw new zzfvx(2026, e4);
                }
            }
            throw new zzfvx(4010, "mc");
        } finally {
        }
    }
}
