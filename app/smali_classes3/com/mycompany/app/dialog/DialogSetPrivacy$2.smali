.class Lcom/mycompany/app/dialog/DialogSetPrivacy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPrivacy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$2;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$2;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    const v2, -0xe19938

    .line 16
    .line 17
    .line 18
    const v3, -0x50506

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    const v2, -0xc0c0c1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    const/high16 v3, 0x21000000

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->B()Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetPrivacy$3;

    .line 120
    .line 121
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$3;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v4, v2, v1, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 125
    .line 126
    .line 127
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 128
    .line 129
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 135
    .line 136
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$4;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$4;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$5;

    .line 156
    .line 157
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$5;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$6;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$6;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$7;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$7;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_1
    return-void
.end method
