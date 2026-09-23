package j$.util;

import j$.util.function.DoubleConsumer$CC;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class y implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public double f21524a;
    public double b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.count++;
        this.b += d;
        b(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    public final void a(y yVar) {
        this.count += yVar.count;
        this.b += yVar.b;
        b(yVar.sum);
        b(yVar.f21524a);
        this.min = Math.min(this.min, yVar.min);
        this.max = Math.max(this.max, yVar.max);
    }

    public final void b(double d) {
        double d2 = d - this.f21524a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f21524a = (d4 - d3) - d2;
        this.sum = d4;
    }

    public final String toString() {
        double d;
        String simpleName = y.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        double d2 = this.sum + this.f21524a;
        if (Double.isNaN(d2) && Double.isInfinite(this.b)) {
            d2 = this.b;
        }
        Double valueOf2 = Double.valueOf(d2);
        Double valueOf3 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d3 = this.sum + this.f21524a;
            if (Double.isNaN(d3) && Double.isInfinite(this.b)) {
                d3 = this.b;
            }
            d = d3 / this.count;
        } else {
            d = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(d), Double.valueOf(this.max));
    }
}
