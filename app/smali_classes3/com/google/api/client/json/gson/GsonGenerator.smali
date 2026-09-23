.class Lcom/google/api/client/json/gson/GsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;
    }
.end annotation


# instance fields
.field public final c:Lcom/google/gson/stream/JsonWriter;


# direct methods
.method public constructor <init>(Lcom/google/gson/stream/JsonWriter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 5
    .line 6
    sget-object v0, Lcom/google/gson/Strictness;->c:Lcom/google/gson/Strictness;

    .line 7
    .line 8
    iput-object v0, p1, Lcom/google/gson/stream/JsonWriter;->l:Lcom/google/gson/Strictness;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->F(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/gson/FormattingStyle;->e:Lcom/google/gson/FormattingStyle;

    .line 2
    .line 3
    new-instance v1, Lcom/google/gson/FormattingStyle;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/gson/FormattingStyle;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/gson/FormattingStyle;->c:Z

    .line 8
    .line 9
    const-string v3, "  "

    .line 10
    .line 11
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/FormattingStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->n(Lcom/google/gson/FormattingStyle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->G(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->j(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->l()Lcom/google/gson/stream/JsonWriter;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->v(D)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->L()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/gson/stream/JsonWriter;->l:Lcom/google/gson/Strictness;

    .line 7
    .line 8
    sget-object v2, Lcom/google/gson/Strictness;->c:Lcom/google/gson/Strictness;

    .line 9
    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Numeric values must be finite, but was "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->a()V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lcom/google/gson/stream/JsonWriter;->c:Ljava/io/Writer;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final m(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->z(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final n(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->z(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Ljava/math/BigDecimal;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->B(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->B(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->c:Lcom/google/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
