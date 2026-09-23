package io.opencensus.common;

import io.opencensus.common.ServerStatsFieldEnums;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class ServerStatsEncoding {

    /* renamed from: io.opencensus.common.ServerStatsEncoding$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21060a;

        static {
            int[] iArr = new int[ServerStatsFieldEnums.Id.values().length];
            f21060a = iArr;
            try {
                TreeMap treeMap = ServerStatsFieldEnums.Id.f;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f21060a;
                TreeMap treeMap2 = ServerStatsFieldEnums.Id.f;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f21060a;
                TreeMap treeMap3 = ServerStatsFieldEnums.Id.f;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
