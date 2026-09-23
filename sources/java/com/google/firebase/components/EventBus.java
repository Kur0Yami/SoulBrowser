package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
class EventBus implements Subscriber, Publisher {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12624a = new HashMap();
    public ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final Executor f12625c;

    public EventBus(Executor executor) {
        this.f12625c = executor;
    }

    public final synchronized Set a(Event event) {
        Set entrySet;
        try {
            HashMap hashMap = this.f12624a;
            event.getClass();
            Map map = (Map) hashMap.get(null);
            if (map == null) {
                entrySet = Collections.EMPTY_SET;
            } else {
                entrySet = map.entrySet();
            }
        } catch (Throwable th) {
            throw th;
        }
        return entrySet;
    }

    public final void b(final Event event) {
        event.getClass();
        synchronized (this) {
            try {
                ArrayDeque arrayDeque = this.b;
                if (arrayDeque != null) {
                    arrayDeque.add(event);
                    return;
                }
                for (final Map.Entry entry : a(event)) {
                    ((Executor) entry.getValue()).execute(new Runnable(entry, event) { // from class: com.google.firebase.components.EventBus$$Lambda$1

                        /* renamed from: c, reason: collision with root package name */
                        public final Map.Entry f12626c;

                        {
                            this.f12626c = entry;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            ((EventHandler) this.f12626c.getKey()).a();
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
