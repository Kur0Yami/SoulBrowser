package com.google.android.gms.internal.ads;

import dalvik.system.DexClassLoader;
import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbbf implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbbg f4528c;

    public zzbbf(zzbbg zzbbgVar) {
        this.f4528c = zzbbgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbbg zzbbgVar = this.f4528c;
        zzbbgVar.getClass();
        try {
            zzazt zzaztVar = zzbbgVar.f4529a;
            DexClassLoader dexClassLoader = zzaztVar.f4511c;
            byte[] bArr = zzaztVar.e;
            String str = zzbbgVar.b;
            zzaztVar.d.getClass();
            Class<?> loadClass = dexClassLoader.loadClass(new String(zzayy.b(str, bArr), "UTF-8"));
            if (loadClass != null) {
                byte[] bArr2 = zzaztVar.e;
                String str2 = zzbbgVar.f4530c;
                zzbbgVar.f4529a.d.getClass();
                zzbbgVar.d = loadClass.getMethod(new String(zzayy.b(str2, bArr2), "UTF-8"), zzbbgVar.e);
            }
        } catch (zzayx | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } catch (Throwable th) {
            zzbbgVar.f.countDown();
            throw th;
        }
        zzbbgVar.f.countDown();
    }
}
