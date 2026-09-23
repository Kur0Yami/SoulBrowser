.class Lcom/mycompany/app/quick/QuickSearch$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickAdapter$QuickListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$6;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$6;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l()V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickSearch$6;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v3, :cond_7

    .line 10
    .line 11
    iget-object v4, v2, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    move/from16 v4, p2

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    iget-boolean v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    iget v0, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v2, v0, v3}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->l(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-ne v0, v5, :cond_7

    .line 50
    .line 51
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 52
    .line 53
    invoke-interface {v2, v0, v4}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->l(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object v4, v2, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 58
    .line 59
    invoke-interface {v4}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->f()Lcom/mycompany/app/view/MyWebBody;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/4 v6, 0x2

    .line 67
    new-array v7, v6, [I

    .line 68
    .line 69
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    aget v9, v7, v8

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    add-int/2addr v10, v9

    .line 80
    aget v9, v7, v5

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    add-int/2addr v4, v9

    .line 87
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 88
    .line 89
    .line 90
    aget v9, v7, v8

    .line 91
    .line 92
    aget v11, v7, v5

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    .line 110
    .line 111
    aget v0, v7, v8

    .line 112
    .line 113
    sub-int/2addr v0, v9

    .line 114
    div-int/lit8 v8, v6, 0x2

    .line 115
    .line 116
    add-int/2addr v8, v0

    .line 117
    aget v0, v7, v5

    .line 118
    .line 119
    sub-int/2addr v0, v11

    .line 120
    div-int/lit8 v5, v12, 0x2

    .line 121
    .line 122
    add-int/2addr v5, v0

    .line 123
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 124
    .line 125
    sub-int/2addr v5, v0

    .line 126
    iget-object v0, v2, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    sub-int v8, v0, v8

    .line 139
    .line 140
    :cond_5
    move v15, v6

    .line 141
    move/from16 v17, v12

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 145
    .line 146
    mul-int/lit8 v0, v0, 0x5

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    div-int/lit8 v8, v5, 0x2

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    div-int/2addr v5, v6

    .line 159
    move v15, v0

    .line 160
    move/from16 v17, v15

    .line 161
    .line 162
    :goto_0
    sub-int/2addr v9, v10

    .line 163
    add-int v13, v9, v8

    .line 164
    .line 165
    sub-int/2addr v11, v4

    .line 166
    add-int v14, v11, v5

    .line 167
    .line 168
    iget-object v12, v2, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 169
    .line 170
    iget-object v0, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 171
    .line 172
    move-object/from16 v16, v0

    .line 173
    .line 174
    invoke-interface/range {v12 .. v17}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->n(IIILjava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_1
    return-void
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q(Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$6;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickSearch;->s:Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/QuickSearch$QuickSearchListener;->m(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method
