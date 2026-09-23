.class Lcom/mycompany/app/dialog/DialogPreview$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$25;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$25;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->b1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->b1:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/4 v3, -0x2

    .line 44
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    .line 46
    const/16 v3, 0x50

    .line 47
    .line 48
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    new-instance v2, Landroid/view/View;

    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 62
    .line 63
    const v3, 0x3ecccccd    # 0.4f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 70
    .line 71
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_dark_24:I

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 79
    .line 80
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    const/16 v3, 0x11

    .line 84
    .line 85
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    .line 87
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->c1:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 97
    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$26;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$26;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method
