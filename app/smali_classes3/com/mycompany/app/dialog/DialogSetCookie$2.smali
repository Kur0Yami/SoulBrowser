.class Lcom/mycompany/app/dialog/DialogSetCookie$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetCookie;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie$2;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie$2;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

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
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 61
    .line 62
    sget v4, Lnet/kaki87/soul2/testing/R$string;->accept_cookie:I

    .line 63
    .line 64
    sget-object v8, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 65
    .line 66
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->h0:I

    .line 67
    .line 68
    aget v5, v8, v3

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 80
    .line 81
    sget v11, Lnet/kaki87/soul2/testing/R$string;->third_cookie:I

    .line 82
    .line 83
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->i0:I

    .line 84
    .line 85
    aget v12, v8, v2

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v10, 0x1

    .line 90
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-static {v1, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 99
    .line 100
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetCookie$3;

    .line 101
    .line 102
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetCookie$3;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 106
    .line 107
    .line 108
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 123
    .line 124
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetCookie$4;

    .line 125
    .line 126
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetCookie$4;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetCookie$5;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetCookie$5;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_1
    return-void
.end method
