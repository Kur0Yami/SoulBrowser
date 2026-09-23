package org.apache.commons.compress.archivers.sevenz;

/* loaded from: classes4.dex */
public class CLI {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class Mode {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Mode[] f22268c = {new Mode() { // from class: org.apache.commons.compress.archivers.sevenz.CLI.Mode.1
        }, new Mode() { // from class: org.apache.commons.compress.archivers.sevenz.CLI.Mode.2
        }};

        /* JADX INFO: Fake field, exist only in values array */
        Mode EF2;

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) f22268c.clone();
        }
    }
}
