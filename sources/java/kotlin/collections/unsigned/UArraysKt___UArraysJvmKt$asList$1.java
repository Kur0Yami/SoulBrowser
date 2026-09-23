package kotlin.collections.unsigned;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;

@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1", "Lkotlin/collections/AbstractList;", "Lkotlin/UInt;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "getSize", "()I", "isEmpty", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "contains", "element", "contains-WZ4Q5Ns", "(I)Z", "get", "index", "get-pVg5ArA", "(I)I", "indexOf", "indexOf-WZ4Q5Ns", "lastIndexOf", "lastIndexOf-WZ4Q5Ns", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UArraysKt___UArraysJvmKt$asList$1 extends AbstractList<UInt> implements RandomAccess {

    /* renamed from: $$v$c$kotlin-UIntArray$-$this$asList$0, reason: not valid java name */
    final /* synthetic */ int[] f3$$v$c$kotlinUIntArray$$this$asList$0;

    public UArraysKt___UArraysJvmKt$asList$1(int[] iArr) {
        this.f3$$v$c$kotlinUIntArray$$this$asList$0 = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof UInt)) {
            return false;
        }
        return m538containsWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: contains-WZ4Q5Ns, reason: not valid java name */
    public boolean m538containsWZ4Q5Ns(int element) {
        return UIntArray.m181containsWZ4Q5Ns(this.f3$$v$c$kotlinUIntArray$$this$asList$0, element);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return UInt.m119boximpl(m539getpVg5ArA(i));
    }

    /* renamed from: get-pVg5ArA, reason: not valid java name */
    public int m539getpVg5ArA(int index) {
        return UIntArray.m185getpVg5ArA(this.f3$$v$c$kotlinUIntArray$$this$asList$0, index);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int get_size() {
        return UIntArray.m186getSizeimpl(this.f3$$v$c$kotlinUIntArray$$this$asList$0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof UInt)) {
            return -1;
        }
        return m540indexOfWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: indexOf-WZ4Q5Ns, reason: not valid java name */
    public int m540indexOfWZ4Q5Ns(int element) {
        return ArraysKt.indexOf(this.f3$$v$c$kotlinUIntArray$$this$asList$0, element);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UIntArray.m188isEmptyimpl(this.f3$$v$c$kotlinUIntArray$$this$asList$0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof UInt)) {
            return -1;
        }
        return m541lastIndexOfWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: lastIndexOf-WZ4Q5Ns, reason: not valid java name */
    public int m541lastIndexOfWZ4Q5Ns(int element) {
        return ArraysKt.lastIndexOf(this.f3$$v$c$kotlinUIntArray$$this$asList$0, element);
    }
}
