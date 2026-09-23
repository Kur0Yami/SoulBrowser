package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzsz extends zzcp {
    public static final int i = Float.floatToIntBits(Float.NaN);

    public static void i(ByteBuffer byteBuffer, int i2) {
        int floatToIntBits = Float.floatToIntBits((float) (i2 * 4.656612875245797E-10d));
        if (floatToIntBits == i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void b(ByteBuffer byteBuffer) {
        ByteBuffer d;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        int i3 = this.b.f5232c;
        if (i3 != 2) {
            if (i3 != 1342177280) {
                if (i3 != 1610612736) {
                    if (i3 != 21) {
                        if (i3 == 22) {
                            d = d(i2);
                            while (position < limit) {
                                int i4 = byteBuffer.get(position) & UByte.MAX_VALUE;
                                int i5 = (byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 8;
                                i(d, i4 | i5 | ((byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position + 3) & UByte.MAX_VALUE) << 24));
                                position += 4;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        d = d((i2 / 3) * 4);
                        while (position < limit) {
                            i(d, ((byteBuffer.get(position) & UByte.MAX_VALUE) << 8) | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 24));
                            position += 3;
                        }
                    }
                } else {
                    d = d(i2);
                    while (position < limit) {
                        int i6 = byteBuffer.get(position + 3) & UByte.MAX_VALUE;
                        int i7 = (byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 8;
                        i(d, i6 | i7 | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position) & UByte.MAX_VALUE) << 24));
                        position += 4;
                    }
                }
            } else {
                d = d((i2 / 3) * 4);
                while (position < limit) {
                    i(d, ((byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 8) | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position) & UByte.MAX_VALUE) << 24));
                    position += 3;
                }
            }
        } else {
            d = d(i2 + i2);
            while (position < limit) {
                i(d, ((byteBuffer.get(position) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 24));
                position += 2;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        d.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcl e(zzcl zzclVar) {
        int i2 = zzclVar.f5232c;
        String str = zzfj.f7405a;
        if (i2 != 21 && i2 != 1342177280 && i2 != 22 && i2 != 1610612736) {
            if (i2 == 4) {
                return zzcl.e;
            }
            if (i2 != 2) {
                throw new zzcn("Unhandled input format:", zzclVar);
            }
        }
        return new zzcl(zzclVar.f5231a, zzclVar.b, 4);
    }
}
