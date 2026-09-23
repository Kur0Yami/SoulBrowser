package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzial;
import com.google.android.gms.internal.ads.zziar;
import java.io.IOException;

/* loaded from: classes.dex */
public class zzial<MessageType extends zziar<MessageType, BuilderType>, BuilderType extends zzial<MessageType, BuilderType>> extends zzhyt<MessageType, BuilderType> {

    /* renamed from: c, reason: collision with root package name */
    public final zziar f8912c;
    public zziar f;

    public zzial(zziar zziarVar) {
        this.f8912c = zziarVar;
        if (!zziarVar.n()) {
            this.f = zziarVar.t();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.ads.zzhyt
    public final Object clone() {
        zzial zzialVar = (zzial) this.f8912c.y(zziaq.i, null);
        zzialVar.f = B();
        return zzialVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhyt
    /* renamed from: h */
    public final zzial clone() {
        zzial zzialVar = (zzial) this.f8912c.y(zziaq.i, null);
        zzialVar.f = B();
        return zzialVar;
    }

    public final zzial j(byte[] bArr, int i, zziab zziabVar) {
        k();
        try {
            zzicm.f8938c.a(this.f.getClass()).e(this.f, bArr, 0, i, new zzhyz(zziabVar));
            return this;
        } catch (zzibg e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final void k() {
        if (!this.f.n()) {
            zziar t = this.f8912c.t();
            zzicm.f8938c.a(t.getClass()).c(t, this.f);
            this.f = t;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicb
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final zziar B() {
        if (!this.f.n()) {
            return this.f;
        }
        zziar zziarVar = this.f;
        zziarVar.getClass();
        zzicm.f8938c.a(zziarVar.getClass()).b(zziarVar);
        zziarVar.o();
        return this.f;
    }

    public final zziar m() {
        zziar B = B();
        B.getClass();
        if (zziar.z(B, true)) {
            return B;
        }
        throw new zzide();
    }

    public final zzial n(zziar zziarVar) {
        if (this.f8912c.equals(zziarVar)) {
            return this;
        }
        k();
        zziar zziarVar2 = this.f;
        zzicm.f8938c.a(zziarVar2.getClass()).c(zziarVar2, zziarVar);
        return this;
    }
}
