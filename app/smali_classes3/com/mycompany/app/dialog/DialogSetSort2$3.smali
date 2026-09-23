.class Lcom/mycompany/app/dialog/DialogSetSort2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetSort2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2$3;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogSetSort2$3;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 2
    .line 3
    if-eqz p2, :cond_e

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_c

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v2, :cond_5

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/dialog/DialogSetSort2;->n0:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean p2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    if-eqz p2, :cond_3

    .line 32
    .line 33
    iput-object p3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 36
    .line 37
    .line 38
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    :cond_3
    if-eqz p1, :cond_f

    .line 41
    .line 42
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 43
    .line 44
    if-nez p2, :cond_4

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 54
    .line 55
    sget p3, Lnet/kaki87/soul2/testing/R$string;->order_ascend:I

    .line 56
    .line 57
    iget-boolean v2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 58
    .line 59
    xor-int/2addr v2, v0

    .line 60
    invoke-direct {p2, v1, p3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 67
    .line 68
    sget p3, Lnet/kaki87/soul2/testing/R$string;->order_descend:I

    .line 69
    .line 70
    iget-boolean v1, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 71
    .line 72
    invoke-direct {p2, v0, p3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 79
    .line 80
    iget-object v3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 81
    .line 82
    iget-object v4, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 83
    .line 84
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 85
    .line 86
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 87
    .line 88
    new-instance v8, Lcom/mycompany/app/dialog/DialogSetSort2$7;

    .line 89
    .line 90
    invoke-direct {v8, p4}, Lcom/mycompany/app/dialog/DialogSetSort2$7;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 97
    .line 98
    iput-object v2, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    iget-boolean p2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 102
    .line 103
    if-eqz p2, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 107
    .line 108
    if-eqz p2, :cond_7

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_7
    if-eqz p2, :cond_8

    .line 112
    .line 113
    iput-object p3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 116
    .line 117
    .line 118
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    :cond_8
    if-eqz p1, :cond_f

    .line 121
    .line 122
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 123
    .line 124
    if-nez p2, :cond_9

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object p2, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 133
    .line 134
    move p2, v1

    .line 135
    :goto_0
    if-ge p2, v2, :cond_b

    .line 136
    .line 137
    sget-object p3, Lcom/mycompany/app/dialog/DialogSetSort;->C0:[I

    .line 138
    .line 139
    aget p3, p3, p2

    .line 140
    .line 141
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 142
    .line 143
    sget-object v4, Lcom/mycompany/app/dialog/DialogSetSort;->x0:[I

    .line 144
    .line 145
    aget v4, v4, p3

    .line 146
    .line 147
    iget v5, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 148
    .line 149
    if-ne p3, v5, :cond_a

    .line 150
    .line 151
    move p3, v0

    .line 152
    goto :goto_1

    .line 153
    :cond_a
    move p3, v1

    .line 154
    :goto_1
    invoke-direct {v3, p2, v4, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    add-int/lit8 p2, p2, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_b
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 164
    .line 165
    iget-object v4, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 166
    .line 167
    iget-object v5, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 168
    .line 169
    iget-object v6, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 170
    .line 171
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 172
    .line 173
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetSort2$6;

    .line 174
    .line 175
    invoke-direct {v9, p4}, Lcom/mycompany/app/dialog/DialogSetSort2$6;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 176
    .line 177
    .line 178
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 179
    .line 180
    .line 181
    iput-object v3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 182
    .line 183
    iput-object v3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 184
    .line 185
    return-void

    .line 186
    :cond_c
    iget-boolean p1, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 187
    .line 188
    if-eqz p1, :cond_d

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_d
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->e0:Z

    .line 192
    .line 193
    return-void

    .line 194
    :cond_e
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 195
    .line 196
    if-nez p1, :cond_10

    .line 197
    .line 198
    :cond_f
    :goto_2
    return-void

    .line 199
    :cond_10
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 200
    .line 201
    invoke-virtual {p4}, Lcom/mycompany/app/dialog/DialogSetSort2;->B()Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method
