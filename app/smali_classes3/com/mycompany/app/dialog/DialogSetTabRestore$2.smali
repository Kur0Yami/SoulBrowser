.class Lcom/mycompany/app/dialog/DialogSetTabRestore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabRestore;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabRestore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$2;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabRestore$2;->c:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 49
    .line 50
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->g0:Z

    .line 51
    .line 52
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 53
    .line 54
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->h0:Z

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 69
    .line 70
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 71
    .line 72
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->g0:Z

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 85
    .line 86
    sget v5, Lnet/kaki87/soul2/testing/R$string;->tab_list:I

    .line 87
    .line 88
    iget-boolean v8, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->h0:Z

    .line 89
    .line 90
    const/4 v9, 0x1

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 102
    .line 103
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetTabRestore$3;

    .line 104
    .line 105
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore$3;-><init>(Lcom/mycompany/app/dialog/DialogSetTabRestore;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 109
    .line 110
    .line 111
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 119
    .line 120
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 126
    .line 127
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;

    .line 128
    .line 129
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore$4;-><init>(Lcom/mycompany/app/dialog/DialogSetTabRestore;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabRestore;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 136
    .line 137
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabRestore$5;

    .line 138
    .line 139
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore$5;-><init>(Lcom/mycompany/app/dialog/DialogSetTabRestore;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_1
    return-void
.end method
