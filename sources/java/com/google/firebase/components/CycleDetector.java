package com.google.firebase.components;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
class CycleDetector {

    /* loaded from: classes3.dex */
    public static class ComponentNode {

        /* renamed from: a, reason: collision with root package name */
        public final Component f12619a;
        public final HashSet b = new HashSet();

        /* renamed from: c, reason: collision with root package name */
        public final HashSet f12620c = new HashSet();

        public ComponentNode(Component component) {
            this.f12619a = component;
        }
    }

    /* loaded from: classes3.dex */
    public static class Dep {

        /* renamed from: a, reason: collision with root package name */
        public final Class f12621a;
        public final boolean b;

        public Dep(Class cls, boolean z) {
            this.f12621a = cls;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Dep) {
                Dep dep = (Dep) obj;
                if (dep.f12621a.equals(this.f12621a) && dep.b == this.b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return ((this.f12621a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.b).hashCode();
        }
    }

    public static void a(ArrayList arrayList) {
        boolean z;
        boolean z2;
        HashMap hashMap = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Component component = (Component) obj;
            ComponentNode componentNode = new ComponentNode(component);
            for (Class cls : component.f12604a) {
                if (component.f12605c == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Dep dep = new Dep(cls, !z2);
                if (!hashMap.containsKey(dep)) {
                    hashMap.put(dep, new HashSet());
                }
                Set set = (Set) hashMap.get(dep);
                if (!set.isEmpty() && z2) {
                    throw new IllegalArgumentException("Multiple components provide " + cls + ".");
                }
                set.add(componentNode);
            }
        }
        Iterator it = hashMap.values().iterator();
        while (it.hasNext()) {
            for (ComponentNode componentNode2 : (Set) it.next()) {
                for (Dependency dependency : componentNode2.f12619a.b) {
                    if (dependency.f12623c == 0) {
                        Class cls2 = dependency.f12622a;
                        if (dependency.b == 2) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Set<ComponentNode> set2 = (Set) hashMap.get(new Dep(cls2, z));
                        if (set2 != null) {
                            for (ComponentNode componentNode3 : set2) {
                                componentNode2.b.add(componentNode3);
                                componentNode3.f12620c.add(componentNode2);
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        Iterator it2 = hashMap.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll((Set) it2.next());
        }
        HashSet hashSet2 = new HashSet();
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            ComponentNode componentNode4 = (ComponentNode) it3.next();
            if (componentNode4.f12620c.isEmpty()) {
                hashSet2.add(componentNode4);
            }
        }
        while (!hashSet2.isEmpty()) {
            ComponentNode componentNode5 = (ComponentNode) hashSet2.iterator().next();
            hashSet2.remove(componentNode5);
            i++;
            Iterator it4 = componentNode5.b.iterator();
            while (it4.hasNext()) {
                ComponentNode componentNode6 = (ComponentNode) it4.next();
                componentNode6.f12620c.remove(componentNode5);
                if (componentNode6.f12620c.isEmpty()) {
                    hashSet2.add(componentNode6);
                }
            }
        }
        if (i == arrayList.size()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it5 = hashSet.iterator();
        while (it5.hasNext()) {
            ComponentNode componentNode7 = (ComponentNode) it5.next();
            if (!componentNode7.f12620c.isEmpty() && !componentNode7.b.isEmpty()) {
                arrayList2.add(componentNode7.f12619a);
            }
        }
        throw new RuntimeException("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()));
    }
}
