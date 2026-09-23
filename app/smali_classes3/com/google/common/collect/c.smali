.class public final synthetic Lcom/google/common/collect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/common/collect/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c;->c:I

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/c;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    .line 7
    .line 8
    check-cast p2, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p2, p2, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    check-cast v2, Lcom/google/common/collect/Range;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/common/collect/Range;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    xor-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    const-string v4, "range must not be empty, but was %s"

    .line 37
    .line 38
    invoke-static {v4, v2, v3}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object p1

    .line 48
    :pswitch_0
    check-cast p1, Lcom/google/common/collect/ImmutableSet$Builder;

    .line 49
    .line 50
    check-cast p2, Lcom/google/common/collect/ImmutableSet$Builder;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSet$Builder;->g(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_1
    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    .line 58
    .line 59
    check-cast p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->a:Ljava/lang/Object;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    move-object p1, p2

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->a:Ljava/lang/Object;

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 86
    .line 87
    :cond_3
    iget-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 88
    .line 89
    iget-object v1, p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->a:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    iget-object p2, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    const/4 v0, 0x4

    .line 108
    if-gt p2, v0, :cond_4

    .line 109
    .line 110
    :goto_1
    return-object p1

    .line 111
    :cond_4
    iget-object p2, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 122
    .line 123
    .line 124
    const/4 p2, 0x1

    .line 125
    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->b(Z)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    throw p1

    .line 130
    :pswitch_2
    check-cast p1, Lcom/google/common/collect/ImmutableList$Builder;

    .line 131
    .line 132
    check-cast p2, Lcom/google/common/collect/ImmutableList$Builder;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v0, p2, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->a:[Ljava/lang/Object;

    .line 138
    .line 139
    iget p2, p2, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 140
    .line 141
    invoke-static {p2, v0}, Lcom/google/common/collect/ObjectArrays;->a(I[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->d(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->a:[Ljava/lang/Object;

    .line 148
    .line 149
    iget v2, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-static {v0, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    iget v0, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 156
    .line 157
    add-int/2addr v0, p2

    .line 158
    iput v0, p1, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 159
    .line 160
    return-object p1

    .line 161
    :pswitch_3
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    .line 162
    .line 163
    check-cast p2, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    .line 164
    .line 165
    iget-object v0, p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->a:Ljava/util/EnumSet;

    .line 166
    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    move-object p1, p2

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    iget-object p2, p2, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->a:Ljava/util/EnumSet;

    .line 172
    .line 173
    if-nez p2, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 177
    .line 178
    .line 179
    :goto_2
    return-object p1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
