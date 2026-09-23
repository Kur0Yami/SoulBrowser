.class final Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;
.super Lorg/jsoup/internal/QuietAppendable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/internal/QuietAppendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringBuilderAppendable"
.end annotation


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/internal/QuietAppendable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->a:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final append(C)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final append([CII)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
