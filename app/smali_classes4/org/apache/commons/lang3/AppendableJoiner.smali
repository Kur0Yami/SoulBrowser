.class public final Lorg/apache/commons/lang3/AppendableJoiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Lorg/apache/commons/lang3/function/FailableBiConsumer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->a:Ljava/lang/CharSequence;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object p2, v0

    .line 16
    :goto_1
    iput-object p2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->b:Ljava/lang/CharSequence;

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move-object p3, v0

    .line 22
    :goto_2
    iput-object p3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->c:Ljava/lang/CharSequence;

    .line 23
    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_3
    new-instance p4, Lorg/apache/commons/lang3/c;

    .line 28
    .line 29
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_3
    iput-object p4, p0, Lorg/apache/commons/lang3/AppendableJoiner;->d:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/AppendableJoiner;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner;->b:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner;->c:Ljava/lang/CharSequence;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    array-length v0, p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner;->d:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :try_start_1
    aget-object v0, p2, v0

    .line 19
    .line 20
    invoke-interface {v3, p1, v0}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    array-length v4, p2

    .line 25
    if-ge v0, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 28
    .line 29
    .line 30
    aget-object v4, p2, v0

    .line 31
    .line 32
    invoke-interface {v3, p1, v4}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Lorg/apache/commons/lang3/exception/UncheckedException;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method
