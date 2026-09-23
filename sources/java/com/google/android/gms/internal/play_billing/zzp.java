package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzp {

    /* renamed from: a, reason: collision with root package name */
    public Object f11559a;
    public zzt b;

    /* renamed from: c, reason: collision with root package name */
    public zzv f11560c;
    public boolean d;

    public final void a(Object obj) {
        this.d = true;
        zzt zztVar = this.b;
        if (zztVar != null) {
            zzo zzoVar = zztVar.f;
            zzoVar.getClass();
            if (obj == null) {
                obj = zzo.k;
            }
            if (zzo.j.d(zzoVar, null, obj)) {
                zzo.b(zzoVar);
                this.f11559a = null;
                this.b = null;
                this.f11560c = null;
            }
        }
    }

    public final void finalize() {
        zzv zzvVar;
        zzt zztVar = this.b;
        if (zztVar != null) {
            zzo zzoVar = zztVar.f;
            if (!zzoVar.isDone()) {
                if (zzo.j.d(zzoVar, null, new zzg(new Throwable("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.f11559a)))))) {
                    zzo.b(zzoVar);
                }
            }
        }
        if (!this.d && (zzvVar = this.f11560c) != null) {
            zzvVar.g(null);
        }
    }
}
