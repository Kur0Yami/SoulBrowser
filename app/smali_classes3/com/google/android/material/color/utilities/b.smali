.class public final synthetic Lcom/google/android/material/color/utilities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/color/utilities/b;->a:I

    iput-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/b;->a:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->b()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->a()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->b()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->b()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->a()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->g()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->i()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->h()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_5
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->g()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->f()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->f()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_7
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->i()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->h()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->e()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->a()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->d()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_b
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->e()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->d()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    return-object p1

    .line 134
    :pswitch_c
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->g()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->f()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 142
    .line 143
    .line 144
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_d
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->i()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->h()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :pswitch_e
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/google/android/material/color/utilities/b;->b:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->e()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->d()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 170
    .line 171
    .line 172
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    return-object p1

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
