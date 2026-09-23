package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes4.dex */
public class SBCSGroupProber extends CharsetProber {
    public CharsetProber.ProbingState b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f22670c;
    public CharsetProber d;
    public int e;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        if (this.d == null) {
            b();
            if (this.d == null) {
                this.d = (CharsetProber) this.f22670c.get(0);
            }
        }
        return this.d.a();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        CharsetProber.ProbingState probingState = this.b;
        if (probingState == CharsetProber.ProbingState.f) {
            return 0.99f;
        }
        if (probingState == CharsetProber.ProbingState.g) {
            return 0.01f;
        }
        ArrayList arrayList = this.f22670c;
        int size = arrayList.size();
        float f = 0.0f;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            CharsetProber charsetProber = (CharsetProber) obj;
            if (charsetProber.f22660a) {
                float b = charsetProber.b();
                if (f < b) {
                    this.d = charsetProber;
                    f = b;
                }
            }
        }
        return f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        CharsetProber charsetProber;
        CharsetProber.ProbingState probingState;
        ByteBuffer allocate = ByteBuffer.allocate(i);
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (i2 < i) {
            byte b = bArr[i2];
            if ((b & ByteCompanionObject.MIN_VALUE) == 0) {
                int i4 = b & UByte.MAX_VALUE;
                if (i4 < 65 || ((i4 > 90 && i4 < 97) || i4 > 122)) {
                    if (z && i2 > i3) {
                        allocate.put(bArr, i3, i2 - i3);
                        allocate.put((byte) 32);
                        i3 = i2 + 1;
                        z = false;
                    } else {
                        i3 = i2 + 1;
                    }
                }
            } else {
                z = true;
            }
            i2++;
        }
        if (z && i2 > i3) {
            allocate.put(bArr, i3, i2 - i3);
        }
        if (allocate.position() != 0) {
            ArrayList arrayList = this.f22670c;
            int size = arrayList.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    break;
                }
                Object obj = arrayList.get(i5);
                i5++;
                charsetProber = (CharsetProber) obj;
                if (charsetProber.f22660a) {
                    CharsetProber.ProbingState c2 = charsetProber.c(allocate.array(), allocate.position());
                    probingState = CharsetProber.ProbingState.f;
                    if (c2 == probingState || 0.99f == charsetProber.b()) {
                        break;
                    }
                    CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.g;
                    if (c2 == probingState2) {
                        charsetProber.f22660a = false;
                        int i6 = this.e - 1;
                        this.e = i6;
                        if (i6 <= 0) {
                            this.b = probingState2;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            this.d = charsetProber;
            this.b = probingState;
        }
        return this.b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        int i = 0;
        this.e = 0;
        ArrayList arrayList = this.f22670c;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            CharsetProber charsetProber = (CharsetProber) obj;
            charsetProber.d();
            charsetProber.f22660a = true;
            this.e++;
        }
        this.d = null;
        this.b = CharsetProber.ProbingState.f22661c;
    }
}
