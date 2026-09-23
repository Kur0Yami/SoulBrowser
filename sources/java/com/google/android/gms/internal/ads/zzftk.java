package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzftk implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzftp f7647c;

    public zzftk(zzftp zzftpVar) {
        Objects.requireNonNull(zzftpVar);
        this.f7647c = zzftpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzftj zzftjVar = this.f7647c.e;
        zzftjVar.getClass();
        zzftr zzftrVar = new zzftr(zzftjVar);
        zzfts zzftsVar = zzftjVar.b;
        zzftrVar.f7651a = zzftsVar;
        ArrayDeque arrayDeque = zzftsVar.b;
        arrayDeque.add(zzftrVar);
        if (zzftsVar.f7653c == null) {
            zzftr zzftrVar2 = (zzftr) arrayDeque.poll();
            zzftsVar.f7653c = zzftrVar2;
            if (zzftrVar2 != null) {
                zzftrVar2.executeOnExecutor(zzftsVar.f7652a, new Object[0]);
            }
        }
    }
}
