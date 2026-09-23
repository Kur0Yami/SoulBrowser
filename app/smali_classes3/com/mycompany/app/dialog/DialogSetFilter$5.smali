.class Lcom/mycompany/app/dialog/DialogSetFilter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$5;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$5;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 14
    .line 15
    xor-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 45
    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const v1, -0x50506

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const v1, -0xe19938

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    const v1, -0x7f7f80

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const v1, -0x252526

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    :goto_3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 93
    .line 94
    array-length v0, v0

    .line 95
    :goto_4
    if-ge v3, v0, :cond_5

    .line 96
    .line 97
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 98
    .line 99
    aput-boolean v2, v1, v3

    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 105
    .line 106
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter;->e:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 134
    .line 135
    if-nez v1, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    iput-boolean v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 142
    .line 143
    .line 144
    :cond_9
    :goto_6
    return-void
.end method
