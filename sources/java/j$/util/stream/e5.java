package j$.util.stream;

/* loaded from: classes2.dex */
public abstract class e5 extends f5 {
    @Override // j$.util.stream.a
    public final boolean G0() {
        return false;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !c7.ORDERED.i(this.m) ? this : new a(this, c7.r);
    }
}
