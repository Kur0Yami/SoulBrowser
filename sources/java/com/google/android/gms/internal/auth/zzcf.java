package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcf extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcg f9506a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcf(zzcg zzcgVar) {
        super(null);
        this.f9506a = zzcgVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzcg zzcgVar = this.f9506a;
        synchronized (zzcgVar.d) {
            zzcgVar.e = null;
            zzdc.h.incrementAndGet();
        }
        synchronized (zzcgVar) {
            try {
                ArrayList arrayList = zzcgVar.f;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((zzch) obj).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
