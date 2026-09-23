package okio;

import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,132:1\n1#2:133\n85#3:134\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n66#1:134\n*E\n"})
/* loaded from: classes4.dex */
public final class InflaterSource implements Source {

    /* renamed from: c, reason: collision with root package name */
    public final RealBufferedSource f22209c;
    public final Inflater f;
    public int g;
    public boolean h;

    public InflaterSource(RealBufferedSource source, Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.f22209c = source;
        this.f = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.h) {
            return;
        }
        this.f.end();
        this.h = true;
        this.f22209c.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0088 A[SYNTHETIC] */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long p0(long r12, okio.Buffer r14) {
        /*
            r11 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
        L5:
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 < 0) goto Lb7
            boolean r4 = r11.h
            if (r4 != 0) goto Laf
            okio.RealBufferedSource r4 = r11.f22209c
            java.util.zip.Inflater r5 = r11.f
            if (r3 != 0) goto L19
            goto L83
        L19:
            r3 = 1
            okio.Segment r3 = r14.m(r3)     // Catch: java.util.zip.DataFormatException -> L72
            int r6 = r3.f22218c     // Catch: java.util.zip.DataFormatException -> L72
            int r6 = 8192 - r6
            long r6 = (long) r6     // Catch: java.util.zip.DataFormatException -> L72
            long r6 = java.lang.Math.min(r12, r6)     // Catch: java.util.zip.DataFormatException -> L72
            int r6 = (int) r6     // Catch: java.util.zip.DataFormatException -> L72
            boolean r7 = r5.needsInput()     // Catch: java.util.zip.DataFormatException -> L72
            if (r7 != 0) goto L2f
            goto L49
        L2f:
            boolean r7 = r4.D()     // Catch: java.util.zip.DataFormatException -> L72
            if (r7 == 0) goto L36
            goto L49
        L36:
            okio.Buffer r7 = r4.f     // Catch: java.util.zip.DataFormatException -> L72
            okio.Segment r7 = r7.f22195c     // Catch: java.util.zip.DataFormatException -> L72
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: java.util.zip.DataFormatException -> L72
            int r8 = r7.f22218c     // Catch: java.util.zip.DataFormatException -> L72
            int r9 = r7.b     // Catch: java.util.zip.DataFormatException -> L72
            int r8 = r8 - r9
            r11.g = r8     // Catch: java.util.zip.DataFormatException -> L72
            byte[] r7 = r7.f22217a     // Catch: java.util.zip.DataFormatException -> L72
            r5.setInput(r7, r9, r8)     // Catch: java.util.zip.DataFormatException -> L72
        L49:
            byte[] r7 = r3.f22217a     // Catch: java.util.zip.DataFormatException -> L72
            int r8 = r3.f22218c     // Catch: java.util.zip.DataFormatException -> L72
            int r6 = r5.inflate(r7, r8, r6)     // Catch: java.util.zip.DataFormatException -> L72
            int r7 = r11.g     // Catch: java.util.zip.DataFormatException -> L72
            if (r7 != 0) goto L56
            goto L64
        L56:
            int r8 = r5.getRemaining()     // Catch: java.util.zip.DataFormatException -> L72
            int r7 = r7 - r8
            int r8 = r11.g     // Catch: java.util.zip.DataFormatException -> L72
            int r8 = r8 - r7
            r11.g = r8     // Catch: java.util.zip.DataFormatException -> L72
            long r7 = (long) r7     // Catch: java.util.zip.DataFormatException -> L72
            r4.skip(r7)     // Catch: java.util.zip.DataFormatException -> L72
        L64:
            if (r6 <= 0) goto L74
            int r7 = r3.f22218c     // Catch: java.util.zip.DataFormatException -> L72
            int r7 = r7 + r6
            r3.f22218c = r7     // Catch: java.util.zip.DataFormatException -> L72
            long r7 = r14.f     // Catch: java.util.zip.DataFormatException -> L72
            long r9 = (long) r6     // Catch: java.util.zip.DataFormatException -> L72
            long r7 = r7 + r9
            r14.f = r7     // Catch: java.util.zip.DataFormatException -> L72
            goto L84
        L72:
            r12 = move-exception
            goto La9
        L74:
            int r6 = r3.b     // Catch: java.util.zip.DataFormatException -> L72
            int r7 = r3.f22218c     // Catch: java.util.zip.DataFormatException -> L72
            if (r6 != r7) goto L83
            okio.Segment r6 = r3.a()     // Catch: java.util.zip.DataFormatException -> L72
            r14.f22195c = r6     // Catch: java.util.zip.DataFormatException -> L72
            okio.SegmentPool.a(r3)     // Catch: java.util.zip.DataFormatException -> L72
        L83:
            r9 = r1
        L84:
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r1 <= 0) goto L89
            return r9
        L89:
            boolean r1 = r5.finished()
            if (r1 != 0) goto La6
            boolean r1 = r5.needsDictionary()
            if (r1 == 0) goto L96
            goto La6
        L96:
            boolean r1 = r4.D()
            if (r1 != 0) goto L9e
            goto L5
        L9e:
            java.io.EOFException r12 = new java.io.EOFException
            java.lang.String r13 = "source exhausted prematurely"
            r12.<init>(r13)
            throw r12
        La6:
            r12 = -1
            return r12
        La9:
            java.io.IOException r13 = new java.io.IOException
            r13.<init>(r12)
            throw r13
        Laf:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "closed"
            r12.<init>(r13)
            throw r12
        Lb7:
            java.lang.String r14 = "byteCount < 0: "
            java.lang.String r12 = android.support.v4.media.a.h(r12, r14)
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r12 = r12.toString()
            r13.<init>(r12)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.InflaterSource.p0(long, okio.Buffer):long");
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.f22209c.f22215c.timeout();
    }
}
