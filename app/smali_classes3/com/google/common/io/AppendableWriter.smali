.class final Lcom/google/common/io/AppendableWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/common/annotations/J2ktIncompatible;
.end annotation


# instance fields
.field public c:Z


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 7
    .line 8
    const-string v1, "Cannot write to a closed writer."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final append(C)Ljava/io/Writer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final write(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final write([CII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 p1, 0x0

    throw p1
.end method
