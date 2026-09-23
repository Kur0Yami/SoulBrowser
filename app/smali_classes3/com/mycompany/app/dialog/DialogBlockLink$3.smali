.class Lcom/mycompany/app/dialog/DialogBlockLink$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$3;->a:Lcom/mycompany/app/dialog/DialogBlockLink;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink$3;->a:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p2, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    if-eq p2, p1, :cond_6

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq p2, p1, :cond_4

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq p2, p1, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/dialog/DialogBlockLink;->w0:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

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
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

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
    const/16 p2, 0x16

    .line 44
    .line 45
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 46
    .line 47
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 48
    .line 49
    sget p2, Lnet/kaki87/soul2/testing/R$string;->blocked_link:I

    .line 50
    .line 51
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 52
    .line 53
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 54
    .line 55
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->d0:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p2, p3, p1, v1, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->n0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/dialog/DialogBlockLink$7;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$7;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

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
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 74
    .line 75
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 82
    .line 83
    :cond_5
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 84
    .line 85
    new-instance p2, Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 86
    .line 87
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 91
    .line 92
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_6
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 99
    .line 100
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 101
    .line 102
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 103
    .line 104
    if-eqz p2, :cond_7

    .line 105
    .line 106
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 107
    .line 108
    :cond_7
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 109
    .line 110
    new-instance p2, Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 111
    .line 112
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->m0:Lcom/mycompany/app/dialog/DialogBlockLink$DialogTask;

    .line 116
    .line 117
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_8
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 124
    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    if-eqz p2, :cond_a

    .line 129
    .line 130
    iput-object p4, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 133
    .line 134
    .line 135
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 136
    .line 137
    :cond_a
    if-eqz p1, :cond_e

    .line 138
    .line 139
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 140
    .line 141
    if-nez p2, :cond_b

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 150
    .line 151
    array-length p2, p2

    .line 152
    const/4 p3, 0x0

    .line 153
    move p4, p3

    .line 154
    :goto_0
    if-ge p4, p2, :cond_d

    .line 155
    .line 156
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 157
    .line 158
    aget v2, v2, p4

    .line 159
    .line 160
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 161
    .line 162
    sget-object v4, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 163
    .line 164
    aget v4, v4, v2

    .line 165
    .line 166
    sget v5, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 167
    .line 168
    if-ne v5, v2, :cond_c

    .line 169
    .line 170
    move v2, v1

    .line 171
    goto :goto_1

    .line 172
    :cond_c
    move v2, p3

    .line 173
    :goto_1
    invoke-direct {v3, p4, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    add-int/lit8 p4, p4, 0x1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_d
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 183
    .line 184
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 185
    .line 186
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 187
    .line 188
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 189
    .line 190
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 191
    .line 192
    new-instance v8, Lcom/mycompany/app/dialog/DialogBlockLink$8;

    .line 193
    .line 194
    invoke-direct {v8, v0, p2}, Lcom/mycompany/app/dialog/DialogBlockLink$8;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;I)V

    .line 195
    .line 196
    .line 197
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 198
    .line 199
    .line 200
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 201
    .line 202
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 203
    .line 204
    :cond_e
    :goto_2
    return-void
.end method
