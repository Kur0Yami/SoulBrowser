package org.apache.commons.codec.binary;

import androidx.work.impl.workers.a;
import java.util.Arrays;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;

/* loaded from: classes4.dex */
public abstract class BaseNCodec implements BinaryEncoder, BinaryDecoder {

    /* loaded from: classes4.dex */
    public static class Context {
        public final String toString() {
            String simpleName = getClass().getSimpleName();
            String arrays = Arrays.toString((byte[]) null);
            StringBuilder sb = new StringBuilder();
            sb.append(simpleName);
            sb.append("[buffer=");
            sb.append(arrays);
            sb.append(", currentLinePos=");
            sb.append(0);
            sb.append(", eof=");
            sb.append(false);
            sb.append(", ibitWorkArea=");
            sb.append(0);
            a.A(sb, ", lbitWorkArea=0, modulus=", 0, ", pos=", 0);
            return a.t(sb, ", readPos=", 0, "]");
        }
    }
}
