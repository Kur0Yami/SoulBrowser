package com.bumptech.glide.gifdecoder;

import android.support.v4.media.a;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import kotlin.UByte;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class GifHeaderParser {
    public ByteBuffer b;

    /* renamed from: c, reason: collision with root package name */
    public GifHeader f2112c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f2111a = new byte[256];
    public int d = 0;

    public final boolean a() {
        if (this.f2112c.b != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r6v29, types: [com.bumptech.glide.gifdecoder.GifFrame, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v37, types: [com.bumptech.glide.gifdecoder.GifFrame, java.lang.Object] */
    public final GifHeader b() {
        boolean z;
        boolean z2;
        boolean z3;
        byte[] bArr;
        boolean z4;
        if (this.b != null) {
            if (a()) {
                return this.f2112c;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb.append((char) c());
            }
            if (!sb.toString().startsWith("GIF")) {
                this.f2112c.b = 1;
            } else {
                this.f2112c.f = this.b.getShort();
                this.f2112c.g = this.b.getShort();
                int c2 = c();
                GifHeader gifHeader = this.f2112c;
                if ((c2 & Uuid.SIZE_BITS) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                gifHeader.h = z;
                gifHeader.i = (int) Math.pow(2.0d, (c2 & 7) + 1);
                this.f2112c.j = c();
                GifHeader gifHeader2 = this.f2112c;
                c();
                gifHeader2.getClass();
                if (this.f2112c.h && !a()) {
                    GifHeader gifHeader3 = this.f2112c;
                    gifHeader3.f2109a = e(gifHeader3.i);
                    GifHeader gifHeader4 = this.f2112c;
                    gifHeader4.k = gifHeader4.f2109a[gifHeader4.j];
                }
            }
            if (!a()) {
                boolean z5 = false;
                while (!z5 && !a() && this.f2112c.f2110c <= Integer.MAX_VALUE) {
                    int c3 = c();
                    if (c3 != 33) {
                        if (c3 != 44) {
                            if (c3 != 59) {
                                this.f2112c.b = 1;
                            } else {
                                z5 = true;
                            }
                        } else {
                            GifHeader gifHeader5 = this.f2112c;
                            if (gifHeader5.d == null) {
                                gifHeader5.d = new Object();
                            }
                            gifHeader5.d.f2107a = this.b.getShort();
                            this.f2112c.d.b = this.b.getShort();
                            this.f2112c.d.f2108c = this.b.getShort();
                            this.f2112c.d.d = this.b.getShort();
                            int c4 = c();
                            if ((c4 & Uuid.SIZE_BITS) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            int pow = (int) Math.pow(2.0d, (c4 & 7) + 1);
                            GifFrame gifFrame = this.f2112c.d;
                            if ((c4 & 64) != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            gifFrame.e = z3;
                            if (z2) {
                                gifFrame.k = e(pow);
                            } else {
                                gifFrame.k = null;
                            }
                            this.f2112c.d.j = this.b.position();
                            c();
                            f();
                            if (!a()) {
                                GifHeader gifHeader6 = this.f2112c;
                                gifHeader6.f2110c++;
                                gifHeader6.e.add(gifHeader6.d);
                            }
                        }
                    } else {
                        int c5 = c();
                        if (c5 != 1) {
                            if (c5 != 249) {
                                if (c5 != 254) {
                                    if (c5 != 255) {
                                        f();
                                    } else {
                                        d();
                                        StringBuilder sb2 = new StringBuilder();
                                        int i2 = 0;
                                        while (true) {
                                            bArr = this.f2111a;
                                            if (i2 >= 11) {
                                                break;
                                            }
                                            sb2.append((char) bArr[i2]);
                                            i2++;
                                        }
                                        if (sb2.toString().equals("NETSCAPE2.0")) {
                                            do {
                                                d();
                                                if (bArr[0] == 1) {
                                                    byte b = bArr[1];
                                                    byte b2 = bArr[2];
                                                    this.f2112c.getClass();
                                                }
                                                if (this.d > 0) {
                                                }
                                            } while (!a());
                                        } else {
                                            f();
                                        }
                                    }
                                } else {
                                    f();
                                }
                            } else {
                                this.f2112c.d = new Object();
                                c();
                                int c6 = c();
                                GifFrame gifFrame2 = this.f2112c.d;
                                int i3 = (c6 & 28) >> 2;
                                gifFrame2.g = i3;
                                if (i3 == 0) {
                                    gifFrame2.g = 1;
                                }
                                if ((c6 & 1) != 0) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                gifFrame2.f = z4;
                                short s = this.b.getShort();
                                if (s < 2) {
                                    s = 10;
                                }
                                GifFrame gifFrame3 = this.f2112c.d;
                                gifFrame3.i = s * 10;
                                gifFrame3.h = c();
                                c();
                            }
                        } else {
                            f();
                        }
                    }
                }
                GifHeader gifHeader7 = this.f2112c;
                if (gifHeader7.f2110c < 0) {
                    gifHeader7.b = 1;
                }
            }
            return this.f2112c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public final int c() {
        try {
            return this.b.get() & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.f2112c.b = 1;
            return 0;
        }
    }

    public final void d() {
        int c2 = c();
        this.d = c2;
        if (c2 > 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    i2 = this.d;
                    if (i < i2) {
                        i2 -= i;
                        this.b.get(this.f2111a, i, i2);
                        i += i2;
                    } else {
                        return;
                    }
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        StringBuilder u = a.u("Error Reading Block n: ", i, i2, " count: ", " blockSize: ");
                        u.append(this.d);
                        Log.d("GifHeaderParser", u.toString(), e);
                    }
                    this.f2112c.b = 1;
                    return;
                }
            }
        }
    }

    public final int[] e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = bArr[i3] & UByte.MAX_VALUE;
                int i5 = i3 + 2;
                int i6 = bArr[i3 + 1] & UByte.MAX_VALUE;
                i3 += 3;
                int i7 = i2 + 1;
                iArr[i2] = (i6 << 8) | (i4 << 16) | (-16777216) | (bArr[i5] & UByte.MAX_VALUE);
                i2 = i7;
            }
            return iArr;
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.f2112c.b = 1;
            return iArr;
        }
    }

    public final void f() {
        int c2;
        do {
            c2 = c();
            this.b.position(Math.min(this.b.position() + c2, this.b.limit()));
        } while (c2 > 0);
    }
}
