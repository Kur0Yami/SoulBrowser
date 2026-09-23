package com.google.android.gms.cast.internal;

import android.util.Log;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzan implements zzat {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzat f3614a;
    public final /* synthetic */ zzar b;

    public zzan(zzar zzarVar, zzat zzatVar) {
        this.f3614a = zzatVar;
        Objects.requireNonNull(zzarVar);
        this.b = zzarVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void a(long j, long j2, long j3, String str) {
        zzat zzatVar = this.f3614a;
        if (zzatVar != null) {
            zzatVar.a(j, j2, j3, str);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void b(String str, long j, int i, Object obj, long j2, long j3) {
        int i2;
        String str2;
        long j4;
        Object obj2;
        long j5;
        long j6;
        zzat zzatVar = this.f3614a;
        if (zzatVar != null) {
            if (i == 2001) {
                zzar zzarVar = this.b;
                Object[] objArr = {Integer.valueOf(zzarVar.i)};
                Logger logger = zzarVar.f3627a;
                Log.w(logger.f3604a, logger.d("Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d", objArr));
                zzarVar.h.zzm();
                i2 = 2001;
                j4 = j;
                obj2 = obj;
                j5 = j2;
                j6 = j3;
                str2 = str;
            } else {
                i2 = i;
                str2 = str;
                j4 = j;
                obj2 = obj;
                j5 = j2;
                j6 = j3;
            }
            zzatVar.b(str2, j4, i2, obj2, j5, j6);
        }
    }
}
