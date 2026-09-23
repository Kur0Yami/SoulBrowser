.class public abstract Lorg/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;
    }
.end annotation


# static fields
.field public static final u:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final v:Landroidx/emoji2/text/flatbuffer/b;


# instance fields
.field public final c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->u:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "  "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "]"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lorg/apache/commons/lang3/builder/a;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/builder/a;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Landroidx/emoji2/text/flatbuffer/b;

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->v:Landroidx/emoji2/text/flatbuffer/b;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->f:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->h:Z

    .line 10
    .line 11
    const-string v0, "["

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->i:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "]"

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "="

    .line 20
    .line 21
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, ","

    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "{"

    .line 28
    .line 29
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->m:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "}"

    .line 34
    .line 35
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->o:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "<null>"

    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "<size="

    .line 42
    .line 43
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, ">"

    .line 46
    .line 47
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "<"

    .line 50
    .line 51
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method

.method public static O(Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->v:Landroidx/emoji2/text/flatbuffer/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/ClassUtils;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "["

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v4, 0x5b

    .line 36
    .line 37
    if-ne v1, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "[]"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/16 v4, 0x4c

    .line 54
    .line 55
    if-ne v1, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    sub-int/2addr v1, v3

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/16 v4, 0x3b

    .line 67
    .line 68
    if-ne v1, v4, :cond_2

    .line 69
    .line 70
    invoke-static {v3, v3, p1}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    sget-object v1, Lorg/apache/commons/lang3/ClassUtils;->e:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ljava/lang/String;

    .line 87
    .line 88
    :cond_3
    const/16 v1, 0x2e

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const/4 v5, -0x1

    .line 95
    if-ne v4, v5, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    add-int/lit8 v2, v4, 0x1

    .line 99
    .line 100
    :goto_1
    const/16 v6, 0x24

    .line 101
    .line 102
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    add-int/2addr v4, v3

    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eq v2, v5, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public N(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->d(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->q(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->A()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->H()Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->r(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->z()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->v:Landroidx/emoji2/text/flatbuffer/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->M()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->B(Ljava/lang/Class;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/StringBuffer;C)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    :cond_0
    if-nez p4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->A()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->G()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->r(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-byte v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public h(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-char v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->c(Ljava/lang/StringBuffer;C)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public i(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-wide v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public j(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public k(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public l(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-wide v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public m(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p3

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    aget-object v1, p3, v0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->d(Ljava/lang/StringBuffer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public n(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-short v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public o(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->v()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p3

    .line 10
    if-ge p2, v0, :cond_1

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    :cond_0
    aget-boolean v0, p3, p2

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->t()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public p(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->y()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->v:Landroidx/emoji2/text/flatbuffer/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    instance-of v1, p3, Ljava/lang/Number;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    instance-of v1, p3, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    instance-of v1, p3, Ljava/lang/Character;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string p2, "object"

    .line 29
    .line 30
    invoke-static {p3, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    invoke-static {p4, v2, p2}, Landroidx/work/impl/workers/a;->d(IILjava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v0, p4

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    const/16 p2, 0x40

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    if-eqz p3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/Map;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_1
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    if-eqz p4, :cond_2

    .line 94
    .line 95
    move-object p4, p3

    .line 96
    check-cast p4, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->f(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_2
    move-object p2, p3

    .line 107
    check-cast p2, Ljava/util/Collection;

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_3
    instance-of v0, p3, Ljava/util/Map;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    if-eqz p4, :cond_4

    .line 123
    .line 124
    move-object p2, p3

    .line 125
    check-cast p2, Ljava/util/Map;

    .line 126
    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->p(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_4
    move-object p2, p3

    .line 133
    check-cast p2, Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_5
    instance-of v0, p3, [J

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    if-eqz p4, :cond_6

    .line 149
    .line 150
    move-object p4, p3

    .line 151
    check-cast p4, [J

    .line 152
    .line 153
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->l(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_6
    move-object p2, p3

    .line 159
    check-cast p2, [J

    .line 160
    .line 161
    array-length p2, p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_7
    instance-of v0, p3, [I

    .line 168
    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    if-eqz p4, :cond_8

    .line 172
    .line 173
    move-object p4, p3

    .line 174
    check-cast p4, [I

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->k(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_8
    move-object p2, p3

    .line 182
    check-cast p2, [I

    .line 183
    .line 184
    array-length p2, p2

    .line 185
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_9
    instance-of v0, p3, [S

    .line 191
    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    if-eqz p4, :cond_a

    .line 195
    .line 196
    move-object p4, p3

    .line 197
    check-cast p4, [S

    .line 198
    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->n(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_a
    move-object p2, p3

    .line 205
    check-cast p2, [S

    .line 206
    .line 207
    array-length p2, p2

    .line 208
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_b
    instance-of v0, p3, [B

    .line 214
    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    if-eqz p4, :cond_c

    .line 218
    .line 219
    move-object p4, p3

    .line 220
    check-cast p4, [B

    .line 221
    .line 222
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->g(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_c
    move-object p2, p3

    .line 228
    check-cast p2, [B

    .line 229
    .line 230
    array-length p2, p2

    .line 231
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_d
    instance-of v0, p3, [C

    .line 237
    .line 238
    if-eqz v0, :cond_f

    .line 239
    .line 240
    if-eqz p4, :cond_e

    .line 241
    .line 242
    move-object p4, p3

    .line 243
    check-cast p4, [C

    .line 244
    .line 245
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->h(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_e
    move-object p2, p3

    .line 251
    check-cast p2, [C

    .line 252
    .line 253
    array-length p2, p2

    .line 254
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_f
    instance-of v0, p3, [D

    .line 260
    .line 261
    if-eqz v0, :cond_11

    .line 262
    .line 263
    if-eqz p4, :cond_10

    .line 264
    .line 265
    move-object p4, p3

    .line 266
    check-cast p4, [D

    .line 267
    .line 268
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->i(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :cond_10
    move-object p2, p3

    .line 274
    check-cast p2, [D

    .line 275
    .line 276
    array-length p2, p2

    .line 277
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_11
    instance-of v0, p3, [F

    .line 283
    .line 284
    if-eqz v0, :cond_13

    .line 285
    .line 286
    if-eqz p4, :cond_12

    .line 287
    .line 288
    move-object p4, p3

    .line 289
    check-cast p4, [F

    .line 290
    .line 291
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->j(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_12
    move-object p2, p3

    .line 296
    check-cast p2, [F

    .line 297
    .line 298
    array-length p2, p2

    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_13
    instance-of v0, p3, [Z

    .line 304
    .line 305
    if-eqz v0, :cond_15

    .line 306
    .line 307
    if-eqz p4, :cond_14

    .line 308
    .line 309
    move-object p4, p3

    .line 310
    check-cast p4, [Z

    .line 311
    .line 312
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->o(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_14
    move-object p2, p3

    .line 317
    check-cast p2, [Z

    .line 318
    .line 319
    array-length p2, p2

    .line 320
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_15
    if-eqz p3, :cond_16

    .line 325
    .line 326
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_16

    .line 335
    .line 336
    goto :goto_0

    .line 337
    :cond_16
    const/4 v2, 0x0

    .line 338
    :goto_0
    if-eqz v2, :cond_18

    .line 339
    .line 340
    if-eqz p4, :cond_17

    .line 341
    .line 342
    move-object p4, p3

    .line 343
    check-cast p4, [Ljava/lang/Object;

    .line 344
    .line 345
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->m(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_17
    move-object p2, p3

    .line 350
    check-cast p2, [Ljava/lang/Object;

    .line 351
    .line 352
    array-length p2, p2

    .line 353
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;I)V

    .line 354
    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_18
    if-eqz p4, :cond_19

    .line 358
    .line 359
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->e(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_19
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->F()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->B(Ljava/lang/Class;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->E()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .line 387
    .line 388
    :goto_1
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->O(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :goto_2
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->O(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    throw p1
.end method

.method public final s(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->C()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
