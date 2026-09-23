package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzsh extends zzcp {
    public int[] i;
    public int[] j;

    @Override // com.google.android.gms.internal.ads.zzco
    public final void b(ByteBuffer byteBuffer) {
        int i;
        boolean z;
        int i2;
        int i3;
        int[] iArr = this.j;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer d = d(((limit - position) / this.b.d) * this.f5352c.d);
        while (position < limit) {
            for (int i4 : iArr) {
                int d2 = (zzfj.d(this.b.f5232c) * i4) + position;
                int i5 = this.b.f5232c;
                if (i5 != 2) {
                    if (i5 != 3) {
                        if (i5 != 4) {
                            if (i5 != 21) {
                                if (i5 != 22) {
                                    if (i5 != 268435456) {
                                        if (i5 != 1342177280) {
                                            if (i5 != 1610612736) {
                                                throw new IllegalStateException(androidx.work.impl.workers.a.r(i5, "Unexpected encoding: ", new StringBuilder(String.valueOf(i5).length() + 21)));
                                            }
                                        }
                                    }
                                }
                                d.putInt(byteBuffer.getInt(d2));
                            }
                            ByteOrder order = byteBuffer.order();
                            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                            if (order == byteOrder) {
                                i = d2;
                            } else {
                                i = d2 + 2;
                            }
                            byte b = byteBuffer.get(i);
                            byte b2 = byteBuffer.get(d2 + 1);
                            if (byteBuffer.order() == byteOrder) {
                                d2 += 2;
                            }
                            int i6 = ((b << 24) & (-16777216)) | ((b2 << 16) & 16711680) | ((byteBuffer.get(d2) << 8) & 65280);
                            int i7 = i6 >> 8;
                            boolean z2 = true;
                            if ((i7 & (-16777216)) == 0 || (i7 & (-8388608)) == -8388608) {
                                z = true;
                            } else {
                                z = false;
                            }
                            zzgqa.e("Value out of range of 24-bit integer: %s", Integer.toHexString(i7), z);
                            if (d.remaining() < 3) {
                                z2 = false;
                            }
                            zzgqa.a(z2);
                            if (d.order() == byteOrder) {
                                i2 = (i6 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE;
                            } else {
                                i2 = i7 & KotlinVersion.MAX_COMPONENT_VALUE;
                            }
                            byte b3 = (byte) i2;
                            int i8 = (i6 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE;
                            if (d.order() == byteOrder) {
                                i3 = i7 & KotlinVersion.MAX_COMPONENT_VALUE;
                            } else {
                                i3 = (i6 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE;
                            }
                            d.put(b3).put((byte) i8).put((byte) i3);
                        } else {
                            d.putFloat(byteBuffer.getFloat(d2));
                        }
                    } else {
                        d.put(byteBuffer.get(d2));
                    }
                }
                d.putShort(byteBuffer.getShort(d2));
            }
            position += this.b.d;
        }
        byteBuffer.position(limit);
        d.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcl e(zzcl zzclVar) {
        boolean z;
        boolean z2;
        int[] iArr = this.i;
        if (iArr == null) {
            return zzcl.e;
        }
        int i = zzclVar.f5232c;
        if (zzfj.a(i)) {
            int i2 = zzclVar.b;
            if (i2 != iArr.length) {
                z = true;
            } else {
                z = false;
            }
            int i3 = 0;
            while (true) {
                int length = iArr.length;
                if (i3 < length) {
                    int i4 = iArr[i3];
                    if (i4 < i2) {
                        if (i4 != i3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z |= z2;
                        i3++;
                    } else {
                        String arrays = Arrays.toString(iArr);
                        throw new zzcn(android.support.v4.media.a.q(new StringBuilder(String.valueOf(arrays).length() + 59), "Channel map (", arrays, ") trying to access non-existent input channel."), zzclVar);
                    }
                } else {
                    if (z) {
                        return new zzcl(zzclVar.f5231a, length, i);
                    }
                    return zzcl.e;
                }
            }
        } else {
            throw new zzcn("Unhandled input format:", zzclVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void g() {
        this.j = this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void h() {
        this.j = null;
        this.i = null;
    }
}
