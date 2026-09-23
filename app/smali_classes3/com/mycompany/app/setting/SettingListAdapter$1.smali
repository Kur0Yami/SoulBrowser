.class Lcom/mycompany/app/setting/SettingListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter$1;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter$1;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    iget v2, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 24
    .line 25
    iget v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 26
    .line 27
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    if-eqz v3, :cond_3

    .line 34
    .line 35
    const/16 v4, 0xd

    .line 36
    .line 37
    if-eq v3, v4, :cond_3

    .line 38
    .line 39
    const/16 v4, 0x12

    .line 40
    .line 41
    if-ne v3, v4, :cond_4

    .line 42
    .line 43
    :cond_3
    iget-boolean v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_4
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x1

    .line 53
    if-eqz v4, :cond_9

    .line 54
    .line 55
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 56
    .line 57
    if-nez v7, :cond_f

    .line 58
    .line 59
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 60
    .line 61
    xor-int/2addr v7, v6

    .line 62
    iput-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 63
    .line 64
    invoke-virtual {v4, v7, v6}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    if-eqz v4, :cond_f

    .line 70
    .line 71
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->l:Z

    .line 72
    .line 73
    if-eqz v7, :cond_5

    .line 74
    .line 75
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 76
    .line 77
    if-nez v7, :cond_5

    .line 78
    .line 79
    const v7, -0xbbcca

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_5
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->m:Z

    .line 88
    .line 89
    if-eqz v7, :cond_7

    .line 90
    .line 91
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    const v7, -0x50506

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const/high16 v7, -0x1000000

    .line 100
    .line 101
    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 106
    .line 107
    if-eqz v7, :cond_8

    .line 108
    .line 109
    const v7, -0x3e3e3f

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_8
    const v7, -0x9e9e9f

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_9
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 121
    .line 122
    if-eqz v4, :cond_a

    .line 123
    .line 124
    iget-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 125
    .line 126
    xor-int/2addr v7, v6

    .line 127
    iput-boolean v7, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 128
    .line 129
    invoke-virtual {v4, v7, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_a
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->C:Lcom/mycompany/app/view/MyButtonCheck;

    .line 134
    .line 135
    if-eqz v4, :cond_f

    .line 136
    .line 137
    iget-boolean v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 138
    .line 139
    if-eqz v4, :cond_b

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_b
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    move v7, v5

    .line 149
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_d

    .line 154
    .line 155
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 160
    .line 161
    iget-boolean v9, v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 162
    .line 163
    if-eqz v9, :cond_c

    .line 164
    .line 165
    iput-boolean v5, v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 166
    .line 167
    iput-boolean v6, v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 168
    .line 169
    move v7, v6

    .line 170
    goto :goto_2

    .line 171
    :cond_c
    iput-boolean v5, v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_d
    iput-boolean v6, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 175
    .line 176
    if-eqz v7, :cond_e

    .line 177
    .line 178
    iput-boolean v6, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 179
    .line 180
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_e
    iput-boolean v5, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->n:Z

    .line 185
    .line 186
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->C:Lcom/mycompany/app/view/MyButtonCheck;

    .line 187
    .line 188
    invoke-virtual {v4, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 189
    .line 190
    .line 191
    :cond_f
    :goto_3
    const/16 v4, 0x17

    .line 192
    .line 193
    if-ne v3, v4, :cond_10

    .line 194
    .line 195
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 196
    .line 197
    if-eqz v1, :cond_11

    .line 198
    .line 199
    iget v0, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->e:I

    .line 200
    .line 201
    invoke-interface {v1, p1, v0, v6, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_10
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 206
    .line 207
    if-eqz v1, :cond_11

    .line 208
    .line 209
    iget-boolean v0, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 210
    .line 211
    invoke-interface {v1, p1, v2, v0, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 212
    .line 213
    .line 214
    :cond_11
    :goto_4
    return-void
.end method
