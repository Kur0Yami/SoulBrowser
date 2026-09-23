.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v1, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 11
    .line 12
    iget v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->y0:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->z0:F

    .line 20
    .line 21
    int-to-float v4, v1

    .line 22
    cmpg-float v4, v3, v4

    .line 23
    .line 24
    if-ltz v4, :cond_3

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v2, v1

    .line 31
    int-to-float v1, v2

    .line 32
    cmpl-float v1, v3, v1

    .line 33
    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 55
    .line 56
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 57
    .line 58
    new-instance v9, Lcom/mycompany/app/dialog/DialogTabMain$23;

    .line 59
    .line 60
    invoke-direct {v9, v0, p2}, Lcom/mycompany/app/dialog/DialogTabMain$23;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;I)V

    .line 61
    .line 62
    .line 63
    move-object v6, p1

    .line 64
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 68
    .line 69
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 70
    .line 71
    return-void
.end method

.method public final c(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->C0:Z

    .line 6
    .line 7
    if-nez v2, :cond_9

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

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
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 28
    .line 29
    .line 30
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

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
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    if-eqz p1, :cond_9

    .line 56
    .line 57
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

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
    iget-boolean p2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a:Z

    .line 82
    .line 83
    invoke-static {v1, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMain;->v(Lcom/mycompany/app/dialog/DialogTabMain;IZ)V

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
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    .line 114
    .line 115
    aget p1, v5, v6

    .line 116
    .line 117
    sub-int/2addr p1, v7

    .line 118
    div-int/2addr v9, v3

    .line 119
    add-int/2addr v9, p1

    .line 120
    aget p1, v5, v4

    .line 121
    .line 122
    sub-int/2addr p1, v8

    .line 123
    div-int/2addr v10, v3

    .line 124
    add-int/2addr v10, p1

    .line 125
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    sub-int v9, p1, v9

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    div-int/lit8 v9, p1, 0x2

    .line 149
    .line 150
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    div-int/lit8 v10, p1, 0x2

    .line 157
    .line 158
    :cond_6
    :goto_0
    add-int/2addr v9, v7

    .line 159
    add-int/2addr v10, v8

    .line 160
    iget-object p1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 163
    .line 164
    iget-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 165
    .line 166
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 167
    .line 168
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 169
    .line 170
    if-nez v4, :cond_7

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_7
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->G()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_8

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_8
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->D()V

    .line 181
    .line 182
    .line 183
    iput-boolean v6, v1, Lcom/mycompany/app/dialog/DialogTabMain;->v0:Z

    .line 184
    .line 185
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTabMain;->W0:I

    .line 186
    .line 187
    iput v10, v1, Lcom/mycompany/app/dialog/DialogTabMain;->X0:I

    .line 188
    .line 189
    iput p2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->Y0:I

    .line 190
    .line 191
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->Z0:Ljava/util/List;

    .line 192
    .line 193
    iput-wide v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->a1:J

    .line 194
    .line 195
    iput v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->b1:I

    .line 196
    .line 197
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$40;

    .line 198
    .line 199
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogTabMain$40;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v6, p1}, Lcom/mycompany/app/dialog/DialogTabMain;->I(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$6;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->C0:Z

    .line 6
    .line 7
    if-nez v2, :cond_done

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

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

    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->r:Landroidx/recyclerview/widget/ItemTouchHelper;

    :cond_arm
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a:Z

    move-object v0, v1

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/web/TabListLongPressGate;->armMain(Lcom/mycompany/app/dialog/DialogTabMain;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

    return-void

    :cond_range
    invoke-virtual {v2, p2}, Lcom/mycompany/app/web/WebTabAdapter;->selectRangeTo(I)Z

    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    if-eqz p1, :cond_range_check

    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    move-result p2

    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    move-result v2

    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_range_check
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz p1, :cond_done

    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    :cond_done
    return-void
.end method
