package androidx.work;

import androidx.work.Data;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class OverwritingInputMerger extends InputMerger {
    @Override // androidx.work.InputMerger
    public final Data a(ArrayList arrayList) {
        Data.Builder builder = new Data.Builder();
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            hashMap.putAll(DesugarCollections.unmodifiableMap(((Data) obj).f1834a));
        }
        builder.b(hashMap);
        return builder.a();
    }
}
