package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzck {

    /* renamed from: a, reason: collision with root package name */
    public final zzgtd f5216a;
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f5217c = new ByteBuffer[0];
    public boolean d;

    public zzck(zzgtd zzgtdVar) {
        this.f5216a = zzgtdVar;
        zzcl zzclVar = zzcl.e;
        this.d = false;
    }

    public final zzcl a(zzcl zzclVar) {
        if (!zzclVar.equals(zzcl.e)) {
            int i = 0;
            while (true) {
                zzgtd zzgtdVar = this.f5216a;
                if (i < zzgtdVar.size()) {
                    zzco zzcoVar = (zzco) zzgtdVar.get(i);
                    zzcl c2 = zzcoVar.c(zzclVar);
                    if (zzcoVar.zzc()) {
                        zzgqa.f(!c2.equals(r0));
                        zzclVar = c2;
                    }
                    i++;
                } else {
                    return zzclVar;
                }
            }
        } else {
            throw new zzcn("Unhandled input format:", zzclVar);
        }
    }

    public final void b(zzcm zzcmVar) {
        boolean z;
        ArrayList arrayList = this.b;
        arrayList.clear();
        this.d = false;
        long j = zzcmVar.f5259a;
        int i = 0;
        while (true) {
            zzgtd zzgtdVar = this.f5216a;
            if (i >= zzgtdVar.size()) {
                break;
            }
            zzco zzcoVar = (zzco) zzgtdVar.get(i);
            new zzcm(j);
            zzcoVar.zzi();
            if (zzcoVar.zzc()) {
                j = zzcoVar.a(j);
                if (j >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                arrayList.add(zzcoVar);
            }
            i++;
        }
        this.f5217c = new ByteBuffer[arrayList.size()];
        for (int i2 = 0; i2 <= f(); i2++) {
            this.f5217c[i2] = ((zzco) arrayList.get(i2)).zzf();
        }
    }

    public final boolean c() {
        if (!this.b.isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (this.d && ((zzco) this.b.get(f())).zzg() && !this.f5217c[f()].hasRemaining()) {
            return true;
        }
        return false;
    }

    public final void e(ByteBuffer byteBuffer) {
        boolean z;
        ByteBuffer byteBuffer2;
        do {
            z = false;
            for (int i = 0; i <= f(); i++) {
                if (!this.f5217c[i].hasRemaining()) {
                    ArrayList arrayList = this.b;
                    zzco zzcoVar = (zzco) arrayList.get(i);
                    if (zzcoVar.zzg()) {
                        if (!this.f5217c[i].hasRemaining() && i < f()) {
                            ((zzco) arrayList.get(i + 1)).zze();
                        }
                    } else {
                        if (i > 0) {
                            byteBuffer2 = this.f5217c[i - 1];
                        } else if (byteBuffer.hasRemaining()) {
                            byteBuffer2 = byteBuffer;
                        } else {
                            byteBuffer2 = zzco.f5330a;
                        }
                        long remaining = byteBuffer2.remaining();
                        zzcoVar.b(byteBuffer2);
                        this.f5217c[i] = zzcoVar.zzf();
                        boolean z2 = true;
                        if (remaining - byteBuffer2.remaining() <= 0 && !this.f5217c[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    }
                }
            }
        } while (z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzck)) {
            return false;
        }
        zzgtd zzgtdVar = this.f5216a;
        int size = zzgtdVar.size();
        zzgtd zzgtdVar2 = ((zzck) obj).f5216a;
        if (size != zzgtdVar2.size()) {
            return false;
        }
        for (int i = 0; i < zzgtdVar.size(); i++) {
            if (zzgtdVar.get(i) != zzgtdVar2.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final int f() {
        return this.f5217c.length - 1;
    }

    public final int hashCode() {
        return this.f5216a.hashCode();
    }
}
