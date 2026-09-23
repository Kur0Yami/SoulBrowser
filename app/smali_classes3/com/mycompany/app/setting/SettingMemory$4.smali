.class Lcom/mycompany/app/setting/SettingMemory$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMemory;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMemory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMemory$4;->a:Lcom/mycompany/app/setting/SettingMemory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingMemory;->d2:I

    .line 2
    .line 3
    const/4 p4, 0x2

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMemory$4;->a:Lcom/mycompany/app/setting/SettingMemory;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, p4, :cond_8

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    const/4 p4, 0x0

    .line 11
    if-eq p2, p3, :cond_4

    .line 12
    .line 13
    const/4 p3, 0x6

    .line 14
    if-eq p2, p3, :cond_4

    .line 15
    .line 16
    const/4 p3, 0x7

    .line 17
    if-eq p2, p3, :cond_4

    .line 18
    .line 19
    const/16 p3, 0x8

    .line 20
    .line 21
    if-eq p2, p3, :cond_0

    .line 22
    .line 23
    const/16 p3, 0xa

    .line 24
    .line 25
    if-eq p2, p3, :cond_4

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_2
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 44
    .line 45
    .line 46
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 47
    .line 48
    :cond_3
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 p2, 0x1d

    .line 54
    .line 55
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 56
    .line 57
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 58
    .line 59
    sget p2, Lnet/kaki87/soul2/testing/R$string;->mem_block_list:I

    .line 60
    .line 61
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 62
    .line 63
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 64
    .line 65
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingMemory;->Y1:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {p2, v1, p1, p3, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 71
    .line 72
    new-instance p1, Lcom/mycompany/app/setting/SettingMemory$8;

    .line 73
    .line 74
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingMemory$8;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 81
    .line 82
    new-instance p2, Lcom/mycompany/app/setting/SettingMemory$9;

    .line 83
    .line 84
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingMemory$9;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 91
    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    if-eqz p3, :cond_6

    .line 96
    .line 97
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 100
    .line 101
    .line 102
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 103
    .line 104
    :cond_6
    if-eqz p1, :cond_9

    .line 105
    .line 106
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 107
    .line 108
    if-nez p3, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    iput p2, v1, Lcom/mycompany/app/setting/SettingMemory;->c2:I

    .line 112
    .line 113
    new-instance v4, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 119
    .line 120
    const/4 p3, 0x0

    .line 121
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 122
    .line 123
    invoke-direct {p2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 130
    .line 131
    sget p3, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 132
    .line 133
    invoke-direct {p2, v0, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 140
    .line 141
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 142
    .line 143
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 144
    .line 145
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 146
    .line 147
    new-instance v6, Lcom/mycompany/app/setting/SettingMemory$5;

    .line 148
    .line 149
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingMemory$5;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 156
    .line 157
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 158
    .line 159
    return-void

    .line 160
    :cond_8
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 161
    .line 162
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 163
    .line 164
    const/16 p2, 0x10

    .line 165
    .line 166
    const-string p4, "mAddPage"

    .line 167
    .line 168
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 176
    .line 177
    xor-int/lit8 v7, p2, 0x1

    .line 178
    .line 179
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 180
    .line 181
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 182
    .line 183
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 184
    .line 185
    invoke-virtual {v1, p2}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {p2}, Lcom/mycompany/app/setting/SettingMemory;->S0(Landroid/content/Context;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    const/4 v9, 0x2

    .line 196
    const/4 v3, 0x3

    .line 197
    move v8, v7

    .line 198
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 202
    .line 203
    .line 204
    :cond_9
    :goto_0
    return-void
.end method
