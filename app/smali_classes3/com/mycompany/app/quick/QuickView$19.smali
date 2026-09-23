.class Lcom/mycompany/app/quick/QuickView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$19;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$19;->c:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v2, v0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 9
    .line 10
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v4}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iget-wide v4, v4, Lcom/mycompany/app/data/DataNews;->c:J

    .line 17
    .line 18
    iget-object v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v6, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->R()V

    .line 25
    .line 26
    .line 27
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-nez v6, :cond_2

    .line 32
    .line 33
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    iput v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 49
    .line 50
    iput v7, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v2}, Lcom/mycompany/app/data/DataNews;->b(Ljava/util/List;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-virtual {v1, v2, v8}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 66
    .line 67
    .line 68
    :goto_0
    move-wide v2, v3

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    iput-boolean v8, v1, Lcom/mycompany/app/quick/QuickAdapter;->p:Z

    .line 72
    .line 73
    iget-object v6, v1, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 74
    .line 75
    const/4 v9, 0x2

    .line 76
    if-eqz v6, :cond_8

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-le v6, v9, :cond_8

    .line 83
    .line 84
    cmp-long v2, v2, v4

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v2, v2, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {v1, v2, v8}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    move-wide v2, v4

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->T(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v2, v1, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    iget v2, v1, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 111
    .line 112
    const/4 v3, -0x1

    .line 113
    if-eq v2, v3, :cond_3

    .line 114
    .line 115
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 116
    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-static {v2}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->z:Lcom/mycompany/app/view/MyProgressBar;

    .line 134
    .line 135
    if-nez v3, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    iget-object v6, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 139
    .line 140
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v1, v6, v2, v3}, Lcom/mycompany/app/quick/QuickAdapter;->b0(Lcom/mycompany/app/view/MyRoundFrame;Landroid/widget/TextView;Lcom/mycompany/app/view/MyProgressBar;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    const/4 v4, 0x5

    .line 157
    iput v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 158
    .line 159
    iput v7, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    const/4 v4, 0x6

    .line 170
    iput v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 171
    .line 172
    iput v8, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 178
    .line 179
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    const/16 v5, 0x8

    .line 183
    .line 184
    iput v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 185
    .line 186
    iput v9, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 187
    .line 188
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {v3}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3, v2}, Lcom/mycompany/app/data/DataNews;->b(Ljava/util/List;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    invoke-virtual {v1, v2, v8}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :goto_2
    iput-wide v2, v0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 207
    .line 208
    return-void
.end method
