package org.apache.commons.text.lookup;

import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.Objects;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
final class PathFence {

    /* renamed from: a, reason: collision with root package name */
    public final List f22481a;

    /* loaded from: classes4.dex */
    public static final class Builder implements Supplier<PathFence> {
        public static final Path[] f = new Path[0];

        /* renamed from: c, reason: collision with root package name */
        public Path[] f22482c;

        @Override // java.util.function.Supplier
        public final PathFence get() {
            return new PathFence(this);
        }
    }

    public PathFence(Builder builder) {
        this.f22481a = (List) DesugarArrays.stream(builder.f22482c).map(new b(4)).collect(Collectors.toList());
    }

    public final Path a(String str) {
        int i = 0;
        Path path = Paths.get(str, new String[0]);
        List list = this.f22481a;
        if (list.isEmpty()) {
            return path;
        }
        Path absolutePath = path.normalize().toAbsolutePath();
        Stream stream = Collection.EL.stream(list);
        Objects.requireNonNull(absolutePath);
        if (stream.filter(new c(i, absolutePath)).findFirst().isPresent()) {
            return path;
        }
        throw new IllegalArgumentException(String.format("[%s] -> [%s] not in the fence %s", str, absolutePath, list));
    }
}
