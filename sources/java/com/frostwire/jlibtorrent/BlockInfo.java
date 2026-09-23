package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.block_info;

/* loaded from: classes.dex */
public final class BlockInfo {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class BlockState {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ BlockState[] f2600c;

        /* JADX INFO: Fake field, exist only in values array */
        BlockState EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = block_info.block_state_t.f2666c.f2667a;
            Enum r0 = new Enum("NONE", 0);
            int i2 = block_info.block_state_t.d.f2667a;
            Enum r1 = new Enum("REQUESTED", 1);
            int i3 = block_info.block_state_t.e.f2667a;
            Enum r3 = new Enum("WRITING", 2);
            int i4 = block_info.block_state_t.f.f2667a;
            f2600c = new BlockState[]{r0, r1, r3, new Enum("FINISHED", 3), new Enum("UNKNOWN", 4)};
        }

        public static BlockState valueOf(String str) {
            return (BlockState) Enum.valueOf(BlockState.class, str);
        }

        public static BlockState[] values() {
            return (BlockState[]) f2600c.clone();
        }
    }
}
