.class Lcom/mycompany/app/dialog/DialogSetTmem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTmem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem$3;->a:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    const/4 p4, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem$3;->a:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p2, :cond_9

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    if-eq p2, p1, :cond_7

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq p2, p1, :cond_5

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq p2, p1, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/dialog/DialogSetTmem;->p0:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 40
    .line 41
    .line 42
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 43
    .line 44
    :cond_4
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x1d

    .line 50
    .line 51
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 52
    .line 53
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 54
    .line 55
    sget p2, Lnet/kaki87/soul2/testing/R$string;->mem_block_list:I

    .line 56
    .line 57
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 58
    .line 59
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 60
    .line 61
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->c0:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p2, p3, p1, v1, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 69
    .line 70
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTmem$9;

    .line 71
    .line 72
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogSetTmem$9;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->o0:Z

    .line 80
    .line 81
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->c0:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 84
    .line 85
    if-eqz p2, :cond_6

    .line 86
    .line 87
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 88
    .line 89
    :cond_6
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 90
    .line 91
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 92
    .line 93
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 97
    .line 98
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->n0:Z

    .line 105
    .line 106
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->d0:Ljava/lang/String;

    .line 107
    .line 108
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 109
    .line 110
    if-eqz p2, :cond_8

    .line 111
    .line 112
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 113
    .line 114
    :cond_8
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 115
    .line 116
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 117
    .line 118
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 122
    .line 123
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_9
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 130
    .line 131
    if-nez p2, :cond_a

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_a
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 135
    .line 136
    if-eqz p2, :cond_b

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_b
    if-eqz p2, :cond_c

    .line 140
    .line 141
    iput-object p4, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 144
    .line 145
    .line 146
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 147
    .line 148
    :cond_c
    if-eqz p1, :cond_e

    .line 149
    .line 150
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 151
    .line 152
    if-nez p2, :cond_d

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 161
    .line 162
    const/4 p3, 0x0

    .line 163
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 164
    .line 165
    invoke-direct {p2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 172
    .line 173
    sget p3, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 174
    .line 175
    invoke-direct {p2, v1, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 182
    .line 183
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 184
    .line 185
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 186
    .line 187
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 188
    .line 189
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 190
    .line 191
    new-instance v8, Lcom/mycompany/app/dialog/DialogSetTmem$6;

    .line 192
    .line 193
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogSetTmem$6;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V

    .line 194
    .line 195
    .line 196
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 197
    .line 198
    .line 199
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 200
    .line 201
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 202
    .line 203
    :cond_e
    :goto_0
    return-void
.end method
