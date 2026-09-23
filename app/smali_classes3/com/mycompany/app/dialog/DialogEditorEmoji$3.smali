.class Lcom/mycompany/app/dialog/DialogEditorEmoji$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditorEmoji;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$3;->a:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->i0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$3;->a:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v1, 0x11

    .line 20
    .line 21
    const/high16 v2, 0x41800000    # 16.0f

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 37
    .line 38
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_black:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    const/4 v2, -0x1

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyLineText;->setFilterColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    sget v3, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorEmoji$4;

    .line 68
    .line 69
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogEditorEmoji$4;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :try_start_0
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 76
    .line 77
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 78
    .line 79
    invoke-direct {v1, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x50

    .line 83
    .line 84
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 85
    .line 86
    iget-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 87
    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorEmoji$6;

    .line 97
    .line 98
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogEditorEmoji$6;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorEmoji$5;

    .line 111
    .line 112
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogEditorEmoji$5;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_0
    return-void
.end method
