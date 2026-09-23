.class Lcom/mycompany/app/dialog/DialogSetColumn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetColumn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn$2;->c:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn$2;->c:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->c0:Z

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 65
    .line 66
    sget v5, Lnet/kaki87/soul2/testing/R$string;->column_count:I

    .line 67
    .line 68
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 69
    .line 70
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 85
    .line 86
    sget v6, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 87
    .line 88
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 89
    .line 90
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 104
    .line 105
    sget v7, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 106
    .line 107
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 108
    .line 109
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    const/4 v10, 0x0

    .line 114
    const/4 v6, 0x1

    .line 115
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :goto_1
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 128
    .line 129
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetColumn$3;

    .line 130
    .line 131
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetColumn$3;-><init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 135
    .line 136
    .line 137
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 145
    .line 146
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 152
    .line 153
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetColumn$4;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetColumn$4;-><init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 162
    .line 163
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetColumn$5;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetColumn$5;-><init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_2
    return-void
.end method
