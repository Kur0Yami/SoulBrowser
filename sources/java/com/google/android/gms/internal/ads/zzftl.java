package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.Context;
import android.view.View;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzftl implements Runnable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        KeyguardManager keyguardManager;
        zzftj zzftjVar;
        zzftp zzftpVar = zzftp.g;
        zzfti zzftiVar = zzftpVar.d;
        zzftj zzftjVar2 = zzftpVar.e;
        zzftpVar.b.clear();
        for (zzfrl zzfrlVar : DesugarCollections.unmodifiableCollection(zzfsf.f7617c.b)) {
        }
        zzftpVar.f = System.nanoTime();
        zzftiVar.a();
        HashMap hashMap = zzftiVar.g;
        HashMap hashMap2 = zzftiVar.f7645c;
        HashSet hashSet = zzftiVar.f;
        zzfss zzfssVar = zzftpVar.f7649c;
        long nanoTime = System.nanoTime();
        zzfst zzfstVar = zzfssVar.b;
        View view = null;
        if (hashSet.size() > 0) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject a2 = zzfstVar.a(view);
                View view2 = (View) hashMap2.get(str);
                zzfsu zzfsuVar = zzfssVar.f7631a;
                String str2 = (String) hashMap.get(str);
                if (str2 != null) {
                    JSONObject a3 = zzfsuVar.a(view2);
                    try {
                        a3.put("adSessionId", str);
                    } catch (JSONException e) {
                        zzftc.a(e, "Error with setting ad session id");
                    }
                    try {
                        a3.put("notVisibleReason", str2);
                    } catch (JSONException e2) {
                        zzftc.a(e2, "Error with setting not visible reason");
                    }
                    zzftb.c(a2, a3);
                }
                zzftb.d(a2);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(str);
                zzftjVar2.getClass();
                zzftq zzftqVar = new zzftq(zzftjVar2, hashSet2, a2, nanoTime);
                zzfts zzftsVar = zzftjVar2.b;
                zzftqVar.f7651a = zzftsVar;
                ArrayDeque arrayDeque = zzftsVar.b;
                arrayDeque.add(zzftqVar);
                if (zzftsVar.f7653c == null) {
                    zzftr zzftrVar = (zzftr) arrayDeque.poll();
                    zzftsVar.f7653c = zzftrVar;
                    if (zzftrVar != null) {
                        zzftrVar.executeOnExecutor(zzftsVar.f7652a, new Object[0]);
                    }
                }
                view = null;
            }
        }
        HashSet hashSet3 = zzftiVar.e;
        if (hashSet3.size() > 0) {
            JSONObject a4 = zzfstVar.a(null);
            zzfstVar.getClass();
            ArrayList arrayList = new ArrayList();
            zzfsf zzfsfVar = zzfsf.f7617c;
            if (zzfsfVar != null) {
                Collection unmodifiableCollection = DesugarCollections.unmodifiableCollection(zzfsfVar.b);
                int size = unmodifiableCollection.size();
                IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
                Iterator it2 = unmodifiableCollection.iterator();
                while (it2.hasNext()) {
                    View view3 = (View) ((zzfrl) it2.next()).f7598c.get();
                    if (view3 != null && view3.isAttachedToWindow() && view3.isShown()) {
                        View view4 = view3;
                        while (true) {
                            if (view4 != null) {
                                if (view4.getAlpha() != 0.0f) {
                                    Object parent = view4.getParent();
                                    Iterator it3 = it2;
                                    if (parent instanceof View) {
                                        view4 = (View) parent;
                                    } else {
                                        view4 = null;
                                    }
                                    it2 = it3;
                                }
                            } else {
                                Iterator it4 = it2;
                                View rootView = view3.getRootView();
                                if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                    identityHashMap.put(rootView, rootView);
                                    float z = rootView.getZ();
                                    int size2 = arrayList.size();
                                    while (true) {
                                        if (size2 > 0) {
                                            zzftjVar = zzftjVar2;
                                            int i = size2 - 1;
                                            if (((View) arrayList.get(i)).getZ() <= z) {
                                                break;
                                            }
                                            size2 = i;
                                            zzftjVar2 = zzftjVar;
                                        } else {
                                            zzftjVar = zzftjVar2;
                                            break;
                                        }
                                    }
                                    arrayList.add(size2, rootView);
                                    it2 = it4;
                                    zzftjVar2 = zzftjVar;
                                } else {
                                    it2 = it4;
                                }
                            }
                        }
                    }
                }
            }
            zzftj zzftjVar3 = zzftjVar2;
            int size3 = arrayList.size();
            for (int i2 = 0; i2 < size3; i2++) {
                zzftpVar.a((View) arrayList.get(i2), zzfstVar.f7632a, a4, false);
            }
            zzftb.d(a4);
            zzftjVar3.getClass();
            zzftq zzftqVar2 = new zzftq(zzftjVar3, hashSet3, a4, nanoTime);
            zzfts zzftsVar2 = zzftjVar3.b;
            zzftqVar2.f7651a = zzftsVar2;
            ArrayDeque arrayDeque2 = zzftsVar2.b;
            arrayDeque2.add(zzftqVar2);
            if (zzftsVar2.f7653c == null) {
                zzftr zzftrVar2 = (zzftr) arrayDeque2.poll();
                zzftsVar2.f7653c = zzftrVar2;
                if (zzftrVar2 != null) {
                    zzftrVar2.executeOnExecutor(zzftsVar2.f7652a, new Object[0]);
                }
            }
        } else {
            zzftjVar2.getClass();
            zzftr zzftrVar3 = new zzftr(zzftjVar2);
            zzfts zzftsVar3 = zzftjVar2.b;
            zzftrVar3.f7651a = zzftsVar3;
            ArrayDeque arrayDeque3 = zzftsVar3.b;
            arrayDeque3.add(zzftrVar3);
            if (zzftsVar3.f7653c == null) {
                zzftr zzftrVar4 = (zzftr) arrayDeque3.poll();
                zzftsVar3.f7653c = zzftrVar4;
                if (zzftrVar4 != null) {
                    zzftrVar4.executeOnExecutor(zzftsVar3.f7652a, new Object[0]);
                }
            }
        }
        zzftiVar.f7644a.clear();
        zzftiVar.b.clear();
        hashMap2.clear();
        zzftiVar.d.clear();
        hashSet3.clear();
        hashSet.clear();
        hashMap.clear();
        zzftiVar.j = false;
        zzftiVar.h.clear();
        long nanoTime2 = System.nanoTime() - zzftpVar.f;
        ArrayList arrayList2 = zzftpVar.f7648a;
        if (arrayList2.size() > 0) {
            int size4 = arrayList2.size();
            int i3 = 0;
            while (i3 < size4) {
                Object obj = arrayList2.get(i3);
                i3++;
                zzfto zzftoVar = (zzfto) obj;
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzftoVar.zzb();
                if (zzftoVar instanceof zzftn) {
                    ((zzftn) zzftoVar).zza();
                }
            }
        }
        zzfsp zzfspVar = zzfsp.d;
        Context context = (Context) zzfspVar.f7629a.get();
        if (context != null && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null) {
            boolean isDeviceLocked = keyguardManager.isDeviceLocked();
            zzfspVar.a(zzfspVar.b, isDeviceLocked);
            zzfspVar.f7630c = isDeviceLocked;
        }
    }
}
