.class public Lorg/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile h:Lorg/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field public final c:Ljava/lang/StringBuffer;

.field public final f:Ljava/lang/Object;

.field public final g:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->u:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 2
    .line 3
    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->h:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p2, Lorg/apache/commons/lang3/builder/ToStringBuilder;->h:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 7
    .line 8
    :cond_0
    new-instance p3, Ljava/lang/StringBuffer;

    .line 9
    .line 10
    const/16 v0, 0x200

    .line 11
    .line 12
    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->c:Ljava/lang/StringBuffer;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->g:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->f:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->L()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->v:Landroidx/emoji2/text/flatbuffer/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Map;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x40

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->x()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->I()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->z()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->g:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->c:Ljava/lang/StringBuffer;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->f:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->A()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->z()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-le v5, v6, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    sub-int/2addr v6, v5

    .line 46
    invoke-static {v1, v4, v6, v3, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    if-ne v1, v3, :cond_4

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->z()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-int/2addr v3, v4

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->w()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->O(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
