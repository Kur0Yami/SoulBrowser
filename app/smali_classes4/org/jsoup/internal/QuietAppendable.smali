.class public abstract Lorg/jsoup/internal/QuietAppendable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;,
        Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static wrap(Ljava/lang/Appendable;)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;-><init>(Ljava/lang/StringBuilder;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;-><init>(Ljava/lang/Appendable;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract append(C)Lorg/jsoup/internal/QuietAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;
.end method

.method public abstract append([CII)Lorg/jsoup/internal/QuietAppendable;
.end method
