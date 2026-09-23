package org.mozilla.universalchardet.prober.sequence;

/* loaded from: classes4.dex */
public abstract class SequenceModel {

    /* renamed from: a, reason: collision with root package name */
    public final short[] f22678a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final float f22679c;
    public final String d;

    public SequenceModel(short[] sArr, byte[] bArr, float f, String str) {
        this.f22678a = (short[]) sArr.clone();
        this.b = (byte[]) bArr.clone();
        this.f22679c = f;
        this.d = str;
    }
}
