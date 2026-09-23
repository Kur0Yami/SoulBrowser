.class Lcom/mycompany/app/dialog/DialogSetSort$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$2;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort$2;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    const v2, -0x50506

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    const v2, -0xe19938

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->f0:I

    .line 49
    .line 50
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetSort;->x0:[I

    .line 51
    .line 52
    rem-int/lit8 v1, v1, 0x5

    .line 53
    .line 54
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->f0:I

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 62
    .line 63
    sget v5, Lnet/kaki87/soul2/testing/R$string;->sort_by:I

    .line 64
    .line 65
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetSort;->f0:I

    .line 66
    .line 67
    aget v6, v2, v4

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 79
    .line 80
    sget v6, Lnet/kaki87/soul2/testing/R$string;->order_by:I

    .line 81
    .line 82
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->g0:Z

    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    sget v2, Lnet/kaki87/soul2/testing/R$string;->order_descend:I

    .line 87
    .line 88
    :goto_1
    move v7, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget v2, Lnet/kaki87/soul2/testing/R$string;->order_ascend:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_2
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v5, 0x1

    .line 96
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->c0:I

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    const/16 v3, 0xd

    .line 107
    .line 108
    if-eq v2, v3, :cond_3

    .line 109
    .line 110
    const/16 v3, 0x19

    .line 111
    .line 112
    if-eq v2, v3, :cond_3

    .line 113
    .line 114
    const/16 v3, 0x1b

    .line 115
    .line 116
    if-eq v2, v3, :cond_3

    .line 117
    .line 118
    const/16 v3, 0x2b

    .line 119
    .line 120
    if-eq v2, v3, :cond_3

    .line 121
    .line 122
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 123
    .line 124
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 125
    .line 126
    rem-int/lit8 v2, v2, 0x8

    .line 127
    .line 128
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 129
    .line 130
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 131
    .line 132
    sget v6, Lnet/kaki87/soul2/testing/R$string;->group_by:I

    .line 133
    .line 134
    aget v7, v3, v2

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v5, 0x2

    .line 139
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_3
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 149
    .line 150
    .line 151
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 152
    .line 153
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetSort$3;

    .line 154
    .line 155
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetSort$3;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 159
    .line 160
    .line 161
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetSort;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 169
    .line 170
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 176
    .line 177
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetSort$4;

    .line 185
    .line 186
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetSort$4;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 193
    .line 194
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetSort$5;

    .line 195
    .line 196
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetSort$5;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_3
    return-void
.end method
