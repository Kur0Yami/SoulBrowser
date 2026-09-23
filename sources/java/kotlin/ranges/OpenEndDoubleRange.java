package kotlin.ranges;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0011\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0012\u001a\u00020\rH\u0016J\u0013\u0010\u0013\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/OpenEndDoubleRange;", "Lkotlin/ranges/OpenEndRange;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "start", "endExclusive", "<init>", "(DD)V", "_start", "_endExclusive", "getStart", "()Ljava/lang/Double;", "getEndExclusive", "lessThanOrEquals", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "a", "b", "contains", "value", "isEmpty", "equals", "other", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "hashCode", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
final class OpenEndDoubleRange implements OpenEndRange<Double> {
    private final double _endExclusive;
    private final double _start;

    public OpenEndDoubleRange(double d, double d2) {
        this._start = d;
        this._endExclusive = d2;
    }

    private final boolean lessThanOrEquals(double a2, double b) {
        return a2 <= b;
    }

    @Override // kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ boolean contains(Double d) {
        return contains(d.doubleValue());
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof OpenEndDoubleRange) {
            if (!isEmpty() || !((OpenEndDoubleRange) other).isEmpty()) {
                OpenEndDoubleRange openEndDoubleRange = (OpenEndDoubleRange) other;
                if (this._start == openEndDoubleRange._start && this._endExclusive == openEndDoubleRange._endExclusive) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long doubleToLongBits = Double.doubleToLongBits(this._start);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this._endExclusive);
        return i + ((int) ((doubleToLongBits2 >>> 32) ^ doubleToLongBits2));
    }

    @Override // kotlin.ranges.OpenEndRange
    public boolean isEmpty() {
        if (this._start >= this._endExclusive) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return this._start + "..<" + this._endExclusive;
    }

    public boolean contains(double value) {
        return value >= this._start && value < this._endExclusive;
    }

    @Override // kotlin.ranges.OpenEndRange
    @NotNull
    public Double getEndExclusive() {
        return Double.valueOf(this._endExclusive);
    }

    @Override // kotlin.ranges.OpenEndRange
    @NotNull
    public Double getStart() {
        return Double.valueOf(this._start);
    }
}
