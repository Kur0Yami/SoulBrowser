package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import kotlin.UByte;

/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f1032a;

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final String a(int i, int i2) {
        byte[] bArr = this.f1032a;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (b < 0) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            while (i < i3) {
                int i5 = i + 1;
                byte b2 = bArr[i];
                if (b2 >= 0) {
                    int i6 = i4 + 1;
                    cArr[i4] = (char) b2;
                    while (i5 < i3) {
                        byte b3 = bArr[i5];
                        if (b3 < 0) {
                            break;
                        }
                        i5++;
                        cArr[i6] = (char) b3;
                        i6++;
                    }
                    i4 = i6;
                    i = i5;
                } else if (b2 < -32) {
                    if (i5 < i3) {
                        i += 2;
                        byte b4 = bArr[i5];
                        int i7 = i4 + 1;
                        if (b2 >= -62) {
                            if (!Utf8.DecodeUtil.a(b4)) {
                                cArr[i4] = (char) ((b4 & 63) | ((b2 & 31) << 6));
                                i4 = i7;
                            } else {
                                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
                            }
                        } else {
                            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
                        }
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (b2 < -16) {
                    if (i5 < i3 - 1) {
                        int i8 = i + 2;
                        byte b5 = bArr[i5];
                        i += 3;
                        byte b6 = bArr[i8];
                        int i9 = i4 + 1;
                        if (!Utf8.DecodeUtil.a(b5) && ((b2 != -32 || b5 >= -96) && ((b2 != -19 || b5 < -96) && !Utf8.DecodeUtil.a(b6)))) {
                            cArr[i4] = (char) (((b5 & 63) << 6) | ((b2 & 15) << 12) | (b6 & 63));
                            i4 = i9;
                        } else {
                            throw new IllegalArgumentException("Invalid UTF-8");
                        }
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i5 < i3 - 2) {
                    byte b7 = bArr[i5];
                    int i10 = i + 3;
                    byte b8 = bArr[i + 2];
                    i += 4;
                    byte b9 = bArr[i10];
                    if (!Utf8.DecodeUtil.a(b7) && (((b7 + 112) + (b2 << 28)) >> 30) == 0 && !Utf8.DecodeUtil.a(b8) && !Utf8.DecodeUtil.a(b9)) {
                        int i11 = ((b7 & 63) << 12) | ((b2 & 7) << 18) | ((b8 & 63) << 6) | (b9 & 63);
                        cArr[i4] = (char) ((i11 >>> 10) + 55232);
                        cArr[i4 + 1] = (char) ((i11 & 1023) + 56320);
                        i4 += 2;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i4);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final byte get(int i) {
        return this.f1032a[i];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final double getDouble(int i) {
        return Double.longBitsToDouble(getLong(i));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final float getFloat(int i) {
        return Float.intBitsToFloat(getInt(i));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final int getInt(int i) {
        byte[] bArr = this.f1032a;
        return (bArr[i] & UByte.MAX_VALUE) | (bArr[i + 3] << 24) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final long getLong(int i) {
        byte[] bArr = this.f1032a;
        return (bArr[i + 7] << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((255 & bArr[i + 6]) << 48);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public final short getShort(int i) {
        byte[] bArr = this.f1032a;
        return (short) ((bArr[i] & UByte.MAX_VALUE) | (bArr[i + 1] << 8));
    }
}
