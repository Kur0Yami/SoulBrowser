.class Lcom/mycompany/app/dialog/DialogSeekFilter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$2;->c:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$2;->c:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    const v2, -0x50506

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const v2, -0xe19938

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    const/high16 v2, -0x1000000

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekFilter;->B()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 85
    .line 86
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekFilter$3;

    .line 87
    .line 88
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekFilter$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekFilter$4;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekFilter$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 119
    .line 120
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekFilter$5;

    .line 121
    .line 122
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekFilter$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 129
    .line 130
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekFilter$6;

    .line 131
    .line 132
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekFilter$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_1
    return-void
.end method
