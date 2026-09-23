.class public final synthetic Lorg/apache/commons/lang3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/lang3/d;->c:I

    iput-object p2, p0, Lorg/apache/commons/lang3/d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/d;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/lang3/d;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lorg/apache/commons/lang3/ArchUtils;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Key "

    .line 27
    .line 28
    const-string v2, " already exists in processor map"

    .line 29
    .line 30
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/lang3/d;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/apache/commons/lang3/CharSet;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, v0, Lorg/apache/commons/lang3/CharSet;->c:Ljava/util/Set;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    move v3, v2

    .line 56
    :goto_0
    if-ge v3, v1, :cond_5

    .line 57
    .line 58
    sub-int v4, v1, v3

    .line 59
    .line 60
    const/16 v5, 0x2d

    .line 61
    .line 62
    const/16 v6, 0x5e

    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    const/4 v8, 0x1

    .line 66
    if-lt v4, v7, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-ne v7, v6, :cond_2

    .line 73
    .line 74
    add-int/lit8 v7, v3, 0x2

    .line 75
    .line 76
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ne v7, v5, :cond_2

    .line 81
    .line 82
    add-int/lit8 v4, v3, 0x1

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    add-int/lit8 v5, v3, 0x3

    .line 89
    .line 90
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    new-instance v6, Lorg/apache/commons/lang3/CharRange;

    .line 95
    .line 96
    invoke-direct {v6, v4, v5, v8}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 v7, 0x3

    .line 106
    if-lt v4, v7, :cond_3

    .line 107
    .line 108
    add-int/lit8 v7, v3, 0x1

    .line 109
    .line 110
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-ne v7, v5, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    add-int/lit8 v5, v3, 0x2

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    new-instance v6, Lorg/apache/commons/lang3/CharRange;

    .line 127
    .line 128
    invoke-direct {v6, v4, v5, v2}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x3

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    const/4 v5, 0x2

    .line 138
    if-lt v4, v5, :cond_4

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-ne v4, v6, :cond_4

    .line 145
    .line 146
    add-int/lit8 v4, v3, 0x1

    .line 147
    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    new-instance v5, Lorg/apache/commons/lang3/CharRange;

    .line 153
    .line 154
    invoke-direct {v5, v4, v4, v8}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    add-int/lit8 v3, v3, 0x2

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    new-instance v5, Lorg/apache/commons/lang3/CharRange;

    .line 168
    .line 169
    invoke-direct {v5, v4, v4, v2}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_5
    :goto_1
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/d;->c:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
