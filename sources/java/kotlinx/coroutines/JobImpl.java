package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.PublishedApi;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
/* loaded from: classes4.dex */
public class JobImpl extends JobSupport implements CompletableJob {
    public final boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r3 = (kotlinx.coroutines.ChildHandle) r2.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        if ((r3 instanceof kotlinx.coroutines.ChildHandleNode) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        r3 = (kotlinx.coroutines.ChildHandleNode) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r3 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        r3 = r3.k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r3 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if (r3.getG() == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JobImpl() {
        /*
            r6 = this;
            r0 = 1
            r6.<init>(r0)
            r1 = 0
            r6.V(r1)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r2 = kotlinx.coroutines.JobSupport.f
            java.lang.Object r3 = r2.get(r6)
            kotlinx.coroutines.ChildHandle r3 = (kotlinx.coroutines.ChildHandle) r3
            boolean r4 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            if (r4 == 0) goto L17
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto L18
        L17:
            r3 = r1
        L18:
            r4 = 0
            if (r3 == 0) goto L3f
            kotlinx.coroutines.JobSupport r3 = r3.k()
            if (r3 != 0) goto L22
            goto L3f
        L22:
            boolean r5 = r3.getG()
            if (r5 == 0) goto L29
            goto L40
        L29:
            java.lang.Object r3 = r2.get(r3)
            kotlinx.coroutines.ChildHandle r3 = (kotlinx.coroutines.ChildHandle) r3
            boolean r5 = r3 instanceof kotlinx.coroutines.ChildHandleNode
            if (r5 == 0) goto L36
            kotlinx.coroutines.ChildHandleNode r3 = (kotlinx.coroutines.ChildHandleNode) r3
            goto L37
        L36:
            r3 = r1
        L37:
            if (r3 == 0) goto L3f
            kotlinx.coroutines.JobSupport r3 = r3.k()
            if (r3 != 0) goto L22
        L3f:
            r0 = r4
        L40:
            r6.g = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobImpl.<init>():void");
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: O, reason: from getter */
    public final boolean getG() {
        return this.g;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean P() {
        return true;
    }
}
