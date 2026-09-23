package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzfsd implements zzfsg {
    public static final zzfsd e = new zzfsd(new Object());

    /* renamed from: a, reason: collision with root package name */
    public Date f7615a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfsh f7616c;
    public boolean d;

    public zzfsd(zzfsh zzfshVar) {
        this.f7616c = zzfshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsg
    public final void zzd(boolean z) {
        Date date;
        if (!this.d && z) {
            Date date2 = new Date();
            Date date3 = this.f7615a;
            if (date3 == null || date2.after(date3)) {
                this.f7615a = date2;
                if (this.b) {
                    Iterator it = DesugarCollections.unmodifiableCollection(zzfsf.f7617c.b).iterator();
                    while (it.hasNext()) {
                        zzfsv zzfsvVar = ((zzfrl) it.next()).d;
                        Date date4 = this.f7615a;
                        if (date4 != null) {
                            date = (Date) date4.clone();
                        } else {
                            date = null;
                        }
                        zzfsvVar.f(date);
                    }
                }
            }
        }
        this.d = z;
    }
}
