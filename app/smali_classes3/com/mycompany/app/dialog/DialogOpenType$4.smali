.class Lcom/mycompany/app/dialog/DialogOpenType$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogOpenType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOpenType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType$4;->a:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogOpenType;->i0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType$4;->a:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    const/16 v1, 0x11

    .line 22
    .line 23
    const/high16 v2, 0x41800000    # 16.0f

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    const v2, -0x50506

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 64
    .line 65
    const v2, -0xe19938

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setFilterColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogOpenType;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/dialog/DialogOpenType$5;

    .line 90
    .line 91
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogOpenType$5;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 98
    .line 99
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 100
    .line 101
    const/4 v3, -0x1

    .line 102
    invoke-direct {v1, v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x50

    .line 106
    .line 107
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 108
    .line 109
    iget-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 110
    .line 111
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogOpenType$7;

    .line 120
    .line 121
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogOpenType$7;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 129
    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogOpenType$6;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogOpenType$6;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    return-void
.end method
