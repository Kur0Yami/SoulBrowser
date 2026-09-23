package okio.internal;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import okio.BufferedSource;
import okio.RealBufferedSource;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22237c = 1;
    public final /* synthetic */ Ref.ObjectRef f;
    public final /* synthetic */ Ref.ObjectRef g;
    public final /* synthetic */ Ref.ObjectRef h;
    public final /* synthetic */ BufferedSource i;

    public /* synthetic */ c(Ref.ObjectRef objectRef, RealBufferedSource realBufferedSource, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3) {
        this.f = objectRef;
        this.i = realBufferedSource;
        this.g = objectRef2;
        this.h = objectRef3;
    }

    /* JADX WARN: Type inference failed for: r12v12, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r12v14, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r12v16, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r12v27, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r12v29, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r13v12, types: [T, java.lang.Long] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        switch (this.f22237c) {
            case 0:
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                if (intValue == 21589) {
                    long j = 1;
                    if (longValue >= 1) {
                        BufferedSource bufferedSource = this.i;
                        byte readByte = bufferedSource.readByte();
                        boolean z3 = false;
                        if ((readByte & 1) == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if ((readByte & 2) == 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if ((readByte & 4) == 4) {
                            z3 = true;
                        }
                        if (z) {
                            j = 5;
                        }
                        if (z2) {
                            j += 4;
                        }
                        if (z3) {
                            j += 4;
                        }
                        if (longValue >= j) {
                            if (z) {
                                this.f.element = Integer.valueOf(bufferedSource.l0());
                            }
                            if (z2) {
                                this.g.element = Integer.valueOf(bufferedSource.l0());
                            }
                            if (z3) {
                                this.h.element = Integer.valueOf(bufferedSource.l0());
                            }
                        } else {
                            throw new IOException("bad zip: extended timestamp extra too short");
                        }
                    } else {
                        throw new IOException("bad zip: extended timestamp extra too short");
                    }
                }
                return Unit.INSTANCE;
            default:
                RealBufferedSource realBufferedSource = (RealBufferedSource) this.i;
                int intValue2 = ((Integer) obj).intValue();
                long longValue2 = ((Long) obj2).longValue();
                if (intValue2 == 1) {
                    Ref.ObjectRef objectRef = this.f;
                    if (objectRef.element == 0) {
                        if (longValue2 == 24) {
                            objectRef.element = Long.valueOf(realBufferedSource.b());
                            this.g.element = Long.valueOf(realBufferedSource.b());
                            this.h.element = Long.valueOf(realBufferedSource.b());
                        } else {
                            throw new IOException("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                        }
                    } else {
                        throw new IOException("bad zip: NTFS extra attribute tag 0x0001 repeated");
                    }
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ c(BufferedSource bufferedSource, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3) {
        this.i = bufferedSource;
        this.f = objectRef;
        this.g = objectRef2;
        this.h = objectRef3;
    }
}
