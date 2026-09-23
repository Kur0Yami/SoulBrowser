.class Lcom/mycompany/app/dialog/DialogAllowPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogAllowPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$3;->a:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    const/4 p4, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$3;->a:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eqz p2, :cond_8

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq p2, p1, :cond_6

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    if-eq p2, p1, :cond_4

    .line 13
    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/dialog/DialogAllowPopup;->s0:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 34
    .line 35
    .line 36
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 37
    .line 38
    :cond_3
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x15

    .line 44
    .line 45
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 46
    .line 47
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 48
    .line 49
    sget p2, Lnet/kaki87/soul2/testing/R$string;->pop_white:I

    .line 50
    .line 51
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 52
    .line 53
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 54
    .line 55
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->d0:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p2, p3, p1, v1, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/dialog/DialogAllowPopup$7;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$7;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->o0:Z

    .line 74
    .line 75
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->d0:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 82
    .line 83
    :cond_5
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 84
    .line 85
    new-instance p2, Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 86
    .line 87
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 91
    .line 92
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_6
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->n0:Z

    .line 99
    .line 100
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->e0:Ljava/lang/String;

    .line 101
    .line 102
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 103
    .line 104
    if-eqz p2, :cond_7

    .line 105
    .line 106
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 107
    .line 108
    :cond_7
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 109
    .line 110
    new-instance p2, Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 111
    .line 112
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->k0:Lcom/mycompany/app/dialog/DialogAllowPopup$DialogTask;

    .line 116
    .line 117
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_8
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 124
    .line 125
    if-nez p2, :cond_9

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_a
    if-eqz p2, :cond_b

    .line 134
    .line 135
    iput-object p4, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 138
    .line 139
    .line 140
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 141
    .line 142
    :cond_b
    if-eqz p1, :cond_f

    .line 143
    .line 144
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 145
    .line 146
    if-nez p2, :cond_c

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    sget-object p2, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 155
    .line 156
    const/4 p2, 0x0

    .line 157
    move p3, p2

    .line 158
    :goto_0
    if-ge p3, v2, :cond_e

    .line 159
    .line 160
    sget-object p4, Lcom/mycompany/app/setting/SettingClean;->A2:[I

    .line 161
    .line 162
    aget p4, p4, p3

    .line 163
    .line 164
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 165
    .line 166
    sget-object v4, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 167
    .line 168
    aget v4, v4, p4

    .line 169
    .line 170
    iget v5, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->m0:I

    .line 171
    .line 172
    if-ne v5, p4, :cond_d

    .line 173
    .line 174
    move p4, v1

    .line 175
    goto :goto_1

    .line 176
    :cond_d
    move p4, p2

    .line 177
    :goto_1
    invoke-direct {v3, p3, v4, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    add-int/lit8 p3, p3, 0x1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_e
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 187
    .line 188
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 189
    .line 190
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 191
    .line 192
    iget-object v6, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 193
    .line 194
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 195
    .line 196
    new-instance v9, Lcom/mycompany/app/dialog/DialogAllowPopup$6;

    .line 197
    .line 198
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$6;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 199
    .line 200
    .line 201
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 202
    .line 203
    .line 204
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 205
    .line 206
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 207
    .line 208
    :cond_f
    :goto_2
    return-void
.end method
