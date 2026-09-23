package com.google.android.gms.internal.drive;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class zzjr extends zzjb {
    public static final Logger b = Logger.getLogger(zzjr.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f10207c = zznd.f;

    /* renamed from: a, reason: collision with root package name */
    public zzjt f10208a;

    /* loaded from: classes.dex */
    public static class zza extends zzjr {
        public final byte[] d;
        public final int e;
        public int f;

        public zza(byte[] bArr, int i) {
            if (((bArr.length - i) | i) >= 0) {
                this.d = bArr;
                this.f = 0;
                this.e = i;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void B(int i) {
            if (i >= 0) {
                C(i);
            } else {
                x(i);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void C(int i) {
            boolean z = zzjr.f10207c;
            byte[] bArr = this.d;
            if (z && !zzix.a() && r() >= 5) {
                if ((i & (-128)) == 0) {
                    int i2 = this.f;
                    this.f = i2 + 1;
                    zznd.e(bArr, i2, (byte) i);
                    return;
                }
                int i3 = this.f;
                this.f = i3 + 1;
                zznd.e(bArr, i3, (byte) (i | Uuid.SIZE_BITS));
                int i4 = i >>> 7;
                if ((i4 & (-128)) == 0) {
                    int i5 = this.f;
                    this.f = i5 + 1;
                    zznd.e(bArr, i5, (byte) i4);
                    return;
                }
                int i6 = this.f;
                this.f = i6 + 1;
                zznd.e(bArr, i6, (byte) (i4 | Uuid.SIZE_BITS));
                int i7 = i >>> 14;
                if ((i7 & (-128)) == 0) {
                    int i8 = this.f;
                    this.f = i8 + 1;
                    zznd.e(bArr, i8, (byte) i7);
                    return;
                }
                int i9 = this.f;
                this.f = i9 + 1;
                zznd.e(bArr, i9, (byte) (i7 | Uuid.SIZE_BITS));
                int i10 = i >>> 21;
                if ((i10 & (-128)) == 0) {
                    int i11 = this.f;
                    this.f = i11 + 1;
                    zznd.e(bArr, i11, (byte) i10);
                    return;
                } else {
                    int i12 = this.f;
                    this.f = i12 + 1;
                    zznd.e(bArr, i12, (byte) (i10 | Uuid.SIZE_BITS));
                    int i13 = this.f;
                    this.f = i13 + 1;
                    zznd.e(bArr, i13, (byte) (i >>> 28));
                    return;
                }
            }
            while ((i & (-128)) != 0) {
                try {
                    int i14 = this.f;
                    this.f = i14 + 1;
                    bArr[i14] = (byte) ((i & 127) | Uuid.SIZE_BITS);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            int i15 = this.f;
            this.f = i15 + 1;
            bArr[i15] = (byte) i;
        }

        public final void D(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.d, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void a(int i, long j) {
            j(i, 0);
            x(j);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void b(int i, zzjc zzjcVar) {
            j(i, 2);
            C(zzjcVar.size());
            zzjcVar.g(this);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void c(int i, zzlq zzlqVar) {
            j(1, 3);
            s(2, i);
            j(3, 2);
            C(zzlqVar.d());
            zzlqVar.c(this);
            j(1, 4);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void d(int i, zzlq zzlqVar, zzmf zzmfVar) {
            j(i, 2);
            zzit zzitVar = (zzit) zzlqVar;
            int g = zzitVar.g();
            if (g == -1) {
                g = zzmfVar.c(zzitVar);
                zzitVar.h(g);
            }
            C(g);
            zzmfVar.b(zzlqVar, this.f10208a);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void e(int i, String str) {
            j(i, 2);
            int i2 = this.f;
            try {
                int i3 = zzjr.i(str.length() * 3);
                int i4 = zzjr.i(str.length());
                byte[] bArr = this.d;
                if (i4 == i3) {
                    int i5 = i2 + i4;
                    this.f = i5;
                    int a2 = zznf.f10262a.a(str, bArr, i5, r());
                    this.f = i2;
                    C((a2 - i2) - i4);
                    this.f = a2;
                } else {
                    C(zznf.a(str));
                    this.f = zznf.f10262a.a(str, bArr, this.f, r());
                }
            } catch (zznj e) {
                this.f = i2;
                zzjr.b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                byte[] bytes = str.getBytes(zzkm.f10222a);
                try {
                    C(bytes.length);
                    D(bytes, 0, bytes.length);
                } catch (zzb e2) {
                    throw e2;
                } catch (IndexOutOfBoundsException e3) {
                    throw new zzb(e3);
                }
            } catch (IndexOutOfBoundsException e4) {
                throw new zzb(e4);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void f(int i) {
            try {
                byte[] bArr = this.d;
                int i2 = this.f;
                int i3 = i2 + 1;
                this.f = i3;
                bArr[i2] = (byte) i;
                int i4 = i2 + 2;
                this.f = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i2 + 3;
                this.f = i5;
                bArr[i4] = (byte) (i >> 16);
                this.f = i2 + 4;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void j(int i, int i2) {
            C((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void k(int i, zzjc zzjcVar) {
            j(1, 3);
            s(2, i);
            b(3, zzjcVar);
            j(1, 4);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void l(int i, boolean z) {
            j(i, 0);
            o(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void o(byte b) {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void p(int i, int i2) {
            j(i, 0);
            B(i2);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void q(int i, long j) {
            j(i, 1);
            z(j);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final int r() {
            return this.e - this.f;
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void s(int i, int i2) {
            j(i, 0);
            C(i2);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void t(int i, int i2) {
            j(i, 5);
            f(i2);
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void x(long j) {
            boolean z = zzjr.f10207c;
            byte[] bArr = this.d;
            if (z && r() >= 10) {
                while ((j & (-128)) != 0) {
                    int i = this.f;
                    this.f = i + 1;
                    zznd.e(bArr, i, (byte) ((((int) j) & 127) | Uuid.SIZE_BITS));
                    j >>>= 7;
                }
                int i2 = this.f;
                this.f = i2 + 1;
                zznd.e(bArr, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    int i3 = this.f;
                    this.f = i3 + 1;
                    bArr[i3] = (byte) ((((int) j) & 127) | Uuid.SIZE_BITS);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            int i4 = this.f;
            this.f = i4 + 1;
            bArr[i4] = (byte) j;
        }

        @Override // com.google.android.gms.internal.drive.zzjr
        public final void z(long j) {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                int i2 = i + 1;
                this.f = i2;
                bArr[i] = (byte) j;
                int i3 = i + 2;
                this.f = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i + 3;
                this.f = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i + 4;
                this.f = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i + 5;
                this.f = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i + 6;
                this.f = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i + 7;
                this.f = i8;
                bArr[i7] = (byte) (j >> 48);
                this.f = i + 8;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class zzb extends IOException {
        public zzb(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }

        public zzb(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super(str.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), indexOutOfBoundsException);
        }
    }

    public static int A(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int g(int i) {
        return i(i << 3);
    }

    public static int h(int i) {
        if (i >= 0) {
            return i(i);
        }
        return 10;
    }

    public static int i(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int m(int i, zzjc zzjcVar) {
        int g = g(i);
        int size = zzjcVar.size();
        return i(size) + size + g;
    }

    public static int n(int i, zzlq zzlqVar, zzmf zzmfVar) {
        int g = g(i) << 1;
        zzit zzitVar = (zzit) zzlqVar;
        int g2 = zzitVar.g();
        if (g2 == -1) {
            g2 = zzmfVar.c(zzitVar);
            zzitVar.h(g2);
        }
        return g + g2;
    }

    public static int u(int i) {
        return g(i) + 8;
    }

    public static int v(int i, int i2) {
        return i(i2) + g(i);
    }

    public static int w(int i) {
        return g(i) + 4;
    }

    public static int y(String str) {
        int length;
        try {
            length = zznf.a(str);
        } catch (zznj unused) {
            length = str.getBytes(zzkm.f10222a).length;
        }
        return i(length) + length;
    }

    public abstract void B(int i);

    public abstract void C(int i);

    public abstract void a(int i, long j);

    public abstract void b(int i, zzjc zzjcVar);

    public abstract void c(int i, zzlq zzlqVar);

    public abstract void d(int i, zzlq zzlqVar, zzmf zzmfVar);

    public abstract void e(int i, String str);

    public abstract void f(int i);

    public abstract void j(int i, int i2);

    public abstract void k(int i, zzjc zzjcVar);

    public abstract void l(int i, boolean z);

    public abstract void o(byte b2);

    public abstract void p(int i, int i2);

    public abstract void q(int i, long j);

    public abstract int r();

    public abstract void s(int i, int i2);

    public abstract void t(int i, int i2);

    public abstract void x(long j);

    public abstract void z(long j);
}
