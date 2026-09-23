package org.apache.commons.codec.net;

import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes4.dex */
public class URLCodec implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder {

    /* renamed from: a, reason: collision with root package name */
    public static final BitSet f22259a = new BitSet(256);

    static {
        for (int i = 97; i <= 122; i++) {
            f22259a.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            f22259a.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            f22259a.set(i3);
        }
        BitSet bitSet = f22259a;
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        bitSet.set(42);
        bitSet.set(32);
    }
}
