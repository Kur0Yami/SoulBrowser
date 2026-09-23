package org.apache.commons.codec.net;

import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes4.dex */
public class QuotedPrintableCodec implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder {

    /* renamed from: a, reason: collision with root package name */
    public static final BitSet f22258a = new BitSet(256);

    static {
        for (int i = 33; i <= 60; i++) {
            f22258a.set(i);
        }
        for (int i2 = 62; i2 <= 126; i2++) {
            f22258a.set(i2);
        }
        BitSet bitSet = f22258a;
        bitSet.set(9);
        bitSet.set(32);
    }
}
