.class Lcom/mycompany/app/dialog/DialogUrlLink$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$15;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$15;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->q0:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_7

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_2
    const/16 v1, 0x11

    .line 31
    .line 32
    const/high16 v2, 0x41800000    # 16.0f

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    const v2, -0x50506

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    const v2, -0xe19938

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setFilterColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    sget v2, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$16;

    .line 99
    .line 100
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogUrlLink$16;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    :try_start_0
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 107
    .line 108
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 109
    .line 110
    const/4 v3, -0x1

    .line 111
    invoke-direct {v1, v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0x50

    .line 115
    .line 116
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 117
    .line 118
    iget-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 119
    .line 120
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$18;

    .line 129
    .line 130
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogUrlLink$18;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 138
    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$17;

    .line 143
    .line 144
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogUrlLink$17;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_1
    return-void

    .line 151
    :cond_7
    :goto_2
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogUrlLink;->C(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
