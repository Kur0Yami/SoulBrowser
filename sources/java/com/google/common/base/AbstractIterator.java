package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractIterator<T> implements Iterator<T> {

    /* renamed from: c, reason: collision with root package name */
    public State f12149c;
    public Object f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final State f12150c;
        public static final State f;
        public static final State g;
        public static final State h;
        public static final /* synthetic */ State[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.common.base.AbstractIterator$State] */
        static {
            ?? r0 = new Enum("READY", 0);
            f12150c = r0;
            ?? r1 = new Enum("NOT_READY", 1);
            f = r1;
            ?? r3 = new Enum("DONE", 2);
            g = r3;
            ?? r5 = new Enum("FAILED", 3);
            h = r5;
            i = new State[]{r0, r1, r3, r5};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) i.clone();
        }
    }

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z;
        State state = this.f12149c;
        State state2 = State.h;
        if (state != state2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.l(z);
        int ordinal = this.f12149c.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 2) {
            this.f12149c = state2;
            this.f = a();
            if (this.f12149c != State.g) {
                this.f12149c = State.f12150c;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f12149c = State.f;
            Object obj = this.f;
            this.f = null;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
