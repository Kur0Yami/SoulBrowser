.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->R()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->G0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->G0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 19
    .line 20
    :cond_1
    if-nez p1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 55
    .line 56
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 57
    .line 58
    new-instance v9, Lcom/mycompany/app/dialog/DialogTabMini$22;

    .line 59
    .line 60
    invoke-direct {v9, v0, p2}, Lcom/mycompany/app/dialog/DialogTabMini$22;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;I)V

    .line 61
    .line 62
    .line 63
    move-object v6, p1

    .line 64
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->G0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 68
    .line 69
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 70
    .line 71
    return-void
.end method

.method public final c(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->Z0:Z

    .line 6
    .line 7
    if-nez v2, :cond_9

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->c0:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Lcom/mycompany/app/web/WebTabAdapter;->f0(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    .line 28
    .line 29
    .line 30
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    if-eqz p1, :cond_9

    .line 56
    .line 57
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1, p2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-virtual {v2, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_3
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 76
    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    iget p1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 80
    .line 81
    iget-boolean p2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    .line 82
    .line 83
    invoke-static {v1, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMini;->E(Lcom/mycompany/app/dialog/DialogTabMini;IZ)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    const/4 v3, 0x2

    .line 88
    new-array v5, v3, [I

    .line 89
    .line 90
    iget-object v6, v1, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 91
    .line 92
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    aget v7, v5, v6

    .line 97
    .line 98
    aget v8, v5, v4

    .line 99
    .line 100
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 101
    .line 102
    invoke-virtual {v9, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 103
    .line 104
    .line 105
    aget v9, v5, v6

    .line 106
    .line 107
    aget v10, v5, v4

    .line 108
    .line 109
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    .line 123
    .line 124
    aget p1, v5, v6

    .line 125
    .line 126
    sub-int/2addr p1, v9

    .line 127
    div-int/2addr v11, v3

    .line 128
    add-int/2addr v11, p1

    .line 129
    aget p1, v5, v4

    .line 130
    .line 131
    sub-int/2addr p1, v10

    .line 132
    div-int/2addr v12, v3

    .line 133
    add-int/2addr v12, p1

    .line 134
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    sub-int v11, p1, v11

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    div-int/lit8 v11, p1, 0x2

    .line 158
    .line 159
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    div-int/lit8 v12, p1, 0x2

    .line 166
    .line 167
    :cond_6
    :goto_0
    sub-int/2addr v9, v7

    .line 168
    add-int/2addr v9, v11

    .line 169
    sub-int/2addr v10, v8

    .line 170
    add-int/2addr v10, v12

    .line 171
    iget-object p1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 174
    .line 175
    iget-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 176
    .line 177
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 178
    .line 179
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 180
    .line 181
    if-nez v4, :cond_7

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->S()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_8

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_8
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->O()V

    .line 192
    .line 193
    .line 194
    iput-boolean v6, v1, Lcom/mycompany/app/dialog/DialogTabMini;->R0:Z

    .line 195
    .line 196
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTabMini;->s1:I

    .line 197
    .line 198
    iput v10, v1, Lcom/mycompany/app/dialog/DialogTabMini;->t1:I

    .line 199
    .line 200
    iput p2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->u1:I

    .line 201
    .line 202
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->v1:Ljava/util/List;

    .line 203
    .line 204
    iput-wide v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->w1:J

    .line 205
    .line 206
    iput v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->x1:I

    .line 207
    .line 208
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMini$39;

    .line 209
    .line 210
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogTabMini$39;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v6, p1}, Lcom/mycompany/app/dialog/DialogTabMini;->U(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 214
    .line 215
    .line 216
    :cond_9
    :goto_1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$5;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->Z0:Z

    .line 6
    .line 7
    if-nez v2, :cond_done

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :cond_done

    .line 14
    :cond_0
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 15
    .line 16
    if-nez v3, :cond_range

    invoke-static {p1}, Lcom/mycompany/app/web/TabListLongPressGate;->anchorFor(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v2

    if-nez v2, :cond_helper_check

    goto :cond_arm

    :cond_helper_check
    iget v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v2, :cond_arm

    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->p:Landroidx/recyclerview/widget/ItemTouchHelper;

    :cond_arm
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    move-object v0, v1

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/web/TabListLongPressGate;->armMini(Lcom/mycompany/app/dialog/DialogTabMini;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

    return-void

    :cond_range
    invoke-virtual {v2, p2}, Lcom/mycompany/app/web/WebTabAdapter;->selectRangeTo(I)Z

    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    if-eqz p1, :cond_range_check

    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    move-result p2

    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    move-result v2

    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_range_check
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz p1, :cond_done

    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    :cond_done
    return-void
.end method
