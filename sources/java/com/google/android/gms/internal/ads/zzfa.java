package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final class zzfa {

    /* renamed from: a, reason: collision with root package name */
    public final zzbb f7144a;
    public final zzaz b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeu f7145c;
    public final zzbd d = new zzbd();
    public final zzdx e;
    public final zzev f;
    public final zzex g;
    public final zzey h;
    public final zzez i;

    public zzfa(zzbb zzbbVar, zzeu zzeuVar, zzfc zzfcVar, int i, int i2, int i3, int i4) {
        this.f7144a = zzbbVar;
        this.f7145c = zzeuVar;
        zzkp zzkpVar = (zzkp) zzbbVar;
        this.e = zzfcVar.a(zzkpVar.s, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.zzew
            @Override // android.os.Handler.Callback
            public final /* synthetic */ boolean handleMessage(Message message) {
                zzfa zzfaVar = zzfa.this;
                zzfaVar.getClass();
                int i5 = message.what;
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            if (i5 != 4) {
                                return false;
                            }
                            zzfaVar.i.a();
                            return true;
                        }
                        zzfaVar.h.a();
                        return true;
                    }
                    zzfaVar.g.a();
                    return true;
                }
                zzfaVar.f.a();
                return true;
            }
        });
        this.f = new zzev(this, i);
        this.g = new zzex(this, i2);
        this.h = new zzey(this, i3);
        this.i = new zzez(this, i4);
        zzet zzetVar = new zzet(this);
        this.b = zzetVar;
        zzkpVar.m.a(zzetVar);
    }
}
