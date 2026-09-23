package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Map;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0001\u0004\u0082\u0001\u0001\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/ScatterMap;", "K", "V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MapWrapper", "Landroidx/collection/MutableScatterMap;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n633#1:1851\n634#1:1855\n636#1,2:1857\n638#1,4:1860\n642#1:1867\n643#1:1871\n644#1:1873\n645#1,4:1876\n651#1:1881\n652#1,8:1883\n633#1:1891\n634#1:1895\n636#1,2:1897\n638#1,4:1900\n642#1:1907\n643#1:1911\n644#1:1913\n645#1,4:1916\n651#1:1921\n652#1,8:1923\n363#1,6:1933\n373#1,3:1940\n376#1,9:1944\n363#1,6:1953\n373#1,3:1960\n376#1,9:1964\n363#1,6:1973\n373#1,3:1980\n376#1,9:1984\n391#1,4:1993\n363#1,6:1997\n373#1,3:2004\n376#1,2:2008\n396#1,2:2010\n379#1,6:2012\n398#1:2018\n391#1,4:2019\n363#1,6:2023\n373#1,3:2030\n376#1,2:2034\n396#1,2:2036\n379#1,6:2038\n398#1:2044\n391#1,4:2045\n363#1,6:2049\n373#1,3:2056\n376#1,2:2060\n396#1,2:2062\n379#1,6:2064\n398#1:2070\n633#1:2071\n634#1:2075\n636#1,2:2077\n638#1,4:2080\n642#1:2087\n643#1:2091\n644#1:2093\n645#1,4:2096\n651#1:2101\n652#1,8:2103\n633#1:2111\n634#1:2115\n636#1,2:2117\n638#1,4:2120\n642#1:2127\n643#1:2131\n644#1:2133\n645#1,4:2136\n651#1:2141\n652#1,8:2143\n418#1,3:2151\n363#1,6:2154\n373#1,3:2161\n376#1,2:2165\n422#1,2:2167\n379#1,6:2169\n424#1:2175\n391#1,4:2176\n363#1,6:2180\n373#1,3:2187\n376#1,2:2191\n396#1,2:2193\n379#1,6:2195\n398#1:2201\n391#1,4:2202\n363#1,6:2206\n373#1,3:2213\n376#1,2:2217\n396#1,2:2219\n379#1,6:2221\n398#1:2227\n391#1,4:2228\n363#1,6:2232\n373#1,3:2239\n376#1,2:2243\n396#1,2:2245\n379#1,6:2247\n398#1:2253\n391#1,4:2254\n363#1,6:2258\n373#1,3:2265\n376#1,2:2269\n396#1,2:2271\n379#1,6:2273\n398#1:2279\n1605#2,3:1852\n1619#2:1856\n1615#2:1859\n1795#2,3:1864\n1809#2,3:1868\n1733#2:1872\n1721#2:1874\n1715#2:1875\n1728#2:1880\n1818#2:1882\n1605#2,3:1892\n1619#2:1896\n1615#2:1899\n1795#2,3:1904\n1809#2,3:1908\n1733#2:1912\n1721#2:1914\n1715#2:1915\n1728#2:1920\n1818#2:1922\n1826#2:1931\n1688#2:1932\n1826#2:1939\n1688#2:1943\n1826#2:1959\n1688#2:1963\n1826#2:1979\n1688#2:1983\n1826#2:2003\n1688#2:2007\n1826#2:2029\n1688#2:2033\n1826#2:2055\n1688#2:2059\n1605#2,3:2072\n1619#2:2076\n1615#2:2079\n1795#2,3:2084\n1809#2,3:2088\n1733#2:2092\n1721#2:2094\n1715#2:2095\n1728#2:2100\n1818#2:2102\n1605#2,3:2112\n1619#2:2116\n1615#2:2119\n1795#2,3:2124\n1809#2,3:2128\n1733#2:2132\n1721#2:2134\n1715#2:2135\n1728#2:2140\n1818#2:2142\n1826#2:2160\n1688#2:2164\n1826#2:2186\n1688#2:2190\n1826#2:2212\n1688#2:2216\n1826#2:2238\n1688#2:2242\n1826#2:2264\n1688#2:2268\n1661#2:2280\n1605#2,3:2281\n1619#2:2284\n1615#2:2285\n1795#2,3:2286\n1809#2,3:2289\n1733#2:2292\n1721#2:2293\n1715#2:2294\n1728#2:2295\n1818#2:2296\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap\n*L\n330#1:1851\n330#1:1855\n330#1:1857,2\n330#1:1860,4\n330#1:1867\n330#1:1871\n330#1:1873\n330#1:1876,4\n330#1:1881\n330#1:1883,8\n340#1:1891\n340#1:1895\n340#1:1897,2\n340#1:1900,4\n340#1:1907\n340#1:1911\n340#1:1913\n340#1:1916,4\n340#1:1921\n340#1:1923,8\n394#1:1933,6\n394#1:1940,3\n394#1:1944,9\n407#1:1953,6\n407#1:1960,3\n407#1:1964,9\n420#1:1973,6\n420#1:1980,3\n420#1:1984,9\n430#1:1993,4\n430#1:1997,6\n430#1:2004,3\n430#1:2008,2\n430#1:2010,2\n430#1:2012,6\n430#1:2018\n440#1:2019,4\n440#1:2023,6\n440#1:2030,3\n440#1:2034,2\n440#1:2036,2\n440#1:2038,6\n440#1:2044\n456#1:2045,4\n456#1:2049,6\n456#1:2056,3\n456#1:2060,2\n456#1:2062,2\n456#1:2064,6\n456#1:2070\n466#1:2071\n466#1:2075\n466#1:2077,2\n466#1:2080,4\n466#1:2087\n466#1:2091\n466#1:2093\n466#1:2096,4\n466#1:2101\n466#1:2103,8\n472#1:2111\n472#1:2115\n472#1:2117,2\n472#1:2120,4\n472#1:2127\n472#1:2131\n472#1:2133\n472#1:2136,4\n472#1:2141\n472#1:2143,8\n479#1:2151,3\n479#1:2154,6\n479#1:2161,3\n479#1:2165,2\n479#1:2167,2\n479#1:2169,6\n479#1:2175\n506#1:2176,4\n506#1:2180,6\n506#1:2187,3\n506#1:2191,2\n506#1:2193,2\n506#1:2195,6\n506#1:2201\n533#1:2202,4\n533#1:2206,6\n533#1:2213,3\n533#1:2217,2\n533#1:2219,2\n533#1:2221,6\n533#1:2227\n562#1:2228,4\n562#1:2232,6\n562#1:2239,3\n562#1:2243,2\n562#1:2245,2\n562#1:2247,6\n562#1:2253\n588#1:2254,4\n588#1:2258,6\n588#1:2265,3\n588#1:2269,2\n588#1:2271,2\n588#1:2273,6\n588#1:2279\n330#1:1852,3\n330#1:1856\n330#1:1859\n330#1:1864,3\n330#1:1868,3\n330#1:1872\n330#1:1874\n330#1:1875\n330#1:1880\n330#1:1882\n340#1:1892,3\n340#1:1896\n340#1:1899\n340#1:1904,3\n340#1:1908,3\n340#1:1912\n340#1:1914\n340#1:1915\n340#1:1920\n340#1:1922\n368#1:1931\n375#1:1932\n394#1:1939\n394#1:1943\n407#1:1959\n407#1:1963\n420#1:1979\n420#1:1983\n430#1:2003\n430#1:2007\n440#1:2029\n440#1:2033\n456#1:2055\n456#1:2059\n466#1:2072,3\n466#1:2076\n466#1:2079\n466#1:2084,3\n466#1:2088,3\n466#1:2092\n466#1:2094\n466#1:2095\n466#1:2100\n466#1:2102\n472#1:2112,3\n472#1:2116\n472#1:2119\n472#1:2124,3\n472#1:2128,3\n472#1:2132\n472#1:2134\n472#1:2135\n472#1:2140\n472#1:2142\n479#1:2160\n479#1:2164\n506#1:2186\n506#1:2190\n533#1:2212\n533#1:2216\n562#1:2238\n562#1:2242\n588#1:2264\n588#1:2268\n605#1:2280\n633#1:2281,3\n634#1:2284\n637#1:2285\n641#1:2286,3\n642#1:2289,3\n643#1:2292\n644#1:2293\n644#1:2294\n648#1:2295\n651#1:2296\n*E\n"})
/* loaded from: classes.dex */
public abstract class ScatterMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public long[] f463a;
    public Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f464c;
    public int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\b\u0090\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001¨\u0006\u0002"}, d2 = {"Landroidx/collection/ScatterMap$MapWrapper;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public class MapWrapper implements Map<K, V>, KMappedMarker, j$.util.Map {
        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set, java.lang.Object] */
        public Set a() {
            return new Object();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set, java.lang.Object] */
        public Set b() {
            return new Object();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Collection, java.lang.Object] */
        public Collection c() {
            return new Object();
        }

        @Override // java.util.Map
        public void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final Object compute(Object obj, BiFunction biFunction) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final Object computeIfAbsent(Object obj, Function function) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final Object computeIfPresent(Object obj, BiFunction biFunction) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map
        public final boolean containsKey(Object obj) {
            throw null;
        }

        @Override // java.util.Map
        public final boolean containsValue(Object obj) {
            throw null;
        }

        @Override // java.util.Map
        public final /* bridge */ Set entrySet() {
            return a();
        }

        @Override // java.util.Map, j$.util.Map
        public /* synthetic */ void forEach(BiConsumer biConsumer) {
            Map.CC.$default$forEach(this, biConsumer);
        }

        @Override // java.util.Map
        public final Object get(Object obj) {
            throw null;
        }

        @Override // java.util.Map, j$.util.Map
        public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return Map.CC.$default$getOrDefault(this, obj, obj2);
        }

        @Override // java.util.Map
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.Map
        public final /* bridge */ Set keySet() {
            return b();
        }

        @Override // java.util.Map, j$.util.Map
        public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map
        public Object put(Object obj, Object obj2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map
        public void putAll(java.util.Map map) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final Object putIfAbsent(Object obj, Object obj2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map
        public Object remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final Object replace(Object obj, Object obj2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final void replaceAll(BiFunction biFunction) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map
        public final int size() {
            throw null;
        }

        @Override // java.util.Map
        public final /* bridge */ Collection values() {
            return c();
        }

        @Override // java.util.Map, j$.util.Map
        public final boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Map, j$.util.Map
        public final boolean replace(Object obj, Object obj2, Object obj3) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.Object r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.293031E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13.d
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.f463a
            int r5 = r1 >> 3
            r6 = r1 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.b
            r11 = r11[r10]
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L75
            r10 = -1
        L6c:
            if (r10 < 0) goto L73
            java.lang.Object[] r14 = r13.f464c
            r14 = r14[r10]
            return r14
        L73:
            r14 = 0
            return r14
        L75:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.a(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00db, code lost:
    
        if (((r3 & ((~r3) << 6)) & (-9187201950435737472L)) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dd, code lost:
    
        r26 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v7, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i;
        int i2;
        Object[] objArr = this.b;
        Object[] objArr2 = this.f464c;
        long[] jArr = this.f463a;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            long j = jArr[i3];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i5 = 8 - ((~(i3 - length)) >>> 31);
                for (int i6 = 0; i6 < i5; i6++) {
                    if ((255 & j) < 128) {
                        int i7 = (i3 << 3) + i6;
                        Object obj = objArr[i7];
                        Object obj2 = objArr2[i7];
                        if (obj != null) {
                            i = obj.hashCode();
                        } else {
                            i = 0;
                        }
                        if (obj2 != null) {
                            i2 = obj2.hashCode();
                        } else {
                            i2 = 0;
                        }
                        i4 += i2 ^ i;
                    }
                    j >>= 8;
                }
                if (i5 != 8) {
                    return i4;
                }
            }
            if (i3 != length) {
                i3++;
            } else {
                return i4;
            }
        }
    }

    public final String toString() {
        return "{}";
    }
}
